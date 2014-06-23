︠26c61ee3-6dd1-434f-946f-4b485fcd1dcd︠
@interact
def _(q1=(-1,(-3,3)), q2=(-2,(-3,3)),
      cmap=['autumn', 'bone', 'cool', 'copper', 'gray', 'hot', 'hsv',
           'jet', 'pink', 'prism', 'spring', 'summer', 'winter']):
     x,y = var('x,y')
     f = q1/sqrt((x+1)^2 + y^2) + q2/sqrt((x-1)^2+(y+0.5)^2)
     C = contour_plot(f, (x,-2,2), (y,-2,2), plot_points=30, contours=15, cmap=cmap)
     show(C, figsize=3, aspect_ratio=1)
     show(plot3d(f, (x,-2,2), (y,-2,2)), figsize=5, viewer='tachyon')
︡a9de45b3-8252-4bae-8db7-c4b9bbfcb426︡{"interact":{"style":"None","flicker":false,"layout":[[["q1",12,null]],[["q2",12,null]],[["cmap",12,null]],[["",12,null]]],"id":"0748c329-0b3c-4d63-8708-072a2e314473","controls":[{"control_type":"slider","default":167,"var":"q1","width":null,"vals":["-3.0","-2.988","-2.976","-2.964","-2.952","-2.94","-2.928","-2.916","-2.904","-2.892","-2.88","-2.868","-2.856","-2.844","-2.832","-2.82","-2.808","-2.796","-2.784","-2.772","-2.76","-2.748","-2.736","-2.724","-2.712","-2.7","-2.688","-2.676","-2.664","-2.652","-2.64","-2.628","-2.616","-2.604","-2.592","-2.58","-2.568","-2.556","-2.544","-2.532","-2.52","-2.508","-2.496","-2.484","-2.472","-2.46","-2.448","-2.436","-2.424","-2.412","-2.4","-2.388","-2.376","-2.364","-2.352","-2.34","-2.328","-2.316","-2.304","-2.292","-2.28","-2.268","-2.256","-2.244","-2.232","-2.22","-2.208","-2.196","-2.184","-2.172","-2.16","-2.148","-2.136","-2.124","-2.112","-2.1","-2.088","-2.076","-2.064","-2.052","-2.04","-2.028","-2.016","-2.004","-1.992","-1.98","-1.968","-1.956","-1.944","-1.932","-1.92","-1.908","-1.896","-1.884","-1.872","-1.86","-1.848","-1.836","-1.824","-1.812","-1.8","-1.788","-1.776","-1.764","-1.752","-1.74","-1.728","-1.716","-1.704","-1.692","-1.68","-1.668","-1.656","-1.644","-1.632","-1.62","-1.608","-1.596","-1.584","-1.572","-1.56","-1.548","-1.536","-1.524","-1.512","-1.5","-1.488","-1.476","-1.464","-1.452","-1.44","-1.428","-1.416","-1.404","-1.392","-1.38","-1.368","-1.356","-1.344","-1.332","-1.32","-1.308","-1.296","-1.284","-1.272","-1.26","-1.248","-1.236","-1.224","-1.212","-1.2","-1.188","-1.176","-1.164","-1.152","-1.14","-1.128","-1.116","-1.104","-1.092","-1.08","-1.068","-1.056","-1.044","-1.032","-1.02","-1.008","-0.996","-0.984","-0.972","-0.96","-0.948","-0.936","-0.924","-0.912","-0.9","-0.888","-0.876","-0.864","-0.852","-0.84","-0.828","-0.816","-0.804","-0.792","-0.78","-0.768","-0.756","-0.744","-0.732","-0.72","-0.708","-0.696","-0.684","-0.672","-0.66","-0.648","-0.636","-0.624","-0.612","-0.6","-0.588","-0.576","-0.564","-0.552","-0.54","-0.528","-0.516","-0.504","-0.492","-0.48","-0.468","-0.456","-0.444","-0.432","-0.42","-0.408","-0.396","-0.384","-0.372","-0.36","-0.348","-0.336","-0.324","-0.312","-0.3","-0.288","-0.276","-0.264","-0.252","-0.24","-0.228","-0.216","-0.204","-0.192","-0.18","-0.168","-0.156","-0.144","-0.132","-0.12","-0.108","-0.096","-0.084","-0.072","-0.06","-0.048","-0.036","-0.024","-0.012","2.52228793407e-15","0.012","0.024","0.036","0.048","0.06","0.072","0.084","0.096","0.108","0.12","0.132","0.144","0.156","0.168","0.18","0.192","0.204","0.216","0.228","0.24","0.252","0.264","0.276","0.288","0.3","0.312","0.324","0.336","0.348","0.36","0.372","0.384","0.396","0.408","0.42","0.432","0.444","0.456","0.468","0.48","0.492","0.504","0.516","0.528","0.54","0.552","0.564","0.576","0.588","0.6","0.612","0.624","0.636","0.648","0.66","0.672","0.684","0.696","0.708","0.72","0.732","0.744","0.756","0.768","0.78","0.792","0.804","0.816","0.828","0.84","0.852","0.864","0.876","0.888","0.9","0.912","0.924","0.936","0.948","0.96","0.972","0.984","0.996","1.008","1.02","1.032","1.044","1.056","1.068","1.08","1.092","1.104","1.116","1.128","1.14","1.152","1.164","1.176","1.188","1.2","1.212","1.224","1.236","1.248","1.26","1.272","1.284","1.296","1.308","1.32","1.332","1.344","1.356","1.368","1.38","1.392","1.404","1.416","1.428","1.44","1.452","1.464","1.476","1.488","1.5","1.512","1.524","1.536","1.548","1.56","1.572","1.584","1.596","1.608","1.62","1.632","1.644","1.656","1.668","1.68","1.692","1.704","1.716","1.728","1.74","1.752","1.764","1.776","1.788","1.8","1.812","1.824","1.836","1.848","1.86","1.872","1.884","1.896","1.908","1.92","1.932","1.944","1.956","1.968","1.98","1.992","2.004","2.016","2.028","2.04","2.052","2.064","2.076","2.088","2.1","2.112","2.124","2.136","2.148","2.16","2.172","2.184","2.196","2.208","2.22","2.232","2.244","2.256","2.268","2.28","2.292","2.304","2.316","2.328","2.34","2.352","2.364","2.376","2.388","2.4","2.412","2.424","2.436","2.448","2.46","2.472","2.484","2.496","2.508","2.52","2.532","2.544","2.556","2.568","2.58","2.592","2.604","2.616","2.628","2.64","2.652","2.664","2.676","2.688","2.7","2.712","2.724","2.736","2.748","2.76","2.772","2.784","2.796","2.808","2.82","2.832","2.844","2.856","2.868","2.88","2.892","2.904","2.916","2.928","2.94","2.952","2.964","2.976","2.988","3.0"],"animate":true,"label":"q1","display_value":true},{"control_type":"slider","default":83,"var":"q2","width":null,"vals":["-3.0","-2.988","-2.976","-2.964","-2.952","-2.94","-2.928","-2.916","-2.904","-2.892","-2.88","-2.868","-2.856","-2.844","-2.832","-2.82","-2.808","-2.796","-2.784","-2.772","-2.76","-2.748","-2.736","-2.724","-2.712","-2.7","-2.688","-2.676","-2.664","-2.652","-2.64","-2.628","-2.616","-2.604","-2.592","-2.58","-2.568","-2.556","-2.544","-2.532","-2.52","-2.508","-2.496","-2.484","-2.472","-2.46","-2.448","-2.436","-2.424","-2.412","-2.4","-2.388","-2.376","-2.364","-2.352","-2.34","-2.328","-2.316","-2.304","-2.292","-2.28","-2.268","-2.256","-2.244","-2.232","-2.22","-2.208","-2.196","-2.184","-2.172","-2.16","-2.148","-2.136","-2.124","-2.112","-2.1","-2.088","-2.076","-2.064","-2.052","-2.04","-2.028","-2.016","-2.004","-1.992","-1.98","-1.968","-1.956","-1.944","-1.932","-1.92","-1.908","-1.896","-1.884","-1.872","-1.86","-1.848","-1.836","-1.824","-1.812","-1.8","-1.788","-1.776","-1.764","-1.752","-1.74","-1.728","-1.716","-1.704","-1.692","-1.68","-1.668","-1.656","-1.644","-1.632","-1.62","-1.608","-1.596","-1.584","-1.572","-1.56","-1.548","-1.536","-1.524","-1.512","-1.5","-1.488","-1.476","-1.464","-1.452","-1.44","-1.428","-1.416","-1.404","-1.392","-1.38","-1.368","-1.356","-1.344","-1.332","-1.32","-1.308","-1.296","-1.284","-1.272","-1.26","-1.248","-1.236","-1.224","-1.212","-1.2","-1.188","-1.176","-1.164","-1.152","-1.14","-1.128","-1.116","-1.104","-1.092","-1.08","-1.068","-1.056","-1.044","-1.032","-1.02","-1.008","-0.996","-0.984","-0.972","-0.96","-0.948","-0.936","-0.924","-0.912","-0.9","-0.888","-0.876","-0.864","-0.852","-0.84","-0.828","-0.816","-0.804","-0.792","-0.78","-0.768","-0.756","-0.744","-0.732","-0.72","-0.708","-0.696","-0.684","-0.672","-0.66","-0.648","-0.636","-0.624","-0.612","-0.6","-0.588","-0.576","-0.564","-0.552","-0.54","-0.528","-0.516","-0.504","-0.492","-0.48","-0.468","-0.456","-0.444","-0.432","-0.42","-0.408","-0.396","-0.384","-0.372","-0.36","-0.348","-0.336","-0.324","-0.312","-0.3","-0.288","-0.276","-0.264","-0.252","-0.24","-0.228","-0.216","-0.204","-0.192","-0.18","-0.168","-0.156","-0.144","-0.132","-0.12","-0.108","-0.096","-0.084","-0.072","-0.06","-0.048","-0.036","-0.024","-0.012","2.52228793407e-15","0.012","0.024","0.036","0.048","0.06","0.072","0.084","0.096","0.108","0.12","0.132","0.144","0.156","0.168","0.18","0.192","0.204","0.216","0.228","0.24","0.252","0.264","0.276","0.288","0.3","0.312","0.324","0.336","0.348","0.36","0.372","0.384","0.396","0.408","0.42","0.432","0.444","0.456","0.468","0.48","0.492","0.504","0.516","0.528","0.54","0.552","0.564","0.576","0.588","0.6","0.612","0.624","0.636","0.648","0.66","0.672","0.684","0.696","0.708","0.72","0.732","0.744","0.756","0.768","0.78","0.792","0.804","0.816","0.828","0.84","0.852","0.864","0.876","0.888","0.9","0.912","0.924","0.936","0.948","0.96","0.972","0.984","0.996","1.008","1.02","1.032","1.044","1.056","1.068","1.08","1.092","1.104","1.116","1.128","1.14","1.152","1.164","1.176","1.188","1.2","1.212","1.224","1.236","1.248","1.26","1.272","1.284","1.296","1.308","1.32","1.332","1.344","1.356","1.368","1.38","1.392","1.404","1.416","1.428","1.44","1.452","1.464","1.476","1.488","1.5","1.512","1.524","1.536","1.548","1.56","1.572","1.584","1.596","1.608","1.62","1.632","1.644","1.656","1.668","1.68","1.692","1.704","1.716","1.728","1.74","1.752","1.764","1.776","1.788","1.8","1.812","1.824","1.836","1.848","1.86","1.872","1.884","1.896","1.908","1.92","1.932","1.944","1.956","1.968","1.98","1.992","2.004","2.016","2.028","2.04","2.052","2.064","2.076","2.088","2.1","2.112","2.124","2.136","2.148","2.16","2.172","2.184","2.196","2.208","2.22","2.232","2.244","2.256","2.268","2.28","2.292","2.304","2.316","2.328","2.34","2.352","2.364","2.376","2.388","2.4","2.412","2.424","2.436","2.448","2.46","2.472","2.484","2.496","2.508","2.52","2.532","2.544","2.556","2.568","2.58","2.592","2.604","2.616","2.628","2.64","2.652","2.664","2.676","2.688","2.7","2.712","2.724","2.736","2.748","2.76","2.772","2.784","2.796","2.808","2.82","2.832","2.844","2.856","2.868","2.88","2.892","2.904","2.916","2.928","2.94","2.952","2.964","2.976","2.988","3.0"],"animate":true,"label":"q2","display_value":true},{"buttons":false,"control_type":"selector","ncols":null,"button_classes":null,"default":0,"lbls":["autumn","bone","cool","copper","gray","hot","hsv","jet","pink","prism","spring","summer","winter"],"label":"cmap","nrows":null,"width":null,"var":"cmap"}]}}︡
︠65d22da2-f8fb-4608-af0d-af1d13892c8a︠
