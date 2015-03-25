% rebase('_layout.tpl', title='Дисципліни')


<div class="row mtf">
  <div class="col-sm-6 col-md-4">
    <form >
      <div class="form-group">
        <label class="sr-only" for="full-name">Дисципліна</label>
        <input type="text" class="form-control" id="full-name" placeholder="Дисципліна">
      </div>
    </form>
  </div>
  <div class="col-sm-6 col-md-8">
        <button type="button" class="btn btn-default navbar-right act-btn" data-toggle="modal" data-target="#dscModal">Додати навчальну дисципліну</button>
  </div>
</div>


<div class="row">
  <div class="col-sm-5 col-md-4">
    <ul class="nav nav-pills nav-stacked" role="tablist">
      <li role="presentation" class="active"><a href="#" role="tab" data-toggle="tab">All</a></li>
      <li role="presentation"><a href="#" role="tab" data-toggle="tab">Кафедра мат. наук</a></li>
      <li role="presentation"><a href="#" role="tab" data-toggle="tab">Кафедра інф. тех.</a></li>
      <li role="presentation"><a href="#" role="tab" data-toggle="tab">Кафедра мат. наук</a></li>
      <li role="presentation"><a href="#" role="tab" data-toggle="tab">Кафедра інф. тех.</a></li>
    </ul>
  </div>

  <div class="col-sm-7 col-md-8">
    <div class="table-responsive">
      <table class="table table-striped table-condensed">
        <thead>
        <tr>
          <th>Назва дисципліни</th>
        </tr>
        </thead>
        <tbody>
          <tr>
            <td><a href="#" data-toggle="modal" data-target="#dscModal">Економіка та основи ІТ-бізнесу</a></td>
          </tr>
          <tr>
            <td><a href="#" data-toggle="modal" data-target="#dscModal">Тестування програмних систем і комплексів</a></td>
          </tr>
          <tr>
            <td><a href="#" data-toggle="modal" data-target="#dscModal">Охорона праці в галузі</a></td>
          </tr>
          <tr>
            <td><a href="#" data-toggle="modal" data-target="#dscModal">Адміністрування програмних систем і комплексів</a></td>
          </tr>
          <tr>
            <td><a href="#" data-toggle="modal" data-target="#dscModal">Людино-машинний інтерфейс</a></td>
          </tr>          
        </tbody>
      </table>
    </div>
  </div>
</div>

</div>


<!-- Modal -->
<div class="modal fade" id="dscModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Додати навчальну дисципліну</h4>
      </div>
      <div class="modal-body">
        <!-- Modal Body-->


        <form class="form-horizontal">
          <div class="form-group">
            <label for="fullName" class="col-sm-4 control-label">Назва дисципліни</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="fullName">
            </div>
          </div>

          <div class="form-group">
            <label for="dst-id" class="col-sm-4 control-label">Кафедра</label>
            <div class="col-sm-8">
              <select class="form-control" id="dst-id">
                  <option>Кафедра мат. наук</option>
                  <option>Кафедра інф. тех.</option>
              </select>
            </div>
          </div>
        </form>
        

        <!-- /Modal Body-->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Закрити</button>
        <button type="button" class="btn btn-primary">Зберегти зміни</button>
      </div>
    </div>
  </div>
</div>
