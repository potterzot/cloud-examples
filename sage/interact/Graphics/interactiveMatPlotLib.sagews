︠0b95b371-865e-4a1e-8e09-02466c2aa1cd︠
#This file doesn't seem to be working at the moment

# Simple example demonstrating how to interact with matplotlib directly.
# Comment plt.clf() to get the plots overlay in each update.
# Gokhan Sever & Harald Schilly (2010-01-24)

from scipy import stats
import numpy as np
import matplotlib.pyplot as plt

@interact
def plot_norm(loc=(0,(0,10)), scale=(1,(1,10))):
    rv = stats.norm(loc, scale)
    x = np.linspace(-10,10,1000)
    plt.plot(x,rv.pdf(x))
    plt.grid(True)
    plt.savefig('plt.png')
    plt.clf()
︡ec681c11-3ff7-4b32-86ba-1d07f42f22b1︡{"interact":{"style":"None","flicker":false,"layout":[[["loc",12,null]],[["scale",12,null]],[["",12,null]]],"id":"9d54bdc4-c90e-4a0f-8577-bc0d90d6fa4f","controls":[{"control_type":"slider","default":0,"var":"loc","width":null,"vals":["0.0","0.02","0.04","0.06","0.08","0.1","0.12","0.14","0.16","0.18","0.2","0.22","0.24","0.26","0.28","0.3","0.32","0.34","0.36","0.38","0.4","0.42","0.44","0.46","0.48","0.5","0.52","0.54","0.56","0.58","0.6","0.62","0.64","0.66","0.68","0.7","0.72","0.74","0.76","0.78","0.8","0.82","0.84","0.86","0.88","0.9","0.92","0.94","0.96","0.98","1.0","1.02","1.04","1.06","1.08","1.1","1.12","1.14","1.16","1.18","1.2","1.22","1.24","1.26","1.28","1.3","1.32","1.34","1.36","1.38","1.4","1.42","1.44","1.46","1.48","1.5","1.52","1.54","1.56","1.58","1.6","1.62","1.64","1.66","1.68","1.7","1.72","1.74","1.76","1.78","1.8","1.82","1.84","1.86","1.88","1.9","1.92","1.94","1.96","1.98","2.0","2.02","2.04","2.06","2.08","2.1","2.12","2.14","2.16","2.18","2.2","2.22","2.24","2.26","2.28","2.3","2.32","2.34","2.36","2.38","2.4","2.42","2.44","2.46","2.48","2.5","2.52","2.54","2.56","2.58","2.6","2.62","2.64","2.66","2.68","2.7","2.72","2.74","2.76","2.78","2.8","2.82","2.84","2.86","2.88","2.9","2.92","2.94","2.96","2.98","3.0","3.02","3.04","3.06","3.08","3.1","3.12","3.14","3.16","3.18","3.2","3.22","3.24","3.26","3.28","3.3","3.32","3.34","3.36","3.38","3.4","3.42","3.44","3.46","3.48","3.5","3.52","3.54","3.56","3.58","3.6","3.62","3.64","3.66","3.68","3.7","3.72","3.74","3.76","3.78","3.8","3.82","3.84","3.86","3.88","3.9","3.92","3.94","3.96","3.98","4.0","4.02","4.04","4.06","4.08","4.1","4.12","4.14","4.16","4.18","4.2","4.22","4.24","4.26","4.28","4.3","4.32","4.34","4.36","4.38","4.4","4.42","4.44","4.46","4.48","4.5","4.52","4.54","4.56","4.58","4.6","4.62","4.64","4.66","4.68","4.7","4.72","4.74","4.76","4.78","4.8","4.82","4.84","4.86","4.88","4.9","4.92","4.94","4.96","4.98","5.0","5.02","5.04","5.06","5.08","5.1","5.12","5.14","5.16","5.18","5.2","5.22","5.24","5.26","5.28","5.3","5.32","5.34","5.36","5.38","5.4","5.42","5.44","5.46","5.48","5.5","5.52","5.54","5.56","5.58","5.6","5.62","5.64","5.66","5.68","5.7","5.72","5.74","5.76","5.78","5.8","5.82","5.84","5.86","5.88","5.9","5.92","5.94","5.96","5.98","6.0","6.02","6.04","6.06","6.08","6.1","6.12","6.14","6.16","6.18","6.2","6.22","6.24","6.26","6.28","6.3","6.32","6.34","6.36","6.38","6.4","6.42","6.44","6.46","6.48","6.5","6.52","6.54","6.56","6.58","6.6","6.62","6.64","6.66","6.68","6.7","6.72","6.74","6.76","6.78","6.8","6.82","6.84","6.86","6.88","6.9","6.92","6.94","6.96","6.98","7.0","7.02","7.04","7.06","7.08","7.1","7.12","7.14","7.16","7.18","7.2","7.22","7.24","7.26","7.28","7.3","7.32","7.34","7.36","7.38","7.4","7.42","7.44","7.46","7.48","7.5","7.52","7.54","7.56","7.58","7.6","7.62","7.64","7.66","7.68","7.7","7.72","7.74","7.76","7.78","7.8","7.82","7.84","7.86","7.88","7.9","7.92","7.94","7.96","7.98","8.0","8.02","8.04","8.06","8.08","8.1","8.12","8.14","8.16","8.18","8.2","8.22","8.24","8.26","8.28","8.3","8.32","8.34","8.36","8.38","8.4","8.42","8.44","8.46","8.48","8.5","8.52","8.54","8.56","8.58","8.6","8.62","8.64","8.66","8.68","8.7","8.72","8.74","8.76","8.78","8.8","8.82","8.84","8.86","8.88","8.9","8.92","8.94","8.96","8.98","9.0","9.02","9.04","9.06","9.08","9.1","9.12","9.14","9.16","9.18","9.2","9.22","9.24","9.26","9.28","9.3","9.32","9.34","9.36","9.38","9.4","9.42","9.44","9.46","9.48","9.5","9.52","9.54","9.56","9.58","9.6","9.62","9.64","9.66","9.68","9.7","9.72","9.74","9.76","9.78","9.8","9.82","9.84","9.86","9.88","9.9","9.92","9.94","9.96","9.98","10.0"],"animate":true,"label":"loc","display_value":true},{"control_type":"slider","default":0,"var":"scale","width":null,"vals":["1.0","1.018","1.036","1.054","1.072","1.09","1.108","1.126","1.144","1.162","1.18","1.198","1.216","1.234","1.252","1.27","1.288","1.306","1.324","1.342","1.36","1.378","1.396","1.414","1.432","1.45","1.468","1.486","1.504","1.522","1.54","1.558","1.576","1.594","1.612","1.63","1.648","1.666","1.684","1.702","1.72","1.738","1.756","1.774","1.792","1.81","1.828","1.846","1.864","1.882","1.9","1.918","1.936","1.954","1.972","1.99","2.008","2.026","2.044","2.062","2.08","2.098","2.116","2.134","2.152","2.17","2.188","2.206","2.224","2.242","2.26","2.278","2.296","2.314","2.332","2.35","2.368","2.386","2.404","2.422","2.44","2.458","2.476","2.494","2.512","2.53","2.548","2.566","2.584","2.602","2.62","2.638","2.656","2.674","2.692","2.71","2.728","2.746","2.764","2.782","2.8","2.818","2.836","2.854","2.872","2.89","2.908","2.926","2.944","2.962","2.98","2.998","3.016","3.034","3.052","3.07","3.088","3.106","3.124","3.142","3.16","3.178","3.196","3.214","3.232","3.25","3.268","3.286","3.304","3.322","3.34","3.358","3.376","3.394","3.412","3.43","3.448","3.466","3.484","3.502","3.52","3.538","3.556","3.574","3.592","3.61","3.628","3.646","3.664","3.682","3.7","3.718","3.736","3.754","3.772","3.79","3.808","3.826","3.844","3.862","3.88","3.898","3.916","3.934","3.952","3.97","3.988","4.006","4.024","4.042","4.06","4.078","4.096","4.114","4.132","4.15","4.168","4.186","4.204","4.222","4.24","4.258","4.276","4.294","4.312","4.33","4.348","4.366","4.384","4.402","4.42","4.438","4.456","4.474","4.492","4.51","4.528","4.546","4.564","4.582","4.6","4.618","4.636","4.654","4.672","4.69","4.708","4.726","4.744","4.762","4.78","4.798","4.816","4.834","4.852","4.87","4.888","4.906","4.924","4.942","4.96","4.978","4.996","5.014","5.032","5.05","5.068","5.086","5.104","5.122","5.14","5.158","5.176","5.194","5.212","5.23","5.248","5.266","5.284","5.302","5.32","5.338","5.356","5.374","5.392","5.41","5.428","5.446","5.464","5.482","5.5","5.518","5.536","5.554","5.572","5.59","5.608","5.626","5.644","5.662","5.68","5.698","5.716","5.734","5.752","5.77","5.788","5.806","5.824","5.842","5.86","5.878","5.896","5.914","5.932","5.95","5.968","5.986","6.004","6.022","6.04","6.058","6.076","6.094","6.112","6.13","6.148","6.166","6.184","6.202","6.22","6.238","6.256","6.274","6.292","6.31","6.328","6.346","6.364","6.382","6.4","6.418","6.436","6.454","6.472","6.49","6.508","6.526","6.544","6.562","6.58","6.598","6.616","6.634","6.652","6.67","6.688","6.706","6.724","6.742","6.76","6.778","6.796","6.814","6.832","6.85","6.868","6.886","6.904","6.922","6.94","6.958","6.976","6.994","7.012","7.03","7.048","7.066","7.084","7.102","7.12","7.138","7.156","7.174","7.192","7.21","7.228","7.246","7.264","7.282","7.3","7.318","7.336","7.354","7.372","7.39","7.408","7.426","7.444","7.462","7.48","7.498","7.516","7.534","7.552","7.57","7.588","7.606","7.624","7.642","7.66","7.678","7.696","7.714","7.732","7.75","7.768","7.786","7.804","7.822","7.84","7.858","7.876","7.894","7.912","7.93","7.948","7.966","7.984","8.002","8.02","8.038","8.056","8.074","8.092","8.11","8.128","8.146","8.164","8.182","8.2","8.218","8.236","8.254","8.272","8.29","8.308","8.326","8.344","8.362","8.38","8.398","8.416","8.434","8.452","8.47","8.488","8.506","8.524","8.542","8.56","8.578","8.596","8.614","8.632","8.65","8.668","8.686","8.704","8.722","8.74","8.758","8.776","8.794","8.812","8.83","8.848","8.866","8.884","8.902","8.92","8.938","8.956","8.974","8.992","9.01","9.028","9.046","9.064","9.082","9.1","9.118","9.136","9.154","9.172","9.19","9.208","9.226","9.244","9.262","9.28","9.298","9.316","9.334","9.352","9.37","9.388","9.406","9.424","9.442","9.46","9.478","9.496","9.514","9.532","9.55","9.568","9.586","9.604","9.622","9.64","9.658","9.676","9.694","9.712","9.73","9.748","9.766","9.784","9.802","9.82","9.838","9.856","9.874","9.892","9.91","9.928","9.946","9.964","9.982","10.0"],"animate":true,"label":"scale","display_value":true}]}}︡
︠5e3ff895-d352-4530-9abb-4c5cb64fc709︠









