from datetime import date

NOW_YEAR = date.today().year
SUBSECTION_ID = 1

"""
NOTES:

dist = Disciplines.query.get(2)
dist = dist.lectors
for i in dist:
    print(i)

.filter(Lessons.lesson_types.any())\

    keys = ('name', 'specialty', 'id_educational_changes', 'year_of_beginning', 'students_count')
    [dict(zip(keys, row)) for row in groups]
"""