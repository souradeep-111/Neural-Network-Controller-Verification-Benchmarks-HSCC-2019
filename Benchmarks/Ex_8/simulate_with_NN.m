Ts = 0.2;  % Sample Time
N = 3;    % Prediction horizon
Duration = 5; % Simulation horizon

radius = 0.1;

global simulation_result;

for m=1:1000

    
x0 = 0.5 + radius*rand(1);
y0 = 0.5 + radius*rand(1);
z0 = 0.5 + radius*rand(1);
w0 = 0.5 + radius*rand(1);


x = [x0;y0;z0;w0;];

simulation_result = x;



options = optimoptions('fmincon','Algorithm','sqp','Display','none');
uopt = zeros(N,1);

u_max = 0;


x_now = zeros(4,1);
x_next = zeros(4,1);
z = zeros(5,1);

x_now = x;

% Start simulation
for ct = 1:(Duration/Ts) 
     u = NN_output(x_now,10,1,'neural_network_controller');
     
     z(1) = x_now(1) ;
     z(2) = x_now(2) ;
     z(3) = x_now(3) ;
     z(4) = x_now(4) ;

     z(5) = u ;
     
    x_next = system_eq_dis(x_now, Ts, u);

    x = x_next;
    x_now = x_next;
end
plot(simulation_result(1,:),simulation_result(2,:), 'color', 'r');
xlabel('x');
ylabel('y');
hold on;

    
    
end

