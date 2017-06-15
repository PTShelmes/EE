<div class="body-wrapper">
  <div class="container">
    <div class="row">
        <div class="col-md-9 col-sm-9">
          <h2>Kontaktandmed</h2>
          <p>Korrektsed andmed on vajalikud Teile lepinguga seotud teadete, muudatuste ja pakkumiste edastamiseks.</p>
<hr>
<div id="app" class="loader">Laadin andmeid...</div>
<hr>
<p>
<input type="checkbox" name="send"/><span>Olen nõus, et Eesti Energia edastab mulle minu kontaktandmetel personaalseid pakkumisi.</span> 
</p>
<p>
<input type="button" data-toggle="modal" data-target="#modal" value="Kinnitan" />
<input type="button" onclick="window.location='/site'" value="Sulgen"/>
</p>
</div>
    </div>
  </div>
</div>


<div id="modal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">OK</h4>
      </div>
      <div class="modal-body">
        <p>Andmed salvestatud. Kasutatud on MOCK teenust; reaalne andmete salvestamine ei ole realiseeritud.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Sulge</button>
      </div>
    </div>

  </div>
</div>



<script type="text/jsx">
ReactDOM.render(
  <AppProfile />,
  document.getElementById('app')
);
</script>