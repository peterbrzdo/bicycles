sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'kriminalita/test/integration/FirstJourney',
		'kriminalita/test/integration/pages/StatistikaMain'
    ],
    function(JourneyRunner, opaJourney, StatistikaMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('kriminalita') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStatistikaMain: StatistikaMain
                }
            },
            opaJourney.run
        );
    }
);