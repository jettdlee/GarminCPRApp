using Toybox.WatchUi;

class AppView extends WatchUi.View {

    function initialize() {
    	System.println("Initialize view");
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
    	System.println("dc: "+dc);
    	var mainLayout = Rez.Layouts.MainLayout(dc);
        setLayout(mainLayout);
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
