const newTimerComponent = Object.create(baseComponent);
newTimerComponent.html = 
    `<div id="new-timer-container" class="row">
      <div class="col-6">
        <div id="testText" class="data"></div>
      </div>
      <div class="col-6">
        <button type="button" class="btn btn-primary">
          Show Data
        </button>
      </div>
    </div>`;