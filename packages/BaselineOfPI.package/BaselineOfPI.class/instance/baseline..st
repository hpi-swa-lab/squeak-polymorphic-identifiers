baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'PI-Core';
		    package: 'PI-Schemes' with: [spec requires: #('core')];
		    package: 'PI-Examples' with: [spec requires: #('core')];
		    yourself.
            spec
                group: 'default' with: #('PI-Core' 'PI-Examples' 'PI-Schemes');
		    group: 'core' with: #('PI-Core')];
		    yourself