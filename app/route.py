from bottle import request, template, redirect, static_file
from app import app
from app.model import Groups, Departments, Subsections, \
    Specialty, Lessons, LessonTypes, Disciplines, LessonType, \
    Pulpits, EducationalChanges
from app import session
from config import NOW_YEAR, SUBSECTION_ID
from app.tools import to_dict, first_item, def_int, unid_dic

# Temp namespace in Subsection
subsection = Subsections.query.get(SUBSECTION_ID)  # if this exit(val=None) -> throw
# Cache data in memory, after change execute new query
departments = subsection.departments
lesson_types = LessonTypes.query.all()
educationalChanges = EducationalChanges.query.all()


@app.route('/groups')
def api_groups():
    """
    All group in selected department, with optional search by name
    GET  /api/groups?department_id=<int>&name=<string>
    """
    department_id = def_int(request.query.department_id)
    group_name = request.query.name

    groups = Groups.select(department_id=department_id, name=group_name).all()
    specialty = Specialty.select(department_id).all()

    max_course = len(specialty) and max(item.study_period for item in specialty)
    keys = ('id', 'name', 'specialty', 'id_educational_changes', 'year_of_beginning', 'students_count')

    d = {"departments": departments,
         "subsection": subsection,
         "selected_dep": first_item(departments, department_id),
         "max_course": max_course,
         "year": NOW_YEAR,
         "specialty": specialty,
         "educationalChanges": educationalChanges,
         "groups": [dict(zip(keys, row)) for row in groups]}

    return template('groups', **d)


@app.route('/api/groups/<group_id:int>')
def api_group(group_id):
    """
    Return selected group data
    GET /api/groups/<group_id:int>
    """
    group = Groups.query.get(group_id)
    return to_dict(group)


@app.route('/api/groups', method='POST')
def api_add_group():
    """
    Add new group
    POST /api/groups
    """
    group_id = def_int(request.forms.get('id'))
    group = Groups(
        request.POST['group-name'],
        request.forms.get('spesial-id'),
        request.forms.get('changes-id'),
        request.forms.get('yearof'),
        request.forms.get('studentnum'))

    if Groups.validate(group):
        if group_id != 0:
            Groups.query.filter_by(id=group_id).update(unid_dic(group))
        else:
            session.add(group)
        session.commit()


@app.route('/api/specialty/<specialty_id:int>')
def api_specialty(specialty_id):
    specialty = Specialty.query.get(specialty_id)
    lessons = session.query(Lessons.id, Lessons.course, Disciplines.name,
                            LessonType.academic_hours, LessonTypes.id) \
        .join(LessonType, LessonType.id_lessons == Lessons.id) \
        .join(LessonTypes, LessonTypes.id == LessonType.id_lesson_types) \
        .join(Disciplines, Disciplines.id == Lessons.id_disciplines) \
        .filter(Lessons.id_specialty == specialty_id) \
        .order_by(Lessons.course, Disciplines.name, LessonTypes.id) \
        .all()

    tmp, d, les = 0, [], []
    for i in lessons:
        d.append({'type_id': i[4], 'hours': i[3]})
        if i[0] != tmp:
            tmp = i[0]
            les.append((lambda: {'id': i[0], 'course': i[1], 'name': i[2], 'types': d})())
            d = []

    return {"specialty": to_dict(specialty),
            "lessons": les,
            "lesson_types": to_dict(lesson_types, 'id', 'name')}


@app.route('/api/disciplines')
def api_disciplines():
    """
    GET /api/disciplines?pulpit_id=<int>&name=<string>
    """
    pulpit_id = def_int(request.query.pulpit_id)
    name = request.query.name

    pulpits = Pulpits.select().all()
    disciplines = Disciplines.select(id_pulpit=pulpit_id, name=name).all()

    return {"pulpits": to_dict(pulpits),
            "disciplines": to_dict(disciplines, 'name', 'id_pulpits')}


@app.route('/')
@app.route('/index')
def index():
    return template('index',
                    departments=departments,
                    subsection=subsection)


@app.route('/specialities')
def specialities_view():
    special = Specialty.query.order_by(Specialty.name).all()
    return template('specialities',
                    departments=departments,
                    subsection=subsection,
                    specialities=special)


@app.route('/specialities/<item_id:int>')
def specialities(item_id):
    item_id = int(item_id)
    selected_course = int(request.query.course or '0')
    special = Specialty.query.get(item_id)
    # TODO: create table...
    return template('specialities/opsik',
                    departments=departments,
                    subsection=subsection,
                    specialities=special,
                    selected_course=selected_course)


@app.route('/lectors')
def lectors_view():
    return template('lectors',
                    departments=departments,
                    subsection=subsection)


@app.route('/lectors/<item_id:int>')
def lectors(item_id):
    # lector = session.query(Lector).get(item_id)
    return template('lector_view',
                    departments=departments,
                    subsection=subsection, )
    # lector=lector)


@app.route('/disciplines')
def resource_view():
    return template('disciplines',
                    departments=departments,
                    subsection=subsection)


@app.route('/pulpit')
def pulpit_view():
    return template('pulpit',
                    departments=departments,
                    subsection=subsection)


@app.route('/settings/<link>')
def pulpit_view(link):
    return template(link,
                    departments=departments,
                    subsection=subsection)


@app.route('/department', method='POST')
def add_departments():
    department = Departments(request.forms.get('department-name'), SUBSECTION_ID)
    if Departments.validate(department):
        session.add(department)
        session.commit()
    redirect('/')


@app.route('/static/<filepath:path>')
def server_static(filepath):
    """ Routing static files """
    return static_file(filepath, root='./dist')
