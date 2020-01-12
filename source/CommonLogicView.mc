using Toybox.WatchUi;

class CommonLogicView extends WatchUi.View {
    
    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
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

    // // this is called whenever the screen needs to be updated
    // function onUpdate(dc) {
    //     // Common update of the screen: Clear the screen with the backgroundcolor.
    //     clearScreen(dc);
        
    //     // We can also do common calculations here, in this case we'll just get the current time
    //     determineClockTime();
    // }
    
    // // clears the screen and stores the width & height in global variables
    // function clearScreen(dc) {
    //     ...
    // }
    
    // function determineClockTime() {
    //     ...
    // }

}