% rebase('_layout.tpl', title='Кафедри')


<div class="row mtf">
  <div class="col-sm-6 col-md-4">
    <form >
      <div class="form-group">
        <label class="sr-only" for="full-name">Кафедра</label>
        <input type="text" class="form-control" id="full-name" placeholder="Кафедра">
      </div>
    </form>
  </div>
  <div class="col-sm-6 col-md-8">
        <button type="button" class="btn btn-default navbar-right act-btn" data-toggle="modal" data-target="#pupModal">Додати кафедру</button>
  </div>
</div>



<div class="table-responsive">
  <table class="table table-striped table-condensed">
    <thead>
      <tr>
        <th>Назва дисципліни</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a href="#" data-toggle="modal" data-target="#pupModal">Кафедра мат. наук</a></td>
      </tr>
      <tr>
        <td><a href="#" data-toggle="modal" data-target="#pupModal">Кафедра інф. тех.</a></td>
      </tr>
            <tr>
        <td><a href="#" data-toggle="modal" data-target="#pupModal">Кафедра мат. наук</a></td>
      </tr>
      <tr>
        <td><a href="#" data-toggle="modal" data-target="#pupModal">Кафедра інф. тех.</a></td>
      </tr>
            <tr>
        <td><a href="#" data-toggle="modal" data-target="#pupModal">Кафедра мат. наук</a></td>
      </tr>
      <tr>
        <td><a href="#" data-toggle="modal" data-target="#pupModal">Кафедра інф. тех.</a></td>
      </tr>
    </tbody>
  </table>
</div>


<!-- Modal -->
<div class="modal fade" id="pupModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
            <label for="fullName" class="col-sm-4 control-label">Назва кафедри</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="full-name">
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
