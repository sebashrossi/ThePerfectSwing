import "selectize/dist/js/selectize.min.js";
import $ from 'jquery';


const initSelectize = () => {
  $(function() {
    $('.multiple-select').selectize({

    });
  });
};

export { initSelectize };
