<!-- Modal -->
<div class="modal fade" id="{{modal_id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">{{modal_title}}</h4>
      </div>
      <div class="modal-body">

        <form class="form-horizontal" id="{{modal_id+'f'}}" action="{{action}}" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <label for="group-name" class="col-sm-4 control-label">Назва групи</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="group-name" name="group-name">
            </div>
          </div>


          <div class="form-group">
            <label for="spesial-id" class="col-sm-4 control-label">Спеціальність</label>
            <div class="col-sm-8">
              <select class="form-control" id="spesial-id" name="spesial-id">
                % for item in specialty:
                  <option value="{{item.id}}">{{item.name}}</option>
                % end
              </select>
            </div>
          </div>

          <div class="form-group">
            <label for="changes-id" class="col-sm-4 control-label">Навчальна зміна</label>
            <div class="col-sm-8">
              <select class="form-control" id="changes-id" name="changes-id">
                % for item in educationalChanges:
                  <option value="{{item.id}}">{{item.name}}</option>
                % end
              </select>
            </div>
          </div>

          <div class="form-group">
            <label for="yearof" class="col-sm-4 control-label">Рік початку навчання</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="yearof" name="yearof">
            </div>
          </div>

          <div class="form-group">
            <label for="studentnum" class="col-sm-4 control-label">Кількість студентів</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="studentnum" name="studentnum">
            </div>
          </div>
          <input type="hidden" name="id" id="group-id" value="0">
        </form>

        <!-- /Modal Body-->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Закрити</button>
        <button type="submit" class="btn btn-primary" form="{{modal_id+'f'}}">{{modal_title}}</button>
      </div>
    </div>
  </div>
</div>
