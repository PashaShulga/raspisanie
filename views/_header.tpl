<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
              data-target="#bs-example-navbar-collapse-6">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">{{subsection.short_name}}</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-6">
    <ul class="nav navbar-nav">

% depName = ''
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Відділення
          <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
          % for department in departments:
            % if department.id == selected_id:
              % depName = department.name
              <li class="active"><a href="#">{{department.name}}</a></li>
            % else:
              <li><a href="/groups?department_id={{department.id}}">{{department.name}}</a></li>
            % end
          % end
          <li class="divider"></li>
          <li><a href="#" data-toggle="modal" data-target="#dpModal">Створити відділення</a></li>
        </ul>
      </li>

      <li><a href="/specialities">Спеціальності</a></li>
      <li><a href="/disciplines">Дисципліни</a></li>
      <li><a href="/lectors">Викладачі</a></li>
      <li><a href="/pulpit">Кафедри</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Налаштування
          <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
          <li><a href="/settings/periods">Періоди</a></li>
          <li><a href="/settings/types">Типи заннять</a></li>
          <li><a href="/settings/education_change">Навчальні зміни</a></li>
        </ul>
    </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
</nav>




<!-- Modal -->
<div class="modal fade" id="dpModal" tabindex="-1" role="dialog" aria-labelledby="dpModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Додати відділення</h4>
      </div>
      <div class="modal-body">
        <!-- Modal Body-->
        <form class="form-horizontal" id="dp" action="/department" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <label for="department-name" class="col-sm-4 control-label">Назва відділення</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="department-name" name="department-name" value="{{depName}}">
            </div>
          </div>
        </form>
        <!-- /Modal Body-->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Скасувати</button>
        <button type="submit" form="dp" class="btn btn-primary">Додати відділення</button>
      </div>
    </div>
  </div>
</div>
