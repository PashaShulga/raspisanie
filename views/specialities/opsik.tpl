% rebase('_layout.tpl', title=specialities.name)


<div class="row mtf">
  <div class="col-sm-6 col-md-4">
    <form >
      <div class="form-group">
        <label class="sr-only" for="fullName">Дисципліна</label>
        <input type="text" class="form-control" id="fullName" placeholder="Дисципліна">
      </div>
    </form>
  </div>
  <div class="col-sm-6 col-md-8 right-btn-group">
        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#spModal">Змінити спеціальність</button>
        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#dsModal">Додати навчальну дисципліну</button>
  </div>
</div>


<ul class="nav nav-tabs">
  % if selected_course == 0:
  <li role="presentation" class="active"><a href="#">All</a></li>
  % else:
  <li role="presentation"><a href="{{specialities.id}}">All</a></li>
  % end
  % for i in range(2, specialities.study_period+1):
    % if selected_course == i:
      <li role="presentation" class="active">
    % else:
      <li role="presentation">
    % end
      <a href="{{specialities.id}}?course={{i}}">{{i}} Курс</a></li>
  % end
</ul>

      <div class="table-responsive">
        <table class="table table-condensed">
          <thead>
          <tr>
            <th>Дисципліна</th>
            <th>Тип заняття</th>
            <th>Годин</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td rowspan="2"><a href="#" data-toggle="modal" data-target="#dsModal">Економіка та основи ІТ-бізнесу</a></td>
            <td>лекційні</td>
            <td>32</td>
          </tr>
          <tr>
            <td>семінарські</td>
            <td>74</td>
          </tr>
          <tr>
            <td rowspan="3"><a href="#" data-toggle="modal" data-target="#dsModal">Тестування програмних систем і комплексів</a></td>
            <td>лекційні</td>
            <td>72</td>
          </tr>
          <tr>
            <td>практичні</td>
            <td>72</td>
          </tr>
          <tr>
            <td>лабораторна</td>
            <td>72</td>
          </tr>


          <tr>
            <td rowspan="2"><a href="#" data-toggle="modal" data-target="#dsModal">Охорона праці в галузі</a></td>
            <td>лекційні</td>
            <td>72</td>
          </tr>
          <tr>
            <td>практичні</td>
            <td>72</td>
          </tr>
          <tr>
            <td rowspan="3"><a href="#" data-toggle="modal" data-target="#dsModal">Адміністрування програмних систем і комплексів</a></td>
            <td>лекційні</td>
            <td>72</td>
          </tr>
          <tr>
            <td>практичні</td>
            <td>72</td>
          </tr>
          <tr>
            <td>лабораторна</td>
            <td>72</td>
          </tr>
          <tr>
            <td rowspan="2"><a href="#" data-toggle="modal" data-target="#dsModal">Людино-машинний інтерфейс</a></td>
            <td>лекційні</td>
            <td>72</td>
          </tr>
          <tr>
            <td>лабораторна</td>
            <td>72</td>
          </tr>



          </tbody>
        </table>
      </div>







<!-- Modal -->
<div class="modal fade" id="dsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
            <label for="dst-id" class="col-sm-4 control-label">Курс</label>
            <div class="col-sm-8">
              <select class="form-control" id="dst-id">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label for="full-name" class="col-sm-4 control-label">Дисципліна</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="full-name">
            </div>
          </div>

          <div class="form-group">
            <label for="type_id1" class="col-sm-4 control-label">Типи</label>
            <div class="col-sm-8">
              <div class="row form-group">
                <div class="col-xs-7">
                  <p class="form-control-static">лекційні</p>
                </div>
                <div class="col-xs-5">
                  <input type="text" class="form-control" placeholder="Годин">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-xs-7">
                  <p class="form-control-static">семінарські</p>
                </div>
                <div class="col-xs-5">
                  <input type="text" class="form-control" placeholder="Годин">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-xs-7">
                  <p class="form-control-static">практичні</p>
                </div>
                <div class="col-xs-5">
                  <input type="text" class="form-control" placeholder="Годин">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-xs-7">
                  <p class="form-control-static">лабораторна</p>
                </div>
                <div class="col-xs-5">
                  <input type="text" class="form-control" placeholder="Годин">
                </div>
              </div>                                          
            </div>
          </div>
        </form>
        

        <!-- /Modal Body-->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="spModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Змінити спецільність</h4>
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
                    % if department.id == 4:
                      <option selected>{{department.name}}</option>
                    % else:
                      <option>{{department.name}}</option>
                    % end
                  %end
                %end
              </select>
            </div>
          </div>

          <div class="form-group">
            <label for="group-name" class="col-sm-4 control-label">Повна назва</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="group-name" value="Обслуговування програмних систем і комплексів">
            </div>
          </div>

          <div class="form-group">
            <label for="short-name" class="col-sm-4 control-label">Скорочена назва</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="short-name" value="ОПСіК">
            </div>
          </div>

          <div class="form-group">
            <label for="yearof" class="col-sm-4 control-label">Термін навчання</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="yearof" value="4">
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