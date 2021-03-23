const regChart = () => {
  if (document.getElementById('regChart')){
    const ctx = document.getElementById('regChart').getContext("2d");
    ctx.canvas.parentNode.style.height = '400px';
    ctx.canvas.parentNode.style.width = '600px';
    let draw = Chart.controllers.line.prototype.draw;
    Chart.controllers.line = Chart.controllers.line.extend({
      draw: function() {
        draw.apply(this, arguments);
        let ctx = this.chart.chart.ctx;
        let _stroke = ctx.stroke;
        ctx.stroke = function() {
          ctx.save();
          ctx.shadowColor = '#000000';
          ctx.shadowBlur = 40;
          ctx.shadowOffsetX = 0;
          ctx.shadowOffsetY = 32;
          _stroke.apply(this, arguments)
          ctx.restore();
        }
      }
    });
    const regChart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets: [{
          data: [150, 240, 300, 530, 690, 900, 720, 550, 930, 820, 750, 990],
          borderColor: [
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)',
            'rgba(78, 228, 193, 1)'
          ],
          borderWidth: 5,
          pointRadius: 4,
          pointHoverRadius: 4,
          fill: false
        }]
      },
      options: {
        legend: {
          display: false
        },
        title: {
          display: true,
          fontColor: '#D0D5E1',
          text: 'User registrations (thousands)'
        },
        maintainAspectRatio: false,
        responsive: true,
        scales: {
          yAxes: [{
            ticks: {
              fontColor: '#D0D5E1',
              beginAtZero: true
            },
            gridLines: {
              color: "rgba(0, 0, 0, 0)",
            }
          }],
          xAxes: [{
            ticks: {
              fontColor: '#D0D5E1'
            },
            gridLines: {
              color: "rgba(0, 0, 0, 0)",
            }
          }]
        },
      }
    });
  }
};

const mainChart = () => {
if (document.getElementById('trainChart')) {
  const ctx2 = document.getElementById('trainChart').getContext("2d");
  ctx2.canvas.parentNode.style.height = '150px';
  ctx2.canvas.parentNode.style.width = '565px';
  const myChart = new Chart(ctx2, {
    type: 'bar',
    data: {
      labels: ['OB', 'RUB', 'OOP', 'DB', 'FE', 'RA', 'DJS', 'BE', 'API', 'GH'],
      datasets: [{
        data: [21, 19, 16, 8, 14, 6, 4, 17, 15, 18],
        backgroundColor: [
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)',
          'rgba(172, 170, 255, 0.2)'
        ],
        borderColor: [
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)',
          'rgba(172, 170, 255, 1)'
        ],
        borderWidth: 2
      }]
    },
    options: {
      legend: {
        display: false
      },
      maintainAspectRatio: false,
      responsive: true,
      scales: {
        yAxes: [{
          ticks: {
            fontColor: '#D0D5E1',
            beginAtZero: true
          },
          gridLines: {
            color: "rgba(0, 0, 0, 0)",
          }
        }],
        xAxes: [{
          ticks: {
            fontColor: '#D0D5E1'
          },
          gridLines: {
            color: "rgba(0, 0, 0, 0)",
          }
        }]
      },
    }
  });
  };
};

const progChart = () => {
  if (document.getElementById('progChart')){
  const ctx3 = document.getElementById('progChart').getContext("2d");
  ctx3.canvas.parentNode.style.height = '180px';
  ctx3.canvas.parentNode.style.width = '580px';
  const myChart = new Chart(ctx3, {
    type: 'line',
    data: {
      labels: ['Jan-Mar', 'Apr-Jun', 'Jul-Sep', 'Oct-Dec'],
      datasets: [{
        data: [1.5, 3.3, 6.5, 3.8],
        backgroundColor: 'rgba(255, 141, 230, 0.3)',
        borderColor: [
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)',
          'rgba(255, 141, 230, 1)'
        ],
        borderWidth: 5,
        pointRadius: 4,
        pointHoverRadius: 4,
        fill: true
      }]
    },
    options: {
      legend: {
        display: false
      },
      title: {
        display: true,
        fontColor: '#D0D5E1',
        text: 'Quarter revenue (billions)'
      },
      maintainAspectRatio: false,
      responsive: true,
      scales: {
        yAxes: [{
          ticks: {
            fontColor: '#D0D5E1',
            beginAtZero: true
          },
          gridLines: {
            color: "rgba(0, 0, 0, 0)",
          }
        }],
        xAxes: [{
          ticks: {
            fontColor: '#D0D5E1'
          },
          gridLines: {
            color: "rgba(0, 0, 0, 0)",
          }
        }]
      },
    }
  });
  }
};


export { mainChart, regChart, progChart };

