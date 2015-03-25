% rebase('_layout.tpl', title='Иван Иванов')

<div class="row mtf">
  <div class="col-sm-5 col-md-4">
    <ul class="nav nav-pills nav-stacked" role="tablist">
      <li role="presentation" class="active"><a id="home-tab" href="#home" aria-controls="home" role="tab" data-toggle="tab">Дисципліни</a></li>
      <li role="presentation"><a href="#profile" id="profile-tab" aria-controls="profile" role="tab" data-toggle="tab">Робочий графік</a></li>
      <li role="presentation"><a href="#" data-toggle="modal" data-target="#ltModal">Загальні відомості</a></li>
    </ul>
  </div>

<div class="col-sm-7 col-md-8">
  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
		<div class="row">
		<form>
		  <div class="form-group col-sm-4 col-md-5">
		    <label class="sr-only" for="exampleInputEmail3">Дисципліна</label>
		    <input type="text" class="form-control" id="exampleInputEmail3" placeholder="Дисципліна">
		  </div>
		  <button type="submit" class="btn btn-default">Додати</button>
		</form>
		</div>
		    <div class="table-responsive">
		      <table class="table table-striped table-condensed">
		        <thead>
		        <tr>
		          <th>Назва дисципліни</th>
		          <th></th>
		        </tr>
		        </thead>
		        <tbody>
		          <tr>
		            <td>Економіка та основи ІТ-бізнесу</td>
		            <td><a href="#">Вилучити</a></td>
		          </tr>
		          <tr>
		            <td>Тестування програмних систем і комплексів</td>
		                        <td><a href="#">Вилучити</a></td>
		          </tr>
		          <tr>
		            <td>Охорона праці в галузі</td>
		                        <td><a href="#">Вилучити</a></td>
		          </tr>
		          <tr>
		            <td>Адміністрування програмних систем і комплексів</td>
		                        <td><a href="#">Вилучити</a></td>
		          </tr>
		          <tr>
		            <td>Людино-машинний інтерфейс</td>
		                        <td><a href="#">Вилучити</a></td>
		          </tr>          
		        </tbody>
		      </table>
		    </div>	
    </div>
    <div role="tabpanel" class="tab-pane" id="profile">
    	<div class="table-responsive">
    	 <table class="table table-striped table-condensed">
        <thead>
          <tr>
            <th></th>
            <th>ПН</th>
            <th>ВТ</th>
            <th>СР</th>
            <th>ЧТ</th>
            <th>ПТ</th>
            <th>СБ</th>
            <th>НД</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td rowspan="2">1</br>8<sup>20</sup>-9<sup>40</sup></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
                    <tr>
            <td rowspan="2">2</br>8<sup>20</sup>-9<sup>40</sup></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
                    <tr>
            <td rowspan="2">3</br>8<sup>20</sup>-9<sup>40</sup></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
                    <tr>
            <td rowspan="2">4</br>8<sup>20</sup>-9<sup>40</sup></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
                    <tr>
            <td rowspan="2">1</br>8<sup>20</sup>-9<sup>40</sup></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
                    <tr>
            <td rowspan="2">2</br>8<sup>20</sup>-9<sup>40</sup></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
                    <tr>
            <td rowspan="2">3</br>8<sup>20</sup>-9<sup>40</sup></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
                    <tr>
            <td rowspan="2">4</br>8<sup>20</sup>-9<sup>40</sup></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
        </tbody>
      </table>
    	</div>






      <table class="table table-striped table-condensed">
        <thead>
          <tr>
            <th></th>
            <th>ПН</th>
            <th>ВТ</th>
            <th>СР</th>
            <th>ЧТ</th>
            <th>ПТ</th>
            <th>СБ</th>
            <th>НД</th>
          </tr>

        </thead>
        <tbody>
          <tr>
            <td rowspan="2">1 зміна</td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
                    
          
                    
          
                    <tr>
            <td rowspan="2">2 зміна</td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
          <tr>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
            <td> <input type="checkbox"></td>
          </tr>
        </tbody>
      </table>
      


    </div>
  </div>
</div>





<!-- Modal -->
<div class="modal fade" id="ltModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Змінити параметри</h4>
      </div>
      <div class="modal-body">
        <!-- Modal Body-->


        <form class="form-horizontal">
          <div class="form-group">
            <label for="group-name" class="col-sm-4 control-label">ФІО</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="group-name" value="Иван Иванов">
            </div>
          </div>

          <div class="form-group">
            <label for="yearof" class="col-sm-4 control-label">Посада</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="yearof" value="Старший викладач">
            </div>
          </div>

          <div class="form-group">
            <label for="time-id" class="col-sm-4 control-label">Кафедра</label>
            <div class="col-sm-8">
              <select class="form-control" id="time-id">
                <option>Кафедра мат. наук</option>
                <option>Кафедра інф. тех.</option>
              </select>
            </div>
          </div>
        </form>

        <!-- /Modal Body-->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Скасувати</button>
        <button type="button" class="btn btn-primary">Зберегти зміни</button>
      </div>
    </div>
  </div>
</div>