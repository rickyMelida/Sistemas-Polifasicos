function varargout = G_Polar(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @G_Polar_OpeningFcn, ...
                   'gui_OutputFcn',  @G_Polar_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


function G_Polar_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

%Centramos la interfaz en el centro de la pantalla
scrsz = get(0,'ScreenSize');
pos_act = get(gcf,'Position');
xr = scrsz(3)- pos_act(3);
xp = round(xr/2);
yr = scrsz(4) - pos_act(4);
yp = round(yr/2);
set(gcf,'Position', [xp yp pos_act(3) pos_act(4)]);

%Hacemos que nos muestre la grafica polar, inicialmente en 0
axes(handles.grafica_polar);
global  ejes
ejes = 1;
compass(ejes,'white');

function varargout = G_Polar_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


% --- Executes on button press in selec_corr_A_estrella.
function selec_corr_A_estrella_Callback(hObject, eventdata, handles)
global corr_A anglo_corr_A ejes
a=num2str(corr_A);
valor = get(hObject,'Value');

if a ~= ' ' 
     if valor == 1
        corr_A_real = round((cos((anglo_corr_A*3.14)/180))*corr_A);
        corr_A_imag = round((sin((anglo_corr_A*3.14)/180))*corr_A);
        corr_A_comp = complex(corr_A_real,corr_A_imag);
        
        ejes = corr_A_comp ;
        
        axes(handles.grafica_polar);
        compass(corr_A_comp,'blue');
        hold on;

     else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_A_estrella,'Value',0);
end

% --- Executes on button press in selec_corr_B_estrella.
function selec_corr_B_estrella_Callback(hObject, eventdata, handles)
global corr_B anglo_corr_B ejes
a=num2str(corr_B);
valor = get(hObject,'Value');

if a ~= ' '
    if valor ==1
        corr_B_real = round((cos((anglo_corr_B*3.14)/180))*corr_B);
        corr_B_imag = round((sin((anglo_corr_B*3.14)/180))*corr_B);
    
        corr_B_comp = complex(corr_B_real,corr_B_imag);    
    
        ejes = corr_B_comp;
        
        axes(handles.grafica_polar);
        compass(corr_B_comp,'blue');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tiene este dato','Advertencia');
    set(handles.selec_corr_B_estrella,'Value',0);
end
% --- Executes on button press in selec_corr_C_estrella.
function selec_corr_C_estrella_Callback(hObject, eventdata, handles)
global corr_C anglo_corr_C ejes
a = num2str(corr_C);
valor = get(hObject,'Value');

if a ~= ' '
    if valor==1
        corr_C_real = round((cos((anglo_corr_C*3.14)/180))*corr_C);
        corr_C_imag = round((sin((anglo_corr_C*3.14)/180))*corr_C);
    
        corr_C_comp = complex(corr_C_real,corr_C_imag);
    
        ejes = corr_C_comp;
        
        axes(handles.grafica_polar);
        compass(corr_C_comp,'blue');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tiene ese dato','Advertencia');
    set(handles.selec_corr_C_estrella,'Value',0);
end
% --- Executes on button press in selec_corr_N_estrella.
function selec_corr_N_estrella_Callback(hObject, eventdata, handles)
global corr_N anglo_corr_N ejes
a = num2str(corr_N);
valor = get(hObject,'Value');

if a ~= ' '
    if valor==1
        corr_N_real = round((cos((anglo_corr_N*3.14)/180))*corr_N);
        corr_N_imag = round((sin((anglo_corr_N*3.14)/180))*corr_N);
    
        corr_N_comp = complex(corr_N_real,corr_N_imag);
    
        ejes = corr_N_comp;
        
         axes(handles.grafica_polar);
         compass(corr_N_comp,'blue');
         hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tiene ese dato','Advertencia');
    set(handles.selec_corr_N_estrella,'Value',0);
end
% --- Executes on button press in selec_volt_A_estrella.
function selec_volt_A_estrella_Callback(hObject, eventdata, handles)
global volt_A anglo_A ejes
a = num2str(volt_A);
b = num2str(anglo_A);
valor = get(hObject,'Value');

%msgbox(sprintf('a = %2.3g',volt_A),'es');

if and(a ~= ' ', b ~= ' ')
    if valor==1
        volt_A_real = round((cos((anglo_A*3.14)/180))*volt_A);
        volt_A_imag = round((sin((anglo_A*3.14)/180))*volt_A);
    
        volt_A_comp = complex(volt_A_real,volt_A_imag);
    
        ejes = volt_A_comp;
        
        axes(handles.grafica_polar);
        compass(volt_A_comp,'red');
        hold on;
        %warndlg(sprintf('el valor del voltaje_A en complejo es : %2.3g',volt_A_comp),'es');
        %warndlg(sprintf('ejes vale: %2.3g',ejes),'es');
    else
        axes(handles.grafica_polar);
        compass(ejes,'white')
        hold off;
    end
else
    warndlg('No tienes este datossssss','Advertencia');
    set(handles.selec_volt_A_estrella,'Value',0);
end
% --- Executes on button press in selec_volt_B_estrella.
function selec_volt_B_estrella_Callback(hObject, eventdata, handles)
global volt_B anglo_B ejes
a = num2str(volt_B);
b = num2str(anglo_B);
valor = get(hObject,'Value');

if and(a ~= ' ', b ~= ' ')
    if valor==1
        volt_B_real = round((cos((anglo_B*3.14)/180))*volt_B);
        volt_B_imag = round((sin((anglo_B*3.14)/180))*volt_B);
    
        volt_B_comp = complex(volt_B_real,volt_B_imag);
    
        ejes = volt_B_comp;
        
        axes(handles.grafica_polar);
        compass(volt_B_comp,'red');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_B_estrella,'Value',0);
end
% --- Executes on button press in selec_volt_C_estrella.
function selec_volt_C_estrella_Callback(hObject, eventdata, handles)
global volt_C anglo_C ejes
valor = get(hObject,'Value');

if volt_C ~= 0 & anglo_C ~= 0 
    if valor==1
        volt_C_real = round((cos((anglo_C*3.14)/180))*volt_C);
        volt_C_imag = round((sin((anglo_C*3.14)/180))*volt_C);
    
        volt_C_comp = complex(volt_C_real,volt_C_imag);
    
        ejes = volt_C_comp;
        
        axes(handles.grafica_polar);
        compass(volt_C_comp,'red');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_C_estrella,'Value',0);
end
% --- Executes on button press in selec_imped_A_estrella.
function selec_imped_A_estrella_Callback(hObject, eventdata, handles)
global imped_A ejes
a = num2str(imped_A);
valor = get(hObject,'Value');

if a ~= ' '
    if valor == 1
        ejes = ejes+(5+5i);
            
        axes(handles.grafica_polar);
        compass(imped_A,'green');
        hold on
    else
        axes(handles.grafica_polar);
        compass(imped_A,'white');
        hold off;
    end
else
    warndlg('no tienes este dato','Advertncia');
    set(handles.selec_imped_A_estrella,'Value',0);
end

% --- Executes on button press in selec_imped_B_estrella.
function selec_imped_B_estrella_Callback(hObject, eventdata, handles)
global imped_B ejes
valor = get(hObject,'Value');
a = num2str(imped_B);
if a ~= ' ' 
    if valor == 1
        ejes = ejes+(5+5i);
        
        axes(handles.grafica_polar);
        compass(imped_B,'green');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(imped_B,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_B_estrella,'Value',0);
end

% --- Executes on button press in selec_imped_C_estrella.
function selec_imped_C_estrella_Callback(hObject, eventdata, handles)
global imped_C ejes
a = num2str(imped_C);
valor = get(hObject,'Value');

if a ~= ' '
    if valor == 1
        ejes = ejes+(5+5i);
        
        axes(handles.grafica_polar);
        compass(imped_C,'green');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(imped_C,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_C_estrella,'Value',0);
end

% ------------------------------------AQUI COMIENZA EL ESQUEMA EN TRIANGULO-------------------%

% --- Executes on button press in selec_corr_A_triangulo.
function selec_corr_A_triangulo_Callback(hObject, eventdata, handles)
global corr_A_tria anglo_corr_A_tria ejes

a = num2str(corr_A_tria);
valor = get(hObject,'Value');

if a ~= ' '
    if valor ==1
        corr_A_real_tria = round((cos((anglo_corr_A_tria*3.14)/180))*corr_A_tria);
        corr_A_imag_tria = round((sin((anglo_corr_A_tria*3.14)/180))*corr_A_tria);
    
        corr_A_comp_tria = complex(corr_A_real_tria,corr_A_imag_tria);    
    
        ejes = corr_A_comp_tria;
        
        axes(handles.grafica_polar);
        compass(corr_A_comp_tria,'blue');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_A_triangulo,'Value',0);
end

% --- Executes on button press in selec_corr_B_triangulo.
function selec_corr_B_triangulo_Callback(hObject, eventdata, handles)
global corr_B_tria anglo_corr_B_tria ejes
a = num2str(corr_B_tria);
valor = get(hObject,'Value');

if a ~= ' '
    if valor ==1
        corr_B_real_tria = round((cos((anglo_corr_B_tria*3.14)/180))*corr_B_tria);
        corr_B_imag_tria = round((sin((anglo_corr_B_tria*3.14)/180))*corr_B_tria);
    
        corr_B_comp_tria = complex(corr_B_real_tria,corr_B_imag_tria);    
    
        ejes = corr_B_comp_tria;
        
        axes(handles.grafica_polar);
        compass(corr_B_comp_tria,'blue');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_B_triangulo,'Value',0);
end

% --- Executes on button press in selec_corr_C_triangulo.
function selec_corr_C_triangulo_Callback(hObject, eventdata, handles)
global corr_C_tria anglo_corr_C_tria ejes
a = num2str(corr_C_tria);
valor = get(hObject,'Value');

if a ~= ' '
    if valor ==1
        corr_C_real_tria = round((cos((anglo_corr_C_tria*3.14)/180))*corr_C_tria);
        corr_C_imag_tria = round((sin((anglo_corr_C_tria*3.14)/180))*corr_C_tria);
    
        corr_C_comp_tria = complex(corr_C_real_tria,corr_C_imag_tria);    
    
        ejes = corr_C_comp_tria;
        
        axes(handles.grafica_polar);
        compass(corr_C_comp_tria,'blue');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_C_triangulo,'Value',0);
end

% --- Executes on button press in selec_corr_AB_triangulo.
function selec_corr_AB_triangulo_Callback(hObject, eventdata, handles)
global corr_AB anglo_corr_AB ejes
a = num2str(corr_AB);
%b = num2str(anglo_corr_AB);
valor = get(hObject,'Value');

if a ~= ' '
    if valor ==1
        corr_AB_real = round((cos((anglo_corr_AB*3.14)/180))*corr_AB);
        corr_AB_imag = round((sin((anglo_corr_AB*3.14)/180))*corr_AB);
    
        corr_AB_comp = complex(corr_AB_real,corr_AB_imag);    
    
        ejes = corr_AB_comp;
        
        axes(handles.grafica_polar);
        compass(corr_AB_comp,'yellow');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_AB_triangulo,'Value',0);
end

% --- Executes on button press in selec_corr_BC_triangulo.
function selec_corr_BC_triangulo_Callback(hObject, eventdata, handles)
global corr_BC anglo_corr_BC ejes
a = num2str(corr_BC);
valor = get(hObject,'Value');

if a ~= ' '
    if valor ==1
        corr_BC_real = round((cos((anglo_corr_BC*3.14)/180))*corr_BC);
        corr_BC_imag = round((sin((anglo_corr_BC*3.14)/180))*corr_BC);
    
        corr_BC_comp = complex(corr_BC_real,corr_BC_imag);    
    
        ejes = corr_BC_comp;

        axes(handles.grafica_polar);
        compass(corr_BC_comp,'yellow');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_BC_triangulo,'Value',0);
end

% --- Executes on button press in selec_corr_CA_triangulo.
function selec_corr_CA_triangulo_Callback(hObject, eventdata, handles)
global corr_CA anglo_corr_CA ejes
a = num2str(corr_CA);
%b = num2str(anglo_corr_CA);
valor = get(hObject,'Value');

if a ~= ' '
    if valor ==1
        corr_CA_real = round((cos((anglo_corr_CA*3.14)/180))*corr_CA);
        corr_CA_imag = round((sin((anglo_corr_CA*3.14)/180))*corr_CA);
    
        corr_CA_comp = complex(corr_CA_real,corr_CA_imag);    
    
         ejes = corr_CA_comp;
         
         axes(handles.grafica_polar);
         compass(corr_CA_comp,'yellow');
         hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_CA_triangulo,'Value',0);
end

% --- Executes on button press in selec_volt_AB_triangulo.
function selec_volt_AB_triangulo_Callback(hObject, eventdata, handles)
global volt_AB anglo_AB ejes
a = num2str(volt_AB);
b = num2str(anglo_AB);
valor = get(hObject,'Value');

if and(a ~= ' ', b ~= ' ')
    if valor ==1
        volt_AB_real = round((cos((anglo_AB*3.14)/180))*volt_AB);
        volt_AB_imag = round((sin((anglo_AB*3.14)/180))*volt_AB);
    
        volt_AB_comp = complex(volt_AB_real,volt_AB_imag);    
    
        ejes = volt_AB_comp;

        axes(handles.grafica_polar);
        compass(volt_AB_comp,'red');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advetencia');
    set(handles.selec_volt_AB_triangulo,'Value',0);
end

% --- Executes on button press in selec_volt_BC_triangulo.
function selec_volt_BC_triangulo_Callback(hObject, eventdata, handles)
global volt_BC anglo_BC ejes
a = num2str(volt_BC);
b = num2str(anglo_BC);
valor = get(hObject,'Value');

if and(a ~= ' ', b ~= ' ')
    if valor ==1
        volt_BC_real = round((cos((anglo_BC*3.14)/180))*volt_BC);
        volt_BC_imag = round((sin((anglo_BC*3.14)/180))*volt_BC);
    
        volt_BC_comp = complex(volt_BC_real,volt_BC_imag);    
    
        ejes = volt_BC_comp;

        axes(handles.grafica_polar);
        compass(volt_BC_comp,'red');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_BC_triangulo,'Value',0);
end
% --- Executes on button press in selec_volt_CA_triangulo.
function selec_volt_CA_triangulo_Callback(hObject, eventdata, handles)
global volt_CA anglo_CA ejes
a = num2str(volt_CA);
b = num2str(anglo_CA);
valor = get(hObject,'Value');

if and(a ~= ' ', b ~= ' ')
    if valor ==1
        volt_CA_real = round((cos((anglo_CA*3.14)/180))*volt_CA);
        volt_CA_imag = round((sin((anglo_CA*3.14)/180))*volt_CA);
    
        volt_CA_comp = complex(volt_CA_real,volt_CA_imag);    
    
        ejes = volt_CA_comp;
        
        axes(handles.grafica_polar);
        compass(volt_CA_comp,'red');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_CA_triangulo,'Value',0);
end

% --- Executes on button press in selec_imped_B_triangulo.
function selec_imped_B_triangulo_Callback(hObject, eventdata, handles)
global imped_B_tria ejes
a = num2str(imped_B_tria);
valor = get(hObject,'Value');

if a ~= ' '
    if valor == 1
        ejes = imped_B_tria;
        
        axes(handles.grafica_polar);
        compass(imped_B_tria,'green');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;  
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_B_triangulo,'Value',0);
end

% --- Executes on button press in selec_imped_A_triangulo.
function selec_imped_A_triangulo_Callback(hObject, eventdata, handles)
global imped_A_tria ejes
a = num2str(imped_A_tria);
valor = get(hObject,'Value');

if a ~= ' '
    if valor == 1
    
        ejes = imped_A_tria; 
        
        axes(handles.grafica_polar);
        compass(imped_A_tria,'green');
        hold on;
        
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_A_triangulo,'Value',0);
end

% --- Executes on button press in selec_imped_C_triangulo.
function selec_imped_C_triangulo_Callback(hObject, eventdata, handles)
global imped_C_tria ejes
a = num2str(imped_C_tria);
valor = get(hObject,'Value');

if a ~= ' '
    if valor == 1
        
        ejes = imped_C_tria;
        
        axes(handles.grafica_polar);
        compass(imped_C_tria,'green');
        hold on;
    else
        axes(handles.grafica_polar);
        compass(ejes,'white');
        hold off;
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_C_triangulo,'Value',0);
end

% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
a=0;
compass(a);
hold off;
set(handles.selec_corr_A_estrella,'Value',0);
set(handles.selec_corr_B_estrella,'Value',0);
set(handles.selec_corr_C_estrella,'Value',0);
set(handles.selec_corr_N_estrella,'Value',0);
set(handles.selec_volt_A_estrella,'Value',0);
set(handles.selec_volt_B_estrella,'Value',0);
set(handles.selec_volt_C_estrella,'Value',0);
set(handles.selec_imped_A_estrella,'Value',0);
set(handles.selec_imped_B_estrella,'Value',0);
set(handles.selec_imped_C_estrella,'Value',0);

set(handles.selec_corr_A_triangulo,'Value',0);
set(handles.selec_corr_B_triangulo,'Value',0);
set(handles.selec_corr_C_triangulo,'Value',0);
set(handles.selec_corr_AB_triangulo,'Value',0);
set(handles.selec_corr_BC_triangulo,'Value',0);
set(handles.selec_corr_CA_triangulo,'Value',0);
set(handles.selec_volt_AB_triangulo,'Value',0);
set(handles.selec_volt_BC_triangulo,'Value',0);
set(handles.selec_volt_CA_triangulo,'Value',0);
set(handles.selec_imped_A_triangulo,'Value',0);
set(handles.selec_imped_B_triangulo,'Value',0);
set(handles.selec_imped_C_triangulo,'Value',0);


function btn_salir_Callback(hObject, eventdata, handles)
close(gcbf)

