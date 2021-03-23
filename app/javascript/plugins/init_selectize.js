import "selectize/dist/js/selectize.min.js";
import $ from 'jquery';


const initSelectize = () => {
  console.log("selectizer")
  $(function() {
    $('.multiple-select').selectize({

    });
  });
};

export { initSelectize };
