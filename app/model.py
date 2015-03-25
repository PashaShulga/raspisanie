from sqlalchemy import Column, Integer, String, ForeignKey, Table
from sqlalchemy.orm import relationship
from app import Base, session
from config import NOW_YEAR
from app.tools import ilike_hack
from app.tools import to_dict


lectors_disciplines = Table('lectors_disciplines', Base.metadata,
                            Column('id_disciplines', Integer, ForeignKey('disciplines.id')),
                            Column('id_lectors', Integer, ForeignKey('lectors.id')))


class LessonType(Base):
    __tablename__ = 'lessons_lesson_types'
    id_lesson_types = Column(Integer, ForeignKey('lesson_types.id'), primary_key=True)
    id_lessons = Column(Integer, ForeignKey('lessons.id'), primary_key=True)
    academic_hours = Column(Integer, default=60)
    lesson_type = relationship("LessonTypes", backref="lessons_assocs")


class Departments(Base):
    __tablename__ = 'departments'

    id = Column(Integer, primary_key=True)
    name = Column(String(60), nullable=False)
    id_subsection = Column(Integer, ForeignKey('subsections.id'))
    specialty = relationship("Specialty", backref="departments")

    def __init__(self, name, id_subsection):
        self.name = name
        self.id_subsection = id_subsection

    def __repr__(self):
        return "Departments(%r: %r)" % (self.id, self.name)

    def validate(self):
        dep = Departments.query \
            .filter_by(name=self.name,
                       id_subsection=self.id_subsection) \
            .first()
        return dep is None


class Subsections(Base):
    __tablename__ = "subsections"

    id = Column(Integer, primary_key=True)
    name = Column(String(120), nullable=False)
    short_name = Column(String(20), nullable=False)
    departments = relationship("Departments", backref="subsections")

    def __init__(self, name, short_name):
        self.name = name
        self.short_name = short_name

    def __repr__(self):
        return "Subsections(%r: %r)" % (self.id, self.name)


class Periods(Base):
    __tablename__ = "periods"

    id = Column(Integer, primary_key=True)
    name = Column(String(40), nullable=False)
    date_start = Column(String(10), nullable=False)
    date_end = Column(String(10), nullable=False)

    def __init__(self, name, date_start, date_end):
        self.name = name
        self.date_start = date_start
        self.date_end = date_end

    def __repr__(self):
        return "Periods(%r: %r)" % (self.id, self.name)


class Specialty(Base):
    __tablename__ = "specialty"

    id = Column(Integer, primary_key=True)
    name = Column(String(80), nullable=False)
    short_name = Column(String(40), nullable=False)
    study_period = Column(Integer, default=3)
    id_departments = Column(Integer, ForeignKey('departments.id'))
    lessons = relationship("Lessons", backref="specialty")
    groups = relationship("Groups", backref="specialty")

    def __init__(self, name, short_name, id_departments, study_period=3):
        self.name = name
        self.short_name = short_name
        self.id_departments = id_departments
        self.study_period = study_period

    def __repr__(self):
        return "Specialty(%r: %r)" % (self.id, self.name)

    @staticmethod
    def select(id_departments=None):
        result = Specialty.query
        if id_departments:
            result = result.filter_by(id_departments=id_departments)
        return result


class Groups(Base):
    __tablename__ = "groups"

    id = Column(Integer, primary_key=True)
    name = Column(String(60), nullable=False)
    id_specialty = Column(Integer, ForeignKey('specialty.id'))
    id_educational_changes = Column(Integer, ForeignKey('educational_changes.id'))
    year_of_beginning = Column(Integer, default=NOW_YEAR)
    students_count = Column(Integer, default=30)

    def __init__(self, name, id_specialty, id_educational_changes,
                 year_of_beginning=NOW_YEAR, students_count=30):
        self.name = name
        self.id_specialty = id_specialty
        self.id_educational_changes = id_educational_changes
        self.year_of_beginning = year_of_beginning
        self.students_count = students_count

    def __repr__(self):
        return "Groups(%r: %r)" % (self.id, self.name)

    @staticmethod
    def select(department_id=None, name=''):
        result = session.query(Groups.id, Groups.name, Specialty.name,
                               Groups.id_educational_changes, Groups.year_of_beginning,
                               Groups.students_count)\
            .join(Specialty, Groups.id_specialty == Specialty.id)
        if department_id:
            result = result.filter_by(id_departments=department_id)
        if name:
            result = result.filter(ilike_hack(Groups, 'name', name))
        return result

    def validate(self):
        return True


class EducationalChanges(Base):
    __tablename__ = "educational_changes"

    id = Column(Integer, primary_key=True)
    name = Column(String(40), nullable=False)
    first_pair_time = Column(String(5), nullable=False, default='08:20')
    duration_pair = Column(Integer, default=80)
    groups = relationship("Groups", backref="educational_changes")
    times_table = relationship("TimesTable", backref="educational_changes")

    def __init__(self, name, first_pair_time='08:20', duration_pair=80):
        self.name = name
        self.first_pair_time = first_pair_time
        self.duration_pair = duration_pair

    def __repr__(self):
        return "EducationalChanges(%r: %r)" % (self.id, self.name)


class TimesTable(Base):
    __tablename__ = "times_table"

    id = Column(Integer, primary_key=True)
    id_educational_changes = Column(Integer, ForeignKey('educational_changes.id'))
    study_period = Column(Integer, default=10)

    def __init__(self, id_educational_changes, study_period=10):
        self.id_educational_changes = id_educational_changes
        self.study_period = study_period

    def __repr__(self):
        return "TimesTable(%r: %r)" % (self.id, self.id_educational_changes)


class Pulpits(Base):
    __tablename__ = "pulpits"

    id = Column(Integer, primary_key=True)
    name = Column(String(120), nullable=False)
    disciplines = relationship("Disciplines", backref="pulpits")
    lectors = relationship("Lectors", backref="pulpits")

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return "Pulpits(%r: %r)" % (self.id, self.name)

    @staticmethod
    def select():
        result = Pulpits.query
        return result


class Positions(Base):
    __tablename__ = "positions"

    id = Column(Integer, primary_key=True)
    name = Column(String(40), nullable=False)
    short_name = Column(String(16), nullable=False)
    lectors = relationship("Lectors", backref="positions")

    def __init__(self, name, short_name):
        self.name = name
        self.short_name = short_name

    def __repr__(self):
        return "Positions(%r: %r)" % (self.id, self.short_name)


class LessonTypes(Base):
    __tablename__ = "lesson_types"

    id = Column(Integer, primary_key=True)
    name = Column(String(20), nullable=False)
    priority = Column(Integer, default=1)
    max_students = Column(Integer, default=30)

    def __init__(self, name, priority=1, max_students=30):
        self.name = name
        self.priority = priority
        self.max_students = max_students

    def __repr__(self):
        return "LessonTypes(%r: %r)" % (self.id, self.name)


class Lectors(Base):
    __tablename__ = "lectors"

    id = Column(Integer, primary_key=True)
    name = Column(String(60), nullable=False)
    id_positions = Column(Integer, ForeignKey('positions.id'))
    id_pulpits = Column(Integer, ForeignKey('pulpits.id'))
    working_hours = Column(String(56), nullable=False, default=None)
    disciplines = relationship("Disciplines",
                               secondary=lectors_disciplines,
                               backref="lectors")

    def __init__(self, name, id_positions, id_pulpits, working_hours=None):
        self.name = name
        self.id_positions = id_positions
        self.id_pulpits = id_pulpits
        self.working_hours = working_hours

    def __repr__(self):
        return "Lectors(%r: %r)" % (self.id, self.name)


class Disciplines(Base):
    __tablename__ = "disciplines"

    id = Column(Integer, primary_key=True)
    name = Column(String(80), nullable=False)
    id_pulpits = Column(Integer, ForeignKey('pulpits.id'))
    lessons = relationship("Lessons", backref="disciplines")

    def __init__(self, name, id_pulpits):
        self.name = name
        self.id_pulpits = id_pulpits

    def __repr__(self):
        return "Disciplines(%r: %r)" % (self.id, self.name)

    @staticmethod
    def select(id_pulpit=None, name=''):
        result = Disciplines.query
        if id_pulpit:
            result = result.filter_by(id_pulpits=id_pulpit)
        if name:
            result = result.filter(ilike_hack(Disciplines, 'name', name))
        return result.order_by(Disciplines.name)


class Lessons(Base):
    __tablename__ = "lessons"

    id = Column(Integer, primary_key=True)
    id_specialty = Column(Integer, ForeignKey('specialty.id'))
    # id_lesson_types = Column(Integer, ForeignKey('lesson_types.id'))
    id_disciplines = Column(Integer, ForeignKey('disciplines.id'))
    course = Column(Integer, default=1)
    lesson_types = relationship("LessonType", backref="lessons")

    def __init__(self, id_specialty, id_disciplines, course=1):
        self.id_specialty = id_specialty
        self.id_disciplines = id_disciplines
        self.course = course

    def __repr__(self):
        return "Lessons(%r: %r)" % (self.id, self.id_specialty)


