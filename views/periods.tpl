% rebase('_layout.tpl', title='Періоди')


<button type="button" class="btn btn-default" data-toggle="modal" data-target="#prModal">Додати період</button>



<div class="table-responsive">
  <table class="table table-striped table-condensed">
    <thead>
      <tr>
        <th>Назва періоду</th>
        <th>Дата початку</th>
        <th>Дата закінчення</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a href="#" data-toggle="modal" data-target="#prModal">Начитка</a></td>
        <td>12/10/2014</td>
        <td>12/12/2014</td>
      </tr>
            <tr>
        <td><a href="#" data-toggle="modal" data-target="#prModal">Начитка</a></td>
        <td>12/10/2014</td>
        <td>12/12/2014</td>
      </tr>
            <tr>
        <td><a href="#" data-toggle="modal" data-target="#prModal">Начитка</a></td>
        <td>12/10/2014</td>
        <td>12/12/2014</td>
      </tr>
            <tr>
        <td><a href="#" data-toggle="modal" data-target="#prModal">Начитка</a></td>
        <td>12/10/2014</td>
        <td>12/12/2014</td>
      </tr>
            <tr>
        <td><a href="#" data-toggle="modal" data-target="#prModal">Начитка</a></td>
        <td>12/10/2014</td>
        <td>12/12/2014</td>
      </tr>
            <tr>
        <td><a href="#" data-toggle="modal" data-target="#prModal">Начитка</a></td>
        <td>12/10/2014</td>
        <td>12/12/2014</td>
      </tr>
    </tbody>
  </table>
</div>


<!-- Modal -->
<div class="modal fade" id="prModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Додати кафедру</h4>
      </div>
      <div class="modal-body">
        <!-- Modal Body-->


        <form class="form-horizontal">
          <div class="form-group">
            <label for="fullName" class="col-sm-4 control-label">Назва періоду</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="full-name" value="Начитка">
            </div>
          </div>

                    <div class="form-group">
            <label for="fullName" class="col-sm-4 control-label">Дата початку</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="full-name" value="12/10/2014">
            </div>
          </div>

                    <div class="form-group">
            <label for="fullName" class="col-sm-4 control-label">Дата закінчення</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="full-name" value="12/12/2014">
            </div>
          </div>
        </form>

        <!-- /Modal Body-->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Скасувати</button>
        <button type="button" class="btn btn-primary">Додати кафедру</button>
      </div>
    </div>
  </div>
</div>