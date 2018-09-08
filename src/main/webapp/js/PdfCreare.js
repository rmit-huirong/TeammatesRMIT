// function which runs when download as pdf button is clicked
function run() {

    // the prm are jsPDF(orientation, unit, format)
    //{String} orientation
    // One of "portrait" or "landscape" (or shortcuts "p" (Default), "l")
    // {String} unit
    // Measurement unit to be used when coordinates are specified. One of "pt" (points), "mm" (Default), "cm", "in"
    // {String} format
    // One of 'a3', 'a4' (Default),'a5' ,'letter' ,'legal'
    var pdf = new jsPDF('p', 'pt', 'letter');
    pdf.setFont("helvetica");
    pdf.setFontSize(12);

    source = $('#PDF_PRINT')[0];

    // jspdf support special element handlers. Register them with jQuery-style
    // ID selector for either ID or node name. ("#iAmID", "div", "span" etc.)
    // There is no support for any other type of selectors
    // (class, of compound) at this time.
    specialElementHandlers = {
        // element with id of "bypass" - jQuery style selector
        '#bypassme': function (element, renderer) {
            // true = "handled elsewhere, bypass text extraction"
            return true
        }
    };
    margins = {
        top: 80,
        bottom: 60,
        left: 40,
        width: 1000
    };
    // all coords and widths are in jsPDF instance's declared units
    // 'inches' in this case
    pdf.fromHTML(
            source, // HTML string or DOM elem ref.
            margins.left, // x coord
            margins.top, { // y coord
                'width': margins.width, // max width of content on PDF
                'elementHandlers': specialElementHandlers
            },

            function (dispose) {
                // dispose: object with X, Y of the last line add to the PDF
                //this allow the insertion of new lines after html


                //code returns pdf as blob to new window.
                window.open(pdf.output('bloburl'));
            }, margins);
}