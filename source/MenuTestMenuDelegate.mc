using Toybox.WatchUi;
using Toybox.System;
using Toybox.Application;

class MenuTestMenuDelegate extends WatchUi.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) {
        if (item == :Item1) {
            var webhook1 = Application.Properties.getValue("webhookUrl1");
            System.println("Item 1");
            Application.Properties.setValue("webhookUrl", webhook1);
            WatchUi.pushView(new TextPickerSampleView(), new TextPickerSampleInput(), WatchUi.SLIDE_UP);
        } else if (item == :Item2) {
            var webhook2 = Application.Properties.getValue("webhookUrl2");
            System.println("Item 2");
            Application.Properties.setValue("webhookUrl", webhook2);
            WatchUi.pushView(new TextPickerSampleView(), new TextPickerSampleInput(), WatchUi.SLIDE_UP);
        } else if (item == :Item3) {
            var webhook3 = Application.Properties.getValue("webhookUrl3");
            System.println("Item 3");
            Application.Properties.setValue("webhookUrl", webhook3);
             WatchUi.pushView(new TextPickerSampleView(), new TextPickerSampleInput(), WatchUi.SLIDE_UP);
        }
    }
}
