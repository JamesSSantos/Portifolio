  $(document).ready(function() {

    $('#calendar').fullCalendar({
    	height: 450,
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay,listWeek',
        prev: 'glyphicon glyphicon-hand-left'
      },
      eventClick: function(eventObj) {
	        if (eventObj.url) {
	          alert(
	            'Clicked ' + eventObj.id + '.\n' +
	            'Will open ' + eventObj.url + ' in a new tab'
	          );

	          window.open(eventObj.url);

	          return false; // prevents browser from following link in current tab.
	        } else {
	        	var teste = eventObj.idDemanda;
	          location.href = "direcionarAgenda?idDemanda="+teste;
	        }
	      },
      defaultDate: Date(),
      navLinks: true, // can click day/week names to navigate views
      editable: false,
      eventLimit: true, // allow "more" link when too many events
      eventSources: [

    	    // your event source
    	    {
    	      url: 'Agenda', // use the `url` property
    	      color: 'black',    // an option!
    	      textColor: 'white'  // an option!
    	    }

    	    // any other sources...

    	  ]

    	});
  });
