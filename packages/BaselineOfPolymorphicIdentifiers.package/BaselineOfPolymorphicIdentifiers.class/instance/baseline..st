baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'PI-Core' with: [spec requires: #('libraries')];
		    package: 'PI-Schemes' with: [spec requires: #('core')];
		    package: 'PI-Examples' with: [spec requires: #('core')];
		    baseline: 'Ohm' with: 
					[ spec repository: 'github://hpi-swa/Ohm-S:master/packages' ];
		    yourself.
            spec
                group: 'default' with: #('core' 'PI-Examples' 'PI-Schemes');
		    group: 'libraries' with: #('Ohm');
		    group: 'core' with: #('PI-Core')];
		    yourself