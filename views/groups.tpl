% rebase('_layout.tpl', departments=departments, selected_dep=selected_dep, subsection=subsection)
% title=selected_dep.name

<div class="row mtf">
  <div class="col-sm-6 col-md-4">
    <div class="form-group">
      <label class="sr-only" for="search">Назва групи</label>
      <input type="text" class="form-control" id="search" placeholder="Назва групи">
    </div>
  </div>
  <div class="col-sm-6 col-md-8 right-btn-group">
    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#dpModal">Змінити відділення</button>
    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#mGroupAdd">Додати групу</button>
  </div>
</div>

<div role="tabpanel">
<ul class="nav nav-tabs" role="tablist" id="tab">
  <li role="presentation" class="active"><a href="#tab" role="tab" data-toggle="tab">All</a></li>
  % for i in range(1, max_course+1):
      <li role="presentation">
        <a href="#tab" data-id="{{year-i}}" role="tab" data-toggle="tab">{{i}} Курс</a>
      </li>
  % end
</ul>
</div>

<div class="table-responsive">
  <table class="table table-condensed out-table" id="filtered">
    <thead>
      <tr>
        <th>Назва</th>
        <th>Спеціальність</th>
        <th>Кількість учнів</th>
      </tr>
    </thead>
    <tbody>

      % for group in groups:
      <tr data-year="{{group['year_of_beginning']}}">
        <td>
          <a href="#" data-target="#mGroupEdit" data-id="{{group['id']}}" data-toggle="modal">{{group['name']}}</a>
        </td>
        <td>{{group['specialty']}}</td>
        <td>{{group['students_count']}}</td>
      </tr>
      % end
    </tbody>
  </table>
</div>


% include('modals/groups.tpl', modal_id='mGroupAdd', modal_title='Додати групу', action="/api/groups")
% include('modals/groups.tpl', modal_id='mGroupEdit', modal_title='Зберегти зміни', action="/api/groups")

