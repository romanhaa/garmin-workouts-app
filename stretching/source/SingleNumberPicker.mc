using Toybox.Graphics as Gfx;
using Toybox.WatchUi as Ui;

class SingleNumberPicker extends Ui.Picker {

    function initialize(label, initialValue, minValue, maxValue) {
        var title = new Ui.Text({:text=>label, :font=>Gfx.FONT_SMALL, :locX =>Ui.LAYOUT_HALIGN_CENTER, :locY=>Ui.LAYOUT_VALIGN_BOTTOM, :color=>Gfx.COLOR_WHITE});
        var factory = new NumberFactory(minValue, maxValue, 1, {});
        var index = initialValue - minValue; // Get correct index
        if (index < 0) {
            index = 0;
        }
        Picker.initialize({:title=>title, :defaults=>[index], :pattern=>[factory]});
    }
}
