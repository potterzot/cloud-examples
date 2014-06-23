︠654ba2f8-0065-43c9-a052-13ce71d05d69︠
import scipy.fftpack as Fourier
@interact
def discrete_fourier(f = input_box(default=sum([sin(k*x) for k in range(1,5,2)])), scale = slider(.1,20,.1,5)):
    pbegin = -float(pi)*scale
    pend = float(pi)*scale
    html("<h3>Function plot and its discrete Fourier transform</h3>")
    show(plot(f, (x,pbegin, pend), plot_points = 512), figsize = [4,3])
    f_vals = [f(x=ind) for ind in srange(pbegin, pend,(pend-pbegin)/512.0)]
    my_fft = Fourier.fft(f_vals)
    show(list_plot([abs(i) for i in my_fft], plotjoined=True), figsize = [4,3])
︡16a68661-17ad-4a9d-8622-7a72090dd45d︡{"interact":{"style":"None","flicker":false,"layout":[[["f",12,null]],[["scale",12,null]],[["",12,null]]],"id":"c16e0043-410c-43f4-80f8-186dbe8c7944","controls":[{"control_type":"input-box","default":"sin(3*x) + sin(x)","label":"f","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"f","type":null},{"control_type":"slider","default":49,"var":"scale","width":null,"vals":["0.100000000000000","0.200000000000000","0.300000000000000","0.400000000000000","0.500000000000000","0.600000000000000","0.700000000000000","0.800000000000000","0.900000000000000","1.00000000000000","1.10000000000000","1.20000000000000","1.30000000000000","1.40000000000000","1.50000000000000","1.60000000000000","1.70000000000000","1.80000000000000","1.90000000000000","2.00000000000000","2.10000000000000","2.20000000000000","2.30000000000000","2.40000000000000","2.50000000000000","2.60000000000000","2.70000000000000","2.80000000000000","2.90000000000000","3.00000000000000","3.10000000000000","3.20000000000000","3.30000000000000","3.40000000000000","3.50000000000000","3.60000000000000","3.70000000000000","3.80000000000000","3.90000000000000","4.00000000000000","4.10000000000000","4.20000000000000","4.30000000000000","4.40000000000000","4.50000000000000","4.60000000000000","4.70000000000000","4.80000000000000","4.90000000000000","5.00000000000000","5.10000000000000","5.20000000000000","5.30000000000000","5.40000000000000","5.50000000000000","5.60000000000000","5.70000000000000","5.80000000000000","5.90000000000000","5.99999999999999","6.09999999999999","6.19999999999999","6.29999999999999","6.39999999999999","6.49999999999999","6.59999999999999","6.69999999999999","6.79999999999999","6.89999999999999","6.99999999999999","7.09999999999999","7.19999999999999","7.29999999999999","7.39999999999999","7.49999999999999","7.59999999999999","7.69999999999999","7.79999999999999","7.89999999999999","7.99999999999999","8.09999999999999","8.19999999999999","8.29999999999999","8.39999999999999","8.49999999999999","8.59999999999999","8.69999999999999","8.79999999999998","8.89999999999998","8.99999999999998","9.09999999999998","9.19999999999998","9.29999999999998","9.39999999999998","9.49999999999998","9.59999999999998","9.69999999999998","9.79999999999998","9.89999999999998","9.99999999999998","10.1000000000000","10.2000000000000","10.3000000000000","10.4000000000000","10.5000000000000","10.6000000000000","10.7000000000000","10.8000000000000","10.9000000000000","11.0000000000000","11.1000000000000","11.2000000000000","11.3000000000000","11.4000000000000","11.5000000000000","11.6000000000000","11.7000000000000","11.8000000000000","11.9000000000000","12.0000000000000","12.1000000000000","12.2000000000000","12.3000000000000","12.4000000000000","12.5000000000000","12.6000000000000","12.7000000000000","12.8000000000000","12.9000000000000","13.0000000000000","13.1000000000000","13.2000000000000","13.3000000000000","13.4000000000000","13.5000000000000","13.6000000000000","13.7000000000000","13.8000000000000","13.9000000000000","14.0000000000000","14.1000000000000","14.2000000000000","14.3000000000000","14.4000000000000","14.5000000000000","14.6000000000000","14.7000000000000","14.8000000000000","14.9000000000000","15.0000000000000","15.1000000000000","15.2000000000000","15.3000000000000","15.4000000000000","15.5000000000000","15.6000000000000","15.7000000000000","15.8000000000000","15.9000000000000","16.0000000000000","16.1000000000000","16.2000000000000","16.3000000000000","16.4000000000000","16.5000000000000","16.6000000000000","16.7000000000000","16.8000000000000","16.9000000000000","17.0000000000000","17.1000000000000","17.2000000000000","17.3000000000000","17.4000000000000","17.5000000000000","17.6000000000000","17.7000000000000","17.8000000000000","17.9000000000000","18.0000000000000","18.1000000000000","18.2000000000000","18.3000000000000","18.4000000000000","18.5000000000000","18.6000000000000","18.7000000000000","18.8000000000000","18.9000000000000","19.0000000000000","19.1000000000000","19.2000000000000","19.3000000000000","19.4000000000000","19.5000000000000","19.6000000000000","19.7000000000000","19.8000000000000","19.9000000000000","20.0000000000000"],"animate":true,"label":"scale","display_value":true}]}}︡
︠7b2b9afb-aaf7-4c7e-ba3f-19900e7f0eba︠









