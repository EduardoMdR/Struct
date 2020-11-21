$(document).on('turbolinks:load', async function () {
    let ctx = document.getElementById('myChart').getContext('2d');
    let covid_data = await getCovidData();
    console.log(covid_data);

    covid_data = covid_data.data
    covid_data = covid_data.sort(function(a,b){
        if(a.cases == b.cases)
            return 0;
        if(a.cases < b.cases)
            return 1;
        if(a.cases > b.cases)
            return -1;
    });
    console.log(covid_data)
    covid_data = covid_data.slice(0, 6)
    let myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: getCountryNames(covid_data),
            datasets: [{
                label: 'Número de casos de covid',
                data: getStateCases(covid_data),
                backgroundColor: '#5cb85c '
            }]
        }
    });
});

function getCovidData() {
    return $.ajax(
        {
            url: "https://covid19-brazil-api.now.sh/api/report/v1/countries",
            dataType: "json",
        }
    )
}

function getStateCases(data_json) {
    let data = [];
    for (let i=0; i < data_json.length; i++) {
        data.push(data_json[i].cases)
    }
    console.log(data);
    return data
}

function getCountryNames(data_json) {
    let data = [];
    for (let i=0; i < data_json.length; i++) {
        data.push(data_json[i].country)
    }
    console.log(data);
    return data
}

function getStateDeaths(data_json) {
    let data = [];
    for (let i=0; i < data_json.length; i++) {
        data.push(data_json[i].deaths)
    }
    console.log(data);
    return data
}

function getCovidDataContry() {
    return $.ajax(
        {
            url: "https://covid19-brazil-api.now.sh/api/report/v1/Brazil",
            dataType: "json",
        }
    )
}

$(document).on('turbolinks:load', async function () {
    let ctx = document.getElementById('myChart2').getContext('2d');
    let covid_data = await getCovidData();

    covid_data = covid_data.data
    covid_data = covid_data.slice(21, 22)
    let myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: getCountryNames(covid_data),
            datasets: [{
                label: 'Número de casos de covid',
                data: getStateCases(covid_data),
                backgroundColor: '#5cb85c'
            },{
                label: 'Número de mortos por covid',
                data: getStateDeaths(covid_data),
                backgroundColor: '#d9534f'
            }]
        }
    });
});