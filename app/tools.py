""" Tools functions to help base operation """

"""
Return yield iterable object satisfies expression
    @iter_obj:  iterable list of object
    @value:     value that you wanna find
    @attr:      attribute of object that need to compare (default: 'id')
"""
first_item = lambda iter_obj, value, attr='id': \
    next(filter(lambda x: getattr(x, attr) == value, iter_obj))


def ilike_hack(cls, attr, value):
    """
    SQLite don`t know how to lower() not ASCII value
    SQLite3 know, but can`t do that correct
    """
    cls_attr = getattr(cls, attr)
    if value.isdigit():
        return cls_attr.like('%{}%'.format(value))

    from sqlalchemy import func, or_

    return or_(func.lower(cls_attr).like('%{}%'.format(value.lower())),
               cls_attr.like('%{}%'.format(value.title())),
               cls_attr.like('%{}%'.format(value.upper())))

"""
Transform SQLAlchemy object to dictionary with out id column
    @item:      SQLAlchemy object
"""
unid_dic = lambda item: \
    dict((key, getattr(item, key)) for key in item.__table__.columns.keys() if key != 'id')


"""
Transform SQLAlchemy object to dictionary
    @item:      SQLAlchemy object
"""
item_to_dict = lambda item: \
    dict((key, getattr(item, key)) for key in item.__table__.columns.keys())

"""
Transform SQLAlchemy list of objects to list of dictionary
    @items:      list that contains SQLAlchemy objects
"""
list_to_dict = lambda items: [item_to_dict(item) for item in items]

"""
Magic...
    @items:
    @*args
"""
selected_attr_to_dict = lambda items, *args: \
    [{key: f(getattr(item, key)) for key in args} for item in items]

f = lambda value: value if isinstance(value, int) or isinstance(value, str) else to_dict(value)


def to_dict(items, *args):
    """
    Convert SQLAlchemy output data to dictionary
        @items:     ...
        @*args:     tuple of attributes
    """
    if args:
        return selected_attr_to_dict(items, *args)  # need perf optimize
    try:
        if iter(items):
            return list_to_dict(items)
    except TypeError:
        return item_to_dict(items)
    return {}

"""
Convert a string to an integer, or return 0
    @value: input string
"""
def_int = lambda value: int(value) if value.isdigit() else 0
