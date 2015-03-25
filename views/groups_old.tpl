% rebase('_layout.tpl', title='title')


<div class="list-groupe">
  % for group in groups:
    <a href="/groups/{{group.id}}" class="list-group-item">{{group.fullName}}</a>
  % end
</div>

<form method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="sr-only" for="full-name">Full name</label>
    <input type="text" name="full-name" id="full-name" placeholder="Full name" class="form-control">
  </div>
  <div class="form-group">
    <label class="sr-only" for="short-name">Short name</label>
    <input type="text" name="short-name" id="short-name" placeholder="Short name" class="form-control">
  </div>
  <button type="submit" class="btn btn-default">Add group</button>
</form>
