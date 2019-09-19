var data = {
    datasets: [{
        data: [
            11,
            16,
            7,
            3,
          
        ],
        backgroundColor: [
            "#BD1C1C",
            "#109804",
            "#FFCE56",
            "#07697E",
            
        ],
        label: 'My dataset' // for legend
    }],
    labels: [
        "Atrasado",
        "Finalizado",
        "Iniciado",
        "Não iniciado",
       
    ]
};
var ctx = $("#myChart");
new Chart(ctx, {
    data: data,
    type: 'pie'
});


