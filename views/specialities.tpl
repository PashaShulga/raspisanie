% rebase('_layout.tpl', title='Спеціальності')


<button type="button" class="btn btn-default" data-toggle="modal" data-target="#spModal">Додати спеціальність</button>

<div class="row">

  % i = 0
  % for department in departments:
    <div class="col-sm-6">
      <h3>{{department.name}}</h3>
      <div class="list-group">
        % if department.id == 1:
          <a href="/specialities/uniq/" class="list-group-item">{{department.name}}</a>
        % else:
          % for item in specialities:
            % if item.id_departments == department.id:
              <a href="/specialities/{{item.id}}" class="list-group-item">{{item.name}}</a>
            % end
          % end
        % end
      </div>
    </div>
    % if i % 2:
      <!-- Add the extra clearfix for only the required viewport -->
      <div class="clearfix visible-sm-block"></div>
    % end
    % i+=1
  % end
</div>




<!-- Modal -->
<div class="modal fade" id="spModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Додати спецільність</h4>
      </div>
      <div class="modal-body">
        <!-- Modal Body-->


        <form class="form-horizontal">

          <div class="form-group">
            <label for="dep-id" class="col-sm-4 control-label">Відділення</label>
            <div class="col-sm-8">
              <select class="form-control" id="dep-id">
                % for department in departments:
                  % if department.id != 1:
                  <option>{{department.name}}</option>
                  %end
                %end
              </select>
            </div>
          </div>

          <div class="form-group">
            <label for="group-name" class="col-sm-4 control-label">Повна назва</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="group-name">
            </div>
          </div>

          <div class="form-group">
            <label for="short-name" class="col-sm-4 control-label">Скорочена назва</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="short-name">
            </div>
          </div>

          <div class="form-group">
            <label for="yearof" class="col-sm-4 control-label">Термін навчання</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="yearof" value="3">
            </div>
          </div>

        </form>

        <!-- /Modal Body-->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Скасувати</button>
        <button type="button" class="btn btn-primary">Додати спецільність</button>
      </div>
    </div>
  </div>
</div>