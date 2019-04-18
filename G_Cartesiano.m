function varargout = G_Cartesiano(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @G_Cartesiano_OpeningFcn, ...
                   'gui_OutputFcn',  @G_Cartesiano_OutputFcn, ...
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

function G_Cartesiano_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

global x
x = 0:.1:2*pi;
%Centramos la interfaz en el centro de la pantalla
scrsz = get(0,'ScreenSize');
pos_act = get(gcf,'Position');
xr = scrsz(3)- pos_act(3);
xp = round(xr/2);
yr = scrsz(4) - pos_act(4);
yp = round(yr/2);
set(gcf,'Position', [xp yp pos_act(3) pos_act(4)]);

%Hacemos que nos muestre la grafica polar, inicialmente en 0
axes(handles.eje_cartesianos);
y = (sin(x))*10;
z = (sin(x))*20;
%plot(x,y,'g',x,z,'r')
grid on

function varargout = G_Cartesiano_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function selec_corr_A_estrella_Callback(hObject, eventdata, handles)
valor = get(hObject,'Value');
global anglo_corr_A x
a = num2str(anglo_corr_A);
if a ~= ' '
    if valor==1
        c_A_e = sin(x + anglo_corr_A);
        plot(x,c_A_e,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienees este dato','Advertencia');
    set(handles.selec_corr_A_estrella,'Value',0);
end

function selec_corr_B_estrella_Callback(hObject, eventdata, handles)
valor = get(hObject,'Value');
global anglo_corr_B x
a = num2str(anglo_corr_B);

if a ~= ' '
    if valor==1
        c_B_e = sin(x + anglo_corr_B);
        plot(x,c_B_e,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_B_estrella,'Value',0);
end

function selec_corr_C_estrella_Callback(hObject, eventdata, handles)
valor = get(hObject,'Value');
global anglo_corr_C x
a = num2str(anglo_corr_C);

if a ~= ' '
    if valor==1
        c_C_e = sin(x + anglo_corr_C);
        plot(x,c_C_e,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_C_estrella,'Value',0);
end

function selec_corr_N_estrella_Callback(hObject, eventdata, handles)
valor = get(hObject,'Value');
global anglo_corr_N x
a = num2str(anglo_corr_N);

if a ~= ' '
    if valor==1
        c_N_e = sin(x + anglo_corr_N);
        plot(x,c_N_e,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_N_estrella,'Value',0);
end

function selec_volt_A_estrella_Callback(hObject, eventdata, handles)
valor = get(hObject,'Value');
global anglo_A x
a = num2str(anglo_A);

if a ~= ' '
    if valor==1
        v_A_e = sin(x + anglo_A);
        plot(x,v_A_e,'r');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_A_estrella,'Value',0);
end

function selec_volt_B_estrella_Callback(hObject, eventdata, handles)
valor = get(hObject,'Value');
global anglo_B x
a = num2str(anglo_B);

if a ~= ' '
    if valor==1
        v_B_e = sin(x + anglo_B);
        plot(x,v_B_e,'r');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_B_estrella,'Value',0);
end

function selec_volt_C_estrella_Callback(hObject, eventdata, handles)
valor = get(hObject,'Value');
global anglo_C x
a = num2str(anglo_C);

if a ~= ' '
    if valor==1
        v_C_e = sin(x + anglo_C);
        plot(x,v_C_e,'r');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_C_estrella,'Value',0);
end

function selec_imped_A_estrella_Callback(hObject, eventdata, handles)
global imped_A x
valor = get(hObject,'Value');
anglo_imped_A = (angle(imped_A)*180)/pi;
a = num2str(imped_A);

if a ~= ' '
    if valor == 1
        i_A_e = sin(x + anglo_imped_A);
        plot(x,i_A_e,'g');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_A_estrella,'Value',0);
end

function selec_imped_B_estrella_Callback(hObject, eventdata, handles)
global imped_B x
valor = get(hObject,'Value');
anglo_imped_B = (angle(imped_B)*180)/pi;
a = num2str(imped_B);

if a ~= ' '
    if valor == 1
        i_B_e = sin(x + anglo_imped_B);
        plot(x,i_B_e,'g');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_B_estrella,'Value',0);
end

function selec_imped_C_estrella_Callback(hObject, eventdata, handles)
global imped_C x
valor = get(hObject,'Value');
anglo_imped_C = (angle(imped_C)*180)/pi;
a = num2str(imped_C);

if a ~= ' '
    if valor == 1
        i_C_e = sin(x + anglo_imped_C);
        plot(x,i_C_e,'g');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_C_estrella,'Value',0);
end

% ----------------------------------Aqui empieza el esquema en Triangulo-----------
function selec_corr_A_triangulo_Callback(hObject, eventdata, handles)
global anglo_corr_A_tria x

valor = get(hObject,'Value');
a = num2str(anglo_corr_A_tria);

if a ~= ' '
    if valor == 1
        c_A_t = sin(x + anglo_corr_A_tria);
        plot(x,c_A_t,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_A_triangulo,'Value',0);
end

function selec_corr_B_triangulo_Callback(hObject, eventdata, handles)
global anglo_corr_B_tria x

valor = get(hObject,'Value');
a = num2str(anglo_corr_B_tria);

if a ~= ' '
    if valor == 1
        c_B_t = sin(x + anglo_corr_B_tria);
        plot(x,c_B_t,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_B_triangulo,'Value',0);
end

function selec_corr_C_triangulo_Callback(hObject, eventdata, handles)
global anglo_corr_C_tria x

valor = get(hObject,'Value');
a = num2str(anglo_corr_C_tria);

if a ~= ' '
    if valor == 1
        c_C_t = sin(x + anglo_corr_C_tria);
        plot(x,c_C_t,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_C_triangulo,'Value',0);
end

function selec_corr_AB_triangulo_Callback(hObject, eventdata, handles)
global anglo_corr_AB x
valor = get(hObject,'Value');
a = num2str(anglo_corr_AB);

if a ~= ' '
    if valor == 1
        c_AB_t = sin(x + anglo_corr_AB);
        plot(x,c_AB_t,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_AB_triangulo,'Value',0);
end

function selec_corr_BC_triangulo_Callback(hObject, eventdata, handles)
global anglo_corr_BC x
valor = get(hObject,'Value');
a = num2str(anglo_corr_BC);

if a ~= ' '
    if valor == 1
        c_BC_t = sin(x + anglo_corr_BC);
        plot(x,c_BC_t,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_BC_triangulo,'Value',0);
end

function selec_corr_CA_triangulo_Callback(hObject, eventdata, handles)
global anglo_corr_CA x
valor = get(hObject,'Value');
a = num2str(anglo_corr_CA);

if a ~= ' '
    if valor == 1
        c_CA_t = sin(x + anglo_corr_CA);
        plot(x,c_CA_t,'b');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_corr_CA_triangulo,'Value',0);
end

function selec_volt_AB_triangulo_Callback(hObject, eventdata, handles)
global anglo_AB x
valor = get(hObject,'Value');
a = num2str(anglo_AB);

if a ~= ' '
    if valor == 1
        v_AB_t = sin(x + anglo_AB);
        plot(x,v_AB_t,'r');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_AB_triangulo,'Value',0);
end

function selec_volt_BC_triangulo_Callback(hObject, eventdata, handles)
global anglo_BC x
valor = get(hObject,'Value');
a = num2str(anglo_BC);

if a ~= ' '
    if valor == 1
        v_BC_t = sin(x + anglo_BC);
        plot(x,v_BC_t,'r');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_BC_triangulo,'Value',0);
end

function selec_volt_CA_triangulo_Callback(hObject, eventdata, handles)
global anglo_CA x
valor = get(hObject,'Value');
a = num2str(anglo_CA);

if a ~= ' '
    if valor == 1
        v_CA_t = sin(x + anglo_CA);
        plot(x,v_CA_t,'r');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_volt_CA_triangulo,'Value',0);
end

function selec_imped_B_triangulo_Callback(hObject, eventdata, handles)
global imped_B_tria x
valor = get(hObject,'Value');
anglo_imped_B = (angle(imped_B_tria)*180)/pi;
a = num2str(imped_B_tria);

if a ~= ' '
    if valor == 1
        i_B_t = sin(x + anglo_imped_B);
        plot(x,i_B_t,'g');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_B_triangulo,'Value',0);
end

function selec_imped_A_triangulo_Callback(hObject, eventdata, handles)
global imped_A_tria x
valor = get(hObject,'Value');
anglo_imped_A = (angle(imped_A_tria)*180)/pi;
a = num2str(imped_A_tria);

if a ~= ' '
    if valor == 1
        i_A_t = sin(x + anglo_imped_A);
        plot(x,i_A_t,'g');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_A_triangulo,'Value',0);
end

function selec_imped_C_triangulo_Callback(hObject, eventdata, handles)
global imped_C_tria x
valor = get(hObject,'Value');
anglo_imped_C = (angle(imped_C_tria)*180)/pi;
a = num2str(imped_C_tria);

if a ~= ' '
    if valor == 1
        i_C_t = sin(x + anglo_imped_C);
        plot(x,i_C_t,'g');
        grid on
        hold on
    else
        hold off
        plot(0,0)
    end
else
    warndlg('No tienes este dato','Advertencia');
    set(handles.selec_imped_C_triangulo,'Value',0);
end

function limpiar_Callback(hObject, eventdata, handles)
grid off
hold off
plot(0,0);
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

function cerrar_Callback(hObject, eventdata, handles)
close(gcbf)


%Colores de las graficas:
% Corriente : azul(b)
% Voltaje   : rojo(r)
% Impedancia: verde(g)