async function eventCalendar() {
    let data = await getFeriadosNacionais();
    console.log(data);
    return $('#event_calendar').fullCalendar({ 
      events: convertData(data)
  });

};
function clearCalendar() {
  $('#event_calendar').fullCalendar('delete'); // In case delete doesn't work.
  $('#event_calendar').html('');
};

function getFeriadosNacionais() {
  return $.ajax(
      {
          url: "https://api.calendario.com.br/?json=true&ano=2020&estado=DF&cidade=BRASILIA&token=ZWR1YXJkb3JlaXNzazhAZ21haWwuY29tJmhhc2g9MTM4OTIwNjY2",
      }
      
  )
}

function convertData(data_json){
  let events = []
  for (let i = 0; i < data_json.length; i++){
    let lista = data_json[i].date.split("/");
    let dia = lista[0]
    let mes = lista[1]
    let ano = lista[2]
    let start = ano + "-" + mes + "-" + dia
    events.push({
      id: i,
      title: data_json[i].name,
      start: start,
      url: data_json[i].link,
      description: data_json[i].description
    })
  }
  return events
}
$(document).on('turbolinks:load', eventCalendar);
$(document).on('turbolinks:before-cache', clearCalendar)