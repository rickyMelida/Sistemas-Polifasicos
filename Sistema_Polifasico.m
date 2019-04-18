%---------------- ESQUEMA DEL CIRCUITO EN ESTRELLA----------------%%%
function varargout = Sistema_Polifasico(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sistema_Polifasico_OpeningFcn, ...
                   'gui_OutputFcn',  @Sistema_Polifasico_OutputFcn, ...
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

function Sistema_Polifasico_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

%Todos los voltajes con sus respectivos angulos lo declaramos como variables globales
global volt_A anglo_A volt_B anglo_B volt_C anglo_C

%Todas las corrientes con sus respectivos angulos las declaramos como variables globales
global corr_A anglo_corr_A corr_B anglo_corr_B corr_C anglo_corr_C corr_N anglo_corr_N

%Declaramos globalmente las variables de las impedancias
global imped_A  imped_B imped_C

%Centramos la interfaz en el centro de la pantalla
scrsz = get(0,'ScreenSize');
pos_act = get(gcf,'Position');
xr = scrsz(3)- pos_act(3);
xp = round(xr/2);
yr = scrsz(4) - pos_act(4);
yp = round(yr/2);
set(gcf,'Position', [xp yp pos_act(3) pos_act(4)]);


%Hacemos que nos muestre la figura del esquema en estrella
axes(handles.sist_estrella);
background = imread('Estrella.jpg');
axis off;
hold off
imshow(background);

%Valores pre definidos introducidos inicialmente para ejemplo del mismo

%Tensiones de las lineas A,B y C
set(handles.V_A, 'String', '220');
volt_A = 220;
set(handles.V_B, 'String', '230');
volt_B = 230;
set(handles.V_C, 'String', '231');
volt_C = 231;

%Angulos de desfasajes de las lineas A, B y C
set(handles.A_V_A, 'String', '120');
anglo_A = 120;
set(handles.A_V_B, 'String', '150');
anglo_B = 150;
set(handles.A_V_C, 'String', '90');
anglo_C = 90;

%Impedancias de las diferentes lineas
set(handles.Z_A, 'String', '5+3i');
imped_A = 5+3i;
set(handles.Z_B, 'String', '3-7i');
imped_B = 3-7i;
set(handles.Z_C, 'String', '12+36i');
imped_C = 12+36i;

%Corrientes pre definidas de las tre lineas
set(handles.I_A, 'String', '40');
corr_A = 40;
set(handles.I_B, 'String', '6');
corr_B = 6;
set(handles.I_C, 'String', '30');
corr_C = 30;

%Angulo de desfasajes de las distintas corrientes
set(handles.A_I_A, 'String', '89');
anglo_corr_A = 89;
set(handles.A_I_B, 'String', '78');
anglo_corr_B = 78;
set(handles.A_I_C, 'String', '157');
anglo_corr_C = 157;

%Corriente en Neutro
set(handles.I_N, 'String', '63');
corr_N = 63;
set(handles.A_I_N, 'String','-66');
anglo_corr_N = -66;

function varargout = Sistema_Polifasico_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


function V_A_Callback(hObject, eventdata, handles)

function V_A_CreateFcn(hObject, eventdata, handles)

function A_V_A_Callback(hObject, eventdata, handles)

function A_V_A_CreateFcn(hObject, eventdata, handles)

function I_A_Callback(hObject, eventdata, handles)

function I_A_CreateFcn(hObject, eventdata, handles)

function A_I_A_Callback(hObject, eventdata, handles)

function A_I_A_CreateFcn(hObject, eventdata, handles)

function I_N_Callback(hObject, eventdata, handles)

function I_N_CreateFcn(hObject, eventdata, handles)

function A_I_N_Callback(hObject, eventdata, handles)

function A_I_N_CreateFcn(hObject, eventdata, handles)

function Z_A_Callback(hObject, eventdata, handles)

function Z_A_CreateFcn(hObject, eventdata, handles)

function Z_C_Callback(hObject, eventdata, handles)

function Z_C_CreateFcn(hObject, eventdata, handles)

function Z_B_Callback(hObject, eventdata, handles)

function Z_B_CreateFcn(hObject, eventdata, handles)

function I_C_Callback(hObject, eventdata, handles)

function I_C_CreateFcn(hObject, eventdata, handles)

function A_I_C_Callback(hObject, eventdata, handles)

function A_I_C_CreateFcn(hObject, eventdata, handles)

function I_B_Callback(hObject, eventdata, handles)

function I_B_CreateFcn(hObject, eventdata, handles)

function A_I_B_Callback(hObject, eventdata, handles)

function A_I_B_CreateFcn(hObject, eventdata, handles)

function V_C_Callback(hObject, eventdata, handles)

function V_C_CreateFcn(hObject, eventdata, handles)

function A_V_C_Callback(hObject, eventdata, handles)

function A_V_C_CreateFcn(hObject, eventdata, handles)

function V_B_Callback(hObject, eventdata, handles)

function V_B_CreateFcn(hObject, eventdata, handles)

function A_V_B_Callback(hObject, eventdata, handles)

function A_V_B_CreateFcn(hObject, eventdata, handles)


% -----Funcion para abrrir la ventana del esquema en estrella
function esque_estrella_Callback(hObject, eventdata, handles)
%Devuelve un error en la pantalla
warndlg('Estas en la esquema tipo estrella','Error.');


% -----Funcion para abrrir la ventana del esquema en triangulo
function esque_triangulo_Callback(hObject, eventdata, handles)
close(Sistema_Polifasico);
Sistema_Polifasico_I;

% -----Funcion para mostrar la grfica en fasores
function ver_graf_fas_Callback(hObject, eventdata, handles)
%Llama a la funcion o ventana G_Polar
G_Polar

% -----Funcion para mostrar la grafica en ejes cartesianos
function ver_graf_cart_Callback(hObject, eventdata, handles)
%Llama a la funcion o ventana G_Cartesiano
G_Cartesiano

% -----Funcion para calcular la impedancia ZA
function cal_imped_A_Callback(hObject, eventdata, handles)
global volt_A anglo_A corr_A anglo_corr_A imped_A imped_A_polar imped_A_imag anglo_imped_A
global imped_A_real
volt_A = str2double(get(handles.V_A,'String'));
assignin('base','volt_A',volt_A);

anglo_A = str2double(get(handles.A_V_A,'String'));
assignin('base','anglo_A',anglo_A);

corr_A = str2double(get(handles.I_A,'String'));
assignin('base','corr_A',corr_A);

anglo_corr_A = str2double(get(handles.A_I_A,'String'));
assignin('base','anglo_corr_A',anglo_corr_A);

if isnan(volt_A)
    warndlg('Falta el valor del Voltaje A para realizar el calculo','Advertencia');
elseif isnan(anglo_A) 
    warndlg('Falta el valor del Angulo del Voltaje A para realizar el calculo','Advertencia');
elseif isnan(corr_A)
    warndlg('Falta el valor de la Corriente A para realizar el calculo','Advertencia');
elseif isnan(anglo_corr_A)
    warndlg('Falta valor del Angulo de la Corriente A para realizar el calculo', 'Advertencia');
else
    imped_A_polar = volt_A/corr_A;  
    anglo_imped_A = anglo_A - anglo_corr_A;

    imped_A_real = round((cos((anglo_imped_A*3.14)/180))*imped_A_polar);
    imped_A_imag = round((sin((anglo_imped_A*3.14)/180))*imped_A_polar);

    imped_A=round(complex(imped_A_real,imped_A_imag));
    assignin('base','imped_A',imped_A);
    set(handles.Z_A,'String',num2str(imped_A));
end
% -----Funcion para calcular la impedancia ZB
function cal_imped_B_Callback(hObject, eventdata, handles)
global volt_B anglo_B corr_B anglo_corr_B imped_B imped_B_polar imped_B_imag anglo_imped_B
global imped_B_real
volt_B = str2double(get(handles.V_B,'String'));
assignin('base','volt_B',volt_B);

anglo_B = str2double(get(handles.A_V_B,'String'));
assignin('base','anglo_B',anglo_B);

corr_B = str2double(get(handles.I_B,'String'));
assignin('base','corr_B',corr_B);

anglo_corr_B = str2double(get(handles.A_I_B,'String'));
assignin('base','anglo_corr_B',anglo_corr_B);

if isnan(volt_B)
    warndlg('Falta el valor del Voltaje B para poder realizar el calculo.','Advertencia');
elseif  isnan(anglo_B)
    warndlg('Falta el valor del Angulo del Voltaje B para poder realizar el calculo.','Advertencia');
elseif isnan(corr_B) 
    warndlg('Falta el valor de la Coriente A para poder realizar el calculo.','Advertencia');
elseif isnan(anglo_corr_B)
    warndlg('Falta el valor del Angulo de la Coriente A para poder realizar el calculo.','Advertencia');
else
    imped_B_polar = volt_B/corr_B;
    anglo_imped_B = anglo_B - anglo_corr_B;

    imped_B_real = round((cos((anglo_imped_B*3.14)/180))*imped_B_polar);
    imped_B_imag = round((sin((anglo_imped_B*3.14)/180))*imped_B_polar);

    imped_B = round(complex(imped_B_real,imped_B_imag));
    assignin('base','imped_B',imped_B);

    set(handles.Z_B,'String',num2str(imped_B));
end
% -----Funcion para calcular la impedancia ZC
function cal_imped_C_Callback(hObject, eventdata, handles)
global volt_C anglo_C corr_C anglo_corr_C imped_C imped_C_polar imped_C_imag anglo_imped_C
global imped_C_real
volt_C = str2double(get(handles.V_C,'String'));
assignin('base','volt_C',volt_C);

anglo_C = str2double(get(handles.A_V_C,'String'));
assignin('base','anglo_C',anglo_C);

corr_C = str2double(get(handles.I_C,'String'));
assignin('base','corr_C',corr_C);

anglo_corr_C = str2double(get(handles.A_I_C,'String'));
assignin('base','anglo_corr_C',anglo_corr_C);

if isnan(volt_C)
    warndlg('Falta el valor del Voltaje C para poder realizar el calculo.','Advertencia');
elseif  isnan(anglo_C)
    warndlg('Falta el valor del Angulo del Voltaje C para poder realizar el calculo.','Advertencia');
elseif isnan(corr_C) 
    warndlg('Falta el valor de la Coriente C para poder realizar el calculo.','Advertencia');
elseif isnan(anglo_corr_C)
    warndlg('Falta el valor del Angulo de la Coriente C para poder realizar el calculo.','Advertencia');
else
    imped_C_polar = volt_C/corr_C;
    anglo_imped_C = anglo_C - anglo_corr_C;

    imped_C_real = round((cos((anglo_imped_C*3.14)/180))*imped_C_polar);
    imped_C_imag = round((sin((anglo_imped_C*3.14)/180))*imped_C_polar);

    imped_C = round(complex(imped_C_real,imped_C_imag));
    assignin('base','imped_C',imped_C);

    set(handles.Z_C,'String',num2str(imped_C));
end

% -----Funcion para calcular el voltaje VA
function cal_volt_A_Callback(hObject, eventdata, handles) 
global volt_A anglo_A corr_A anglo_corr_A imped_A imped_A_polar anglo_imped_A
corr_A = str2double(get(handles.I_A,'String'));
assignin('base','corr_A',corr_A);

anglo_corr_A = str2double(get(handles.A_I_A,'String'));
assignin('base','anglo_corr_A',anglo_corr_A);

imped_A = str2double(get(handles.Z_A,'String'));
assignin('base','imped_A',imped_A);

if isnan(corr_A)
    warndlg('Falta el valor de la Corriente A para poder realizar el calculo.','Advertencia');
elseif isnan(anglo_corr_A) 
    warndlg('Falta el valor del Angulo de la Corriente A para poder realizar el calculo.','Advertencia');
elseif isnan(imped_A) 
    warndlg('Falta el valor de la Impedancia A para poder realizar el calculo.','Advertencia');
else
    imped_A_polar = abs(imped_A);
    anglo_imped_A = round((angle(imped_A)*180)/3.14);

    volt_A = round(imped_A_polar * corr_A);
    assignin('base','volt_A',volt_A);
    anglo_A = anglo_corr_A + anglo_imped_A;
    assignin('base','anglo_A',anglo_A);

    set(handles.V_A,'String',num2str(volt_A));
    set(handles.A_V_A,'String',num2str(anglo_A));
end
% -----Funcion para calcular el voltaje VB
function cal_volt_B_Callback(hObject, eventdata, handles)
global volt_B anglo_B corr_B anglo_corr_B imped_B imped_B_polar anglo_imped_B
corr_B = str2double(get(handles.I_B,'String'));
assignin('base','corr_B',corr_B);

anglo_corr_B = str2double(get(handles.A_I_B,'String'));
assignin('base','anglo_corr_B',anglo_corr_B);

imped_B = str2double(get(handles.Z_B,'String'));
assignin('base','imped_B',imped_B);

if isnan(corr_B)
    warndlg('Falta el valor de la Corriente B para poder realizar el calculo.','Advertencia');
elseif isnan(anglo_corr_B) 
    warndlg('Falta el valor del Angulo de la Corriente B para poder realizar el calculo.','Advertencia');
elseif isnan(imped_B) 
    warndlg('Falta el valor de la Impedancia B para poder realizar el calculo.','Advertencia');
else
    imped_B_polar = abs(imped_B);
    anglo_imped_B = round((angle(imped_B)*180)/3.14);

    volt_B = round(imped_B_polar * corr_B);
    assignin('base','volt_B',volt_B);
    anglo_B = anglo_corr_B + anglo_imped_B;
    assignin('base','anglo_B',anglo_B);

    set(handles.V_B,'String',num2str(volt_B));
    set(handles.A_V_B,'String',num2str(anglo_B));
end
% -----Funcion para calcular del voltaje VC
function cal_volt_C_Callback(hObject, eventdata, handles)
global volt_C anglo_C corr_C anglo_corr_C imped_C imped_C_polar anglo_imped_C
corr_C = str2double(get(handles.I_C,'String'));
assignin('base','corr_C',corr_C);

anglo_corr_C = str2double(get(handles.A_I_C,'String'));
assignin('base','anglo_corr_C',anglo_corr_C);

imped_C = str2double(get(handles.Z_C,'String'));
assignin('base','imped_C',imped_C);

if isnan(corr_C)
    warndlg('Falta el valor de la Corriente C para poder realizar el calculo.','Advertencia');
elseif isnan(anglo_corr_C) 
    warndlg('Falta el valor del Angulo de la Corriente C para poder realizar el calculo.','Advertencia');
elseif isnan(imped_C) 
    warndlg('Falta el valor de la Impedancia C para poder realizar el calculo.','Advertencia');
else
    imped_C_polar = abs(imped_C);
    anglo_imped_C = round((angle(imped_C)*180)/3.14);

    volt_C = round(imped_C_polar * corr_C);
    assignin('base','volt_C',volt_C);
    anglo_C = anglo_corr_C + anglo_imped_C;
    assignin('base','anglo_C',anglo_C);

    set(handles.V_C,'String',num2str(volt_C));
    set(handles.A_V_C,'String',num2str(anglo_C));
end
% -----Funcion para calcular la corriente IA
function cal_corr_A_Callback(hObject, eventdata, handles)
global volt_A anglo_A corr_A anglo_corr_A imped_A imped_A_polar anglo_imped_A
volt_A = str2double(get(handles.V_A,'String'));
assignin('base','volt_A',volt_A);

anglo_A = str2double(get(handles.A_V_A,'String'));
assignin('base','anglo_A',anglo_A);

imped_A = str2double(get(handles.Z_A,'String'));
assignin('base','imped_A',imped_A);

if isnan(volt_A)
    warndlg('Falta el valor del Voltaje A para poder realizar el calculo.','Advertencia');
elseif isnan(anglo_A) 
    warndlg('Falta el valor del Angulo del Voltaje A para poder realizar el calculo.','Advertencia');
elseif isnan(imped_A)
    warndlg('Falta el valor de la Impedancia A para poder realizar el calculo.','Advertencia');
else
    imped_A_polar = abs(imped_A);
    anglo_imped_A = round((angle(imped_A)*180)/3.14);

    corr_A = round(volt_A/imped_A_polar);
    assignin('base','corr_A',corr_A);
    anglo_corr_A = anglo_A - anglo_imped_A;
    assignin('base','anglo_corr_A',anglo_corr_A);

    set(handles.I_A,'String',num2str(corr_A));
    set(handles.A_I_A,'String',num2str(anglo_corr_A));
end
% -----Funcion para calcular la corriente IB
function cal_corr_B_Callback(hObject, eventdata, handles)
global volt_B anglo_B corr_B anglo_corr_B imped_B imped_B_polar anglo_imped_B
volt_B = str2double(get(handles.V_B,'String'));
assignin('base','volt_B',volt_B);

anglo_B = str2double(get(handles.A_V_B,'String'));
assignin('base','anglo_B',anglo_B);

imped_B = str2double(get(handles.Z_B,'String'));
assignin('base','imped_B',imped_B);

if isnan(volt_B)
    warndlg('Falta el valor del Voltaje B para poder realizar el calculo.','Advertencia');
elseif isnan(anglo_B) 
    warndlg('Falta el valor del Angulo del Voltaje B para poder realizar el calculo.','Advertencia');
elseif isnan(imped_B)
    warndlg('Falta el valor de la Impedancia B para poder realizar el calculo.','Advertencia');
else
    imped_B_polar = abs(imped_B);
    anglo_imped_B = round((angle(imped_B)*180)/3.14);

    corr_B = round(volt_B/imped_B_polar);
    assignin('base','corr_B',corr_B);
    anglo_corr_B = anglo_B - anglo_imped_B;
    assignin('base','anglo_corr_B',anglo_corr_B);

    set(handles.I_B,'String',num2str(corr_B));
    set(handles.A_I_B,'String',num2str(anglo_corr_B));
end
% -----Funcion para calcular la corriente IC
function cal_corr_C_Callback(hObject, eventdata, handles)
global volt_C anglo_C corr_C anglo_corr_C imped_C imped_C_polar anglo_imped_C
volt_C = str2double(get(handles.V_C,'String'));
assignin('base','volt_C',volt_C);

anglo_C = str2double(get(handles.A_V_C,'String'));
assignin('base','anglo_C',anglo_C);

imped_C = str2double(get(handles.Z_C,'String'));
assignin('base','imped_C',imped_C);

if isnan(volt_C)
    warndlg('Falta el valor del Voltaje C para poder realizar el calculo.','Advertencia');
elseif isnan(anglo_C) 
    warndlg('Falta el valor del Angulo del Voltaje C para poder realizar el calculo.','Advertencia');
elseif isnan(imped_C)
    warndlg('Falta el valor de la Impedancia C para poder realizar el calculo.','Advertencia');
else
    imped_C_polar = abs(imped_C);
    anglo_imped_C = round((angle(imped_C)*180)/3.14);

    corr_C = round(volt_C/imped_C_polar);
    assignin('base','corr_C',corr_C);
    anglo_corr_C = anglo_C - anglo_imped_C;
    assignin('base','anglo_corr_C',anglo_corr_C);

    set(handles.I_C,'String',num2str(corr_C));
    set(handles.A_I_C,'String',num2str(anglo_corr_C));
end
% -----Funcion para calcular la corriente IN------------------%
function cal_corr_N_Callback(hObject, eventdata, handles)
global imped_A imped_B imped_C corr_A anglo_corr_A corr_B anglo_corr_B corr_C anglo_corr_C 
global corr_A_complejo corr_B_complejo corr_C_complejo corr_N anglo_corr_N

corr_A = str2double(get(handles.I_A,'String'));
anglo_corr_A = str2double(get(handles.A_I_A, 'String'));

corr_B = str2double(get(handles.I_B,'String'));
anglo_corr_B = str2double(get(handles.A_I_B, 'String'));

corr_C = str2double(get(handles.I_C,'String'));
anglo_corr_C = str2double(get(handles.A_I_C, 'String'));

if isnan(corr_A)
    warndlg('Falta el valor de la Corriente A para realizar el calculo.','Advertencia');
elseif isnan(anglo_corr_A)
    warndlg('Falta el valor del Angulo de Corriente A para realizar el calculo.','Advertencia');
elseif isnan(corr_B)
    warndlg('Falta el valor de la Corriente B para realizar el calculo.','Advertencia');
elseif isnan(anglo_corr_B)
    warndlg('Falta el valor del Angulo de la Corriente B para realizar el calculo.','Advertencia');
elseif isnan(corr_C)
    warndlg('Falta el valor de la Corriente C para realizar el calculo.','Advertencia');
elseif isnan(anglo_corr_C)
     warndlg('Falta el valor del Angulo de la Corriente C para realizar el calculo.','Advertencia');
else    
    if imped_A == imped_B & imped_C==imped_A
        set(handles.Z_A,'BackgroundColor','green');
        set(handles.Z_B,'BackgroundColor','green');
        set(handles.Z_C,'BackgroundColor','green');
        set(handles.I_N,'String','0');
        set(handles.A_I_N,'String','0');
    else
        %---Convertimos los valores de las corrientes que estan en polar a forma rectangular
    
        %corriente en A------%
        corr_A_real = round((cos((anglo_corr_A*3.14)/180))*corr_A,1);
        corr_A_imaginario = round((sin((anglo_corr_A*3.14)/180))*corr_A,1);

        corr_A_complejo = complex(corr_A_real, corr_A_imaginario);
    
        %corriente en B------%
        corr_B_real = round((cos((anglo_corr_B*3.14)/180))*corr_B,1);
        corr_B_imaginario = round((sin((anglo_corr_B*3.14)/180))*corr_B,1);

        corr_B_complejo = complex(corr_B_real,corr_B_imaginario);
    
        %corriente en C------%
        corr_C_real = round((cos((anglo_corr_C*3.14)/180))*corr_C,1);
        corr_C_imaginario = round((sin((anglo_corr_C*3.14)/180))*corr_C,1);

        corr_C_complejo = complex(corr_C_real,corr_C_imaginario);
    
        corr_N_complejo = -(corr_A_complejo + corr_B_complejo + corr_C_complejo);
        
        corr_N = round(abs(corr_N_complejo));
        anglo_corr_N = round((angle(corr_N_complejo)*180)/3.14);
        
        
        set(handles.I_N, 'String', num2str(corr_N));
        set(handles.A_I_N, 'String', num2str(anglo_corr_N));
        
    end
end

% --------------------------------------------------------------------
function limpiar_Callback(hObject, eventdata, handles)
set(handles.I_A,'String',' ');
set(handles.A_I_A,'String',' ');
set(handles.I_B,'String',' ');
set(handles.A_I_B,'String',' ');
set(handles.I_C,'String',' ');
set(handles.A_I_C,'String',' ');
set(handles.I_N,'String',' ');
set(handles.A_I_N,'String',' ');
set(handles.V_A,'String',' ');
set(handles.A_V_A,'String',' ');
set(handles.V_B,'String',' ');
set(handles.A_V_B,'String',' ');
set(handles.V_C,'String',' ');
set(handles.A_V_C,'String',' ');
set(handles.Z_A,'String',' ');
set(handles.Z_B,'String',' ');
set(handles.Z_C,'String',' ');
set(handles.Z_A,'BackgroundColor','black');
set(handles.Z_B,'BackgroundColor','black');
set(handles.Z_C,'BackgroundColor','black');
% --------------------------------------------------------------------
function salir_Callback(hObject, eventdata, handles)
close(gcbf)
clear all;
close all;



% --------------------------------------------------------------------
function rect_a_polar_Callback(hObject, eventdata, handles)
Conversion_Rect_A_Polar

% --------------------------------------------------------------------
function polar_a_rect_Callback(hObject, eventdata, handles)
Conversion_Polar_A_Rect

% --------------------------------------------------------------------
function acercaDe_Callback(hObject, eventdata, handles)

uiwait(warndlg({'Sistemas Polifasicos I';'Autor: Ricardo Mélida';'Derechos Reservados - 2017' } ,'Acerca De','modal'));
