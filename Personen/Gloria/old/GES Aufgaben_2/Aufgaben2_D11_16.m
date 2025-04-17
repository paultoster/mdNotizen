% Aufgabe  1.6) 
% Folgender Wandaufbau ist in der Tabelle gegeben. Die W�rme�bergangswiderst�nde 
% aufgrund des inneren und �u�eren W�rme�bergangs zur Wand betragen R_i = 0.13 m^2*K/W 
% R_a = 0.04 m^2*K/W 
% Welche Dicke in Metern muss die D�mmschicht mindestens aufweisen, damit der 
% W�rmedurchgangskoeffizient U einen Wert von 0.41 m^2*K/W  nicht �berschreitet 
% 
% Position 
% W�rme�bergangswiderstand innen  R_i 0.13 m^2*K/W 
% A) Innenputz s_A = 0.015 m  lambda_A = 0.87 W/m/K 
% B) Mauerwerk s_B = 0.250 m  lambda_B = 2.4 W/m/K 
% C) D�mmung   s_C = ?        lambda_C = 0.035 W/m/K 
% D) Au�enputz s_D = 0.015 m  lambda_D = 0.87 W/K/m 
% W�rme�bergangswiderstand aussen  R_a 0.04 m^2*K/W 
% 
% Geben Sie den Wert in Metern auf zwei Nachkommastellen gerundet an. Runden Sie 
% ben�tigte Zwischenergebnisse ebenfalls auf zwei Nachkommastellen. 
% 
% 
fprintf(' U = 1/(R_i + s_A/lambda_A+ s_B/lambda_B+ s_C/lambda_C+ s_D/lambda_D+R_a)\n');
fprintf('\n');
fprintf(' nach s_C aufl�sen:\n'); 
fprintf('\n');
fprintf(' (R_i + s_A/lambda_A+ s_B/lambda_B+ s_C/lambda_C+ s_D/lambda_D+R_a) = 1/U\n');
fprintf(' s_C/lambda_C = 1/U - R_i - s_A/lambda_A - s_B/lambda_B - s_D/lambda_D - R_a \n');
fprintf(' s_C = lambda_C * (1/U - R_i - s_A/lambda_A - s_B/lambda_B - s_D/lambda_D - R_a)\n');
fprintf('-------------------------------------------------------------------------------\n');
 
 
 

  

R_i = 0.13;
R_a = 0.04;
s_A = 0.015; 
lambda_A = 0.87; 
s_B = 0.250;
lambda_B = 2.4; 
lambda_C = 0.035; 
s_D = 0.015;
lambda_D = 0.87; 
 
U_grenz = 0.41;
 
s_C = lambda_C * (1/U_grenz - R_i - s_A/lambda_A - s_B/lambda_B - s_D/lambda_D - R_a);



fprintf('\n')
fprintf('W�rme�bergangswiderstand innen  = %15.3f m^2*K/W\n',R_i);
fprintf('W�rme�bergangswiderstand aussen = %15.3f m^2*K/W\n',R_a);
fprintf('Dicke Innenputz                 = %15.3f m\n',s_A);
fprintf('W�rmeleitf�higkeit Innenputz    = %15.0f \n',lambda_A);
fprintf('Dicke MAuerwerk                 = %15.3f m\n',s_B);
fprintf('W�rmeleitf�higkeit Mauerwerk    = %15.0f \n',lambda_B);
fprintf('W�rmeleitf�higkeit D�mmung      = %15.0f \n',lambda_C);
fprintf('Dicke D�mmung                   = %15.3f m\n',s_D);
fprintf('W�rmeleitf�higkeit D�mmung      = %15.0f \n',lambda_D);
fprintf('W�rmedurchgangskoeffizient      = %15.3f W\n',U_grenz);

fprintf('Dicke D�mmung                   = %15.3f m\n',s_C);
fprintf('Dicke D�mmung                   = %15.3f m\n',round(s_C*100.)/100.);


  