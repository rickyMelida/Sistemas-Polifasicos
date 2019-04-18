%---------------- ESQUEMA DEL CIRCUITO EN ESTRELLA----------------%%%
function varargout = Sistema_Polifasico_I(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sistema_Polifasico_I_OpeningFcn, ...
                   'gui_OutputFcn',  @Sistema_Polifasico_I_OutputFcn, ...
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


function Sistema_Polifasico_I_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);

%Definimos las variables de las corrientes de cada linea y sus angulos de forma global
global corr_A_tria anglo_corr_A_tria corr_B_tria anglo_corr_B_tria corr_C_tria anglo_corr_C_tria

%Definimos las variables de las corrientes de las linea y sus angulos de forma global
global corr_AB anglo_corr_AB corr_BC anglo_corr_BC corr_CA anglo_corr_CA

%Definimos las variables de las tensiones de lineas como globales
global volt_AB anglo_AB volt_BC anglo_BC volt_CA anglo_CA

global imped_A_tria imped_B_tria imped_C_tria

%Centramos la interfaz en el centro de la pantalla
scrsz = get(0,'ScreenSize');
pos_act = get(gcf,'Position');
xr = scrsz(3)- pos_act(3);
xp = round(xr/2);
yr = scrsz(4) - pos_act(4);
yp = round(yr/2);
set(gcf,'Position', [xp yp pos_act(3) pos_act(4)]);

%Hacemos que nos muestre la figura del esquema en triangulo
axes(handles.sist_triangulo);
background = imread('Triangulo.jpg');
axis off;
hold off;
imshow(background);

%Tensiones  predefinidas de las tres lineas 
set(handles.V_AB, 'String', '240');
volt_AB  = 240;
set(handles.V_BC, 'String', '240');
volt_BC = 240;
set(handles.V_CA, 'String', '240');
volt_CA = 240;

%Angulos de desfasajes de las tres diferentes lineas
set(handles.A_V_AB, 'String', '120');
anglo_AB = 120;
set(handles.A_V_BC, 'String', '0');
anglo_BC = 0; 
set(handles.A_V_CA, 'String', '240');
anglo_CA = 240;

%Impedancias de las tres lineas en triangulo
set(handles.Z_A, 'String', '10');
imped_A_tria = 10;
set(handles.Z_B, 'String', '8.7+5i');
imped_B_tria = 8.7+5i;
set(handles.Z_C, 'String', '13-7.5i');
imped_C_tria = 13-7.5i;

%Corrintes predefinidas entre dos fases
set(handles.I_AB, 'String', '24');
corr_AB = 24;
set(handles.I_BC, 'String', '24');
corr_BC = 24;
set(handles.I_CA, 'String', '16');
corr_CA = 16;

%Angulo de desfasajes entre las distintas corriente de lineas
set(handles.A_I_AB, 'String', '120');
anglo_corr_AB = 120;
set(handles.A_I_BC, 'String', '-30');
anglo_corr_BC = -30;
set(handles.A_I_CA, 'String', '270');
anglo_corr_CA = 270;

%Corrintes en cada linea
set(handles.I_A, 'String', '39');
corr_A_tria = 39;
set(handles.I_B, 'String', '47');
corr_B_tria = 47;
set(handles.I_C, 'String', '21');
corr_C_tria = 21;

%Angulos de las corrintes en cada linea
set(handles.A_I_A, 'String', '108');
anglo_corr_A_tria = 108;
set(handles.A_I_B, 'String', '-45');
anglo_corr_B_tria = -45;
set(handles.A_I_C, 'String', '-169');
anglo_corr_C_tria = -169;

function varargout = Sistema_Polifasico_I_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


function I_A_Callback(hObject, eventdata, handles)

function I_A_CreateFcn(hObject, eventdata, handles)

function A_I_A_Callback(hObject, eventdata, handles)

function A_I_A_CreateFcn(hObject, eventdata, handles)

function Z_A_Callback(hObject, eventdata, handles)

function Z_A_CreateFcn(hObject, eventdata, handles)

function V_AB_Callback(hObject, eventdata, handles)

function V_AB_CreateFcn(hObject, eventdata, handles)

function A_V_AB_Callback(hObject, eventdata, handles)

function A_V_AB_CreateFcn(hObject, eventdata, handles)

function V_BC_Callback(hObject, eventdata, handles)

function V_BC_CreateFcn(hObject, eventdata, handles)

function A_V_BC_Callback(hObject, eventdata, handles)

function A_V_BC_CreateFcn(hObject, eventdata, handles)

function V_CA_Callback(hObject, eventdata, handles)

function V_CA_CreateFcn(hObject, eventdata, handles)

function A_V_CA_Callback(hObject, eventdata, handles)

function A_V_CA_CreateFcn(hObject, eventdata, handles)

function I_C_Callback(hObject, eventdata, handles)

function I_C_CreateFcn(hObject, eventdata, handles)

function A_I_C_Callback(hObject, eventdata, handles)

function A_I_C_CreateFcn(hObject, eventdata, handles)

function I_B_Callback(hObject, eventdata, handles)

function I_B_CreateFcn(hObject, eventdata, handles)

function A_I_B_Callback(hObject, eventdata, handles)

function A_I_B_CreateFcn(hObject, eventdata, handles)

function Z_C_Callback(hObject, eventdata, handles)

function Z_C_CreateFcn(hObject, eventdata, handles)

function Z_B_Callback(hObject, eventdata, handles)

function Z_B_CreateFcn(hObject, eventdata, handles)

function I_BC_Callback(hObject, eventdata, handles)

function I_BC_CreateFcn(hObject, eventdata, handles)

function A_I_BC_Callback(hObject, eventdata, handles)

function A_I_BC_CreateFcn(hObject, eventdata, handles)

function I_AB_Callback(hObject, eventdata, handles)

function I_AB_CreateFcn(hObject, eventdata, handles)

function A_I_AB_Callback(hObject, eventdata, handles)

function A_I_AB_CreateFcn(hObject, eventdata, handles)

function I_CA_Callback(hObject, eventdata, handles)

function I_CA_CreateFcn(hObject, eventdata, handles)

function A_I_CA_Callback(hObject, eventdata, handles)

function A_I_CA_CreateFcn(hObject, eventdata, handles)


% --------------------------------------------------------------------
function esque_estrella_Callback(hObject, eventdata, handles)
close(Sistema_Polifasico_I)
Sistema_Polifasico

% --------------------------------------------------------------------
function esque_triangulo_Callback(hObject, eventdata, handles)
warndlg('Estas en la esquema tipo triangulo','Error.');

% --------------------------------------------------------------------
function ver_graf_fasor_Callback(hObject, eventdata, handles)
G_Polar

% --------------------------------------------------------------------
function ver_graf_cart_Callback(hObject, eventdata, handles)
G_Cartesiano


% --------------------------------------------------------------------
function cal_imped_A_Callback(hObject, eventdata, handles)
global volt_AB anglo_AB corr_AB anglo_corr_AB imped_A_tria imped_A_polar imped_A_imag anglo_imped_A
global imped_A_real

volt_AB = str2double(get(handles.V_AB,'String'));
anglo_AB = str2double(get(handles.A_V_AB,'String'));
corr_AB = str2double(get(handles.I_AB,'String'));
anglo_corr_AB = str2double(get(handles.A_I_AB,'String'));

%if isnan(volt_AB) || isnan(anglo_AB) || isnan(corr_AB) || isnan(anglo_corr_AB)
if isnan(volt_AB) || isnan(anglo_AB) || isnan(corr_AB) || isnan(anglo_corr_AB)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','volt_AB',volt_AB);
    assignin('base','anglo_AB',anglo_AB);
    assignin('base','corr_AB',corr_AB);
    assignin('base','anglo_corr_AB',anglo_corr_AB);

    imped_A_polar = volt_AB/corr_AB;
    anglo_imped_A = anglo_AB - anglo_corr_AB;

    imped_A_real = round((cos((anglo_imped_A*3.14)/180))*imped_A_polar);
    imped_A_imag = round((sin((anglo_imped_A*3.14)/180))*imped_A_polar);

    imped_A_tria=round(complex(imped_A_real,imped_A_imag));
    assignin('base','imped_A_tria',imped_A_tria);
    set(handles.Z_A,'String',num2str(imped_A_tria));
end

% --------------------------------------------------------------------
function cal_imped_B_Callback(hObject, eventdata, handles)
global volt_BC anglo_BC corr_BC anglo_corr_BC imped_B_tria imped_B_polar imped_B_imag anglo_imped_B
global imped_B_real

volt_BC = str2double(get(handles.V_BC,'String'));
anglo_BC = str2double(get(handles.A_V_BC,'String'));
corr_BC = str2double(get(handles.I_BC,'String'));
anglo_corr_BC = str2double(get(handles.A_I_BC,'String'));


if isnan(volt_BC) || isnan(anglo_BC) || isnan(corr_BC) || isnan(anglo_corr_BC)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','volt_BC',volt_BC);
    assignin('base','anglo_BC',anglo_BC);
    assignin('base','corr_BC',corr_BC);
    assignin('base','anglo_corr_BC',anglo_corr_BC);

    imped_B_polar = volt_BC/corr_BC;
    anglo_imped_B = anglo_BC - anglo_corr_BC;

    imped_B_real = round((cos((anglo_imped_B*3.14)/180))*imped_B_polar);
    imped_B_imag = round((sin((anglo_imped_B*3.14)/180))*imped_B_polar);

    imped_B_tria = round(complex(imped_B_real,imped_B_imag));
    assignin('base','imped_B_tria',imped_B_tria);

    set(handles.Z_B,'String',num2str(imped_B_tria));
end

% --------------------------------------------------------------------
function cal_imped_C_Callback(hObject, eventdata, handles)
global volt_CA anglo_CA corr_CA anglo_corr_CA imped_C_tria imped_C_polar imped_C_imag anglo_imped_C
global imped_C_real

volt_CA = str2double(get(handles.V_CA,'String'));
anglo_CA = str2double(get(handles.A_V_CA,'String'));
corr_CA = str2double(get(handles.I_CA,'String'));
anglo_corr_CA = str2double(get(handles.A_I_CA,'String'));

if isnan(volt_CA) || isnan(anglo_CA) || isnan(corr_CA) || isnan(anglo_corr_CA)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','volt_CA',volt_CA);
    assignin('base','anglo_CA',anglo_CA);
    assignin('base','corr_CA',corr_CA);
    assignin('base','anglo_corr_CA',anglo_corr_CA);

    imped_C_polar = volt_CA/corr_CA;
    anglo_imped_C = anglo_CA - anglo_corr_CA;

    imped_C_real = round((cos((anglo_imped_C*3.14)/180))*imped_C_polar);
    imped_C_imag = round((sin((anglo_imped_C*3.14)/180))*imped_C_polar);

    imped_C_tria = round(complex(imped_C_real,imped_C_imag));
    assignin('base','imped_C_tria',imped_C_tria);
    
    set(handles.Z_C,'String',num2str(imped_C_tria));
end

% --------------------------------------------------------------------
function cal_volt_AB_Callback(hObject, eventdata, handles)
global volt_AB anglo_AB corr_AB anglo_corr_AB imped_A_tria imped_A_polar anglo_imped_A

corr_AB = str2double(get(handles.I_AB,'String'));
anglo_corr_AB = str2double(get(handles.A_I_AB,'String'));
imped_A_tria = str2double(get(handles.Z_A,'String'));

if isnan(corr_AB) || isnan(anglo_corr_AB) || isnan(imped_A_tria)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','corr_AB',corr_AB);
    assignin('base','anglo_corr_AB',anglo_corr_AB);
    assignin('base','imped_A_tria',imped_A_tria);

    imped_A_polar = abs(imped_A_tria);
    anglo_imped_A = round((angle(imped_A_tria)*180)/3.14);

    volt_AB = round(imped_A_polar * corr_AB);
    assignin('base','volt_AB',volt_AB);
    anglo_AB = anglo_corr_AB + anglo_imped_A;
    assignin('base','anglo_AB',anglo_AB);

    set(handles.V_AB,'String',num2str(volt_AB));
    set(handles.A_V_AB,'String',num2str(anglo_AB));
end

% --------------------------------------------------------------------
function cal_volt_BC_Callback(hObject, eventdata, handles)
global volt_BC anglo_BC corr_BC anglo_corr_BC imped_B_tria imped_B_polar anglo_imped_B

corr_BC = str2double(get(handles.I_BC,'String'));
anglo_corr_BC = str2double(get(handles.A_I_BC,'String'));
imped_B_tria = str2double(get(handles.Z_B,'String'));

if isnan(corr_BC) || isnan(anglo_corr_BC) || isnan(imped_B_tria)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','corr_BC',corr_BC);
    assignin('base','anglo_corr_BC',anglo_corr_BC);
    assignin('base','imped_B_tria',imped_B_tria);

    imped_B_polar = abs(imped_B_tria);
    anglo_imped_B = round((angle(imped_B_tria)*180)/3.14);

    volt_BC = round(imped_B_polar * corr_BC);
    assignin('base','volt_BC',volt_BC);
    anglo_BC = anglo_corr_BC + anglo_imped_B;
    assignin('base','anglo_BC',anglo_BC);

    set(handles.V_BC,'String',num2str(volt_BC));
    set(handles.A_V_BC,'String',num2str(anglo_BC));
end
% --------------------------------------------------------------------
function cal_volt_CA_Callback(hObject, eventdata, handles)
global volt_CA anglo_CA corr_CA anglo_corr_CA imped_C_tria imped_C_polar anglo_imped_C

corr_CA = str2double(get(handles.I_CA,'String'));
anglo_corr_CA = str2double(get(handles.A_I_CA,'String'));
imped_C_tria = str2double(get(handles.Z_C,'String'));

if isnan(corr_CA) || isnan(anglo_corr_CA) || isnan(imped_C_tria)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','corr_CA',corr_CA);
    assignin('base','anglo_corr_CA',anglo_corr_CA);
    assignin('base','imped_C_tria',imped_C_tria);

    imped_C_polar = abs(imped_C_tria);
    anglo_imped_C = round((angle(imped_C_tria)*180)/3.14);

    volt_CA = round(imped_C_polar * corr_CA);
    assignin('base','volt_CA',volt_CA);
    anglo_CA = anglo_corr_CA + anglo_imped_C;
    assignin('base','anglo_CA',anglo_CA);

    set(handles.V_CA,'String',num2str(volt_CA));
    set(handles.A_V_CA,'String',num2str(anglo_CA));
end

% --------------------------------------------------------------------
function cal_corr_A_Callback(hObject, eventdata, handles)
global corr_AB corr_A_tria anglo_corr_AB anglo_corr_CA anglo_corr_A_tria corr_AB_imag corr_AB_real
global corr_CA_real corr_CA_imag corr_AB_comp corr_CA_comp corr_A_comp corr_CA

corr_AB = str2double(get(handles.I_AB,'String'));
anglo_corr_AB = str2double(get(handles.A_I_AB,'String'));
corr_CA = str2double(get(handles.I_CA,'String'));
anglo_corr_CA = str2double(get(handles.A_I_CA,'String'));

if isnan(corr_AB) || isnan(anglo_corr_AB) || isnan(corr_CA) || isnan(anglo_corr_CA)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','corr_AB',corr_AB);
    assignin('base','anglo_corr_AB',anglo_corr_AB);
    assignin('base','corr_CA',corr_CA);
    assignin('base','anglo_corr_CA',anglo_corr_CA);

    corr_AB_real = round((cos((anglo_corr_AB*3.14)/180))*corr_AB);
    corr_AB_imag = round((sin((anglo_corr_AB*3.14)/180))*corr_AB);

    corr_CA_real = round((cos((anglo_corr_CA*3.14)/180))*corr_CA);
    corr_CA_imag = round((sin((anglo_corr_CA*3.14)/180))*corr_CA);

    corr_AB_comp = complex(corr_AB_real,corr_AB_imag);
    corr_CA_comp = (complex(corr_CA_real,corr_CA_imag))*(-1);

    corr_A_comp = corr_AB_comp + corr_CA_comp;

    corr_A_tria = round(abs(corr_A_comp));
    anglo_corr_A_tria = round((angle(corr_A_comp)*180)/3.14);
    assignin('base','corr_A_tria',corr_A_tria);
    assignin('base','anglo_corr_A_tria',anglo_corr_A_tria);

    set(handles.I_A,'String',num2str(corr_A_tria));
    set(handles.A_I_A,'String',num2str(anglo_corr_A_tria));
end

% --------------------------------------------------------------------
function cal_corr_B_Callback(hObject, eventdata, handles)
global corr_AB corr_BC anglo_corr_BC anglo_corr_AB corr_BC_imag corr_BC_real corr_B_tria anglo_corr_B_tria
global corr_AB_real corr_AB_imag corr_B_comp corr_BC_comp corr_AB_comp 

corr_AB = str2double(get(handles.I_AB,'String'));
anglo_corr_AB = str2double(get(handles.A_I_AB,'String'));
corr_BC = str2double(get(handles.I_BC,'String'));
anglo_corr_BC = str2double(get(handles.A_I_BC,'String'));

if isnan(corr_AB) || isnan(anglo_corr_AB) || isnan(corr_BC) || isnan(anglo_corr_BC)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','corr_AB',corr_AB);
    assignin('base','anglo_corr_AB',anglo_corr_AB);
    assignin('base','corr_CA',corr_BC);
    assignin('base','anglo_corr_CA',anglo_corr_BC);
    
    corr_AB_real = round((cos((anglo_corr_AB*3.14)/180))*corr_AB);
    corr_AB_imag = round((sin((anglo_corr_AB*3.14)/180))*corr_AB);

    corr_BC_real = round((cos((anglo_corr_BC*3.14)/180))*corr_BC);
    corr_BC_imag = round((sin((anglo_corr_BC*3.14)/180))*corr_BC);

    corr_AB_comp = (complex(corr_AB_real,corr_AB_imag))*(-1);
    corr_BC_comp = complex(corr_BC_real,corr_BC_imag);

    corr_B_comp = corr_AB_comp + corr_BC_comp;

    corr_B_tria = round(abs(corr_B_comp));
    anglo_corr_B_tria = round((angle(corr_B_comp)*180)/3.14);
    assignin('base','corr_B_tria',corr_B_tria);
    assignin('base','anglo_corr_B_tria',anglo_corr_B_tria);

    set(handles.I_B,'String',num2str(corr_B_tria));
    set(handles.A_I_B,'String',num2str(anglo_corr_B_tria));
end

% --------------------------------------------------------------------
function cal_corr_C_Callback(hObject, eventdata, handles)
global corr_CA corr_C_tria anglo_corr_CA  anglo_corr_C_tria corr_CA_imag corr_CA_real anglo_corr_BC
global corr_BC_real corr_BC_imag corr_CA_comp corr_C_comp corr_BC_comp corr_BC
corr_CA = str2double(get(handles.I_CA,'String'));
anglo_corr_CA = str2double(get(handles.A_I_CA,'String'));
corr_BC = str2double(get(handles.I_BC,'String'));
anglo_corr_BC = str2double(get(handles.A_I_BC,'String'));

if isnan(corr_CA) || isnan(anglo_corr_CA) || isnan(corr_BC) || isnan(anglo_corr_BC)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','corr_AB',corr_CA);
    assignin('base','anglo_corr_AB',anglo_corr_CA);
    assignin('base','corr_CA',corr_BC);
    assignin('base','anglo_corr_CA',anglo_corr_BC);

    corr_CA_real = round((cos((anglo_corr_CA*3.14)/180))*corr_CA);
    corr_CA_imag = round((sin((anglo_corr_CA*3.14)/180))*corr_CA);

    corr_BC_real = round((cos((anglo_corr_BC*3.14)/180))*corr_BC);
    corr_BC_imag = round((sin((anglo_corr_BC*3.14)/180))*corr_BC);

    corr_CA_comp = complex(corr_CA_real,corr_CA_imag);
    corr_BC_comp = (complex(corr_BC_real,corr_BC_imag))*(-1);

    corr_C_comp = corr_CA_comp + corr_BC_comp;

    corr_C_tria = round(abs(corr_C_comp));
    anglo_corr_C_tria = round((angle(corr_C_comp)*180)/3.14);
    assignin('base','corr_C_tria',corr_C_tria);
    assignin('base','anglo_corr_C_tria',anglo_corr_C_tria);

    set(handles.I_C,'String',num2str(corr_C_tria));
    set(handles.A_I_C,'String',num2str(anglo_corr_C_tria));
end
% --------------------------------------------------------------------
function cal_corr_AB_Callback(hObject, eventdata, handles)
global volt_AB anglo_AB imped_A_tria imped_A_polar anglo_imped_A 
global corr_AB anglo_corr_AB 

volt_AB = str2double(get(handles.V_AB,'String'));
anglo_AB = str2double(get(handles.A_V_AB,'String'));
imped_A_tria = str2double(get(handles.Z_A,'String'));

if isnan(volt_AB) || isnan(anglo_AB) || isnan(imped_A_tria)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','volt_AB',volt_AB)
    assignin('base','anglo_AB',anglo_AB);
     assignin('base','imped_A_tria',imped_A_tria);
    imped_A_polar = abs(imped_A_tria);
    anglo_imped_A = round((angle(imped_A_tria)*180)/3.14);

    corr_AB = round(volt_AB/imped_A_polar);
    anglo_corr_AB = anglo_AB - anglo_imped_A;

    set(handles.I_AB,'String',corr_AB);
    set(handles.A_I_AB,'String',anglo_corr_AB);
end
% --------------------------------------------------------------------
function cal_corr_BC_Callback(hObject, eventdata, handles)
global volt_BC anglo_BC imped_B_tria imped_B_polar anglo_imped_B 
global corr_BC anglo_corr_BC 

volt_BC = str2double(get(handles.V_BC,'String'));
anglo_BC = str2double(get(handles.A_V_BC,'String'));
imped_B_tria = str2double(get(handles.Z_B,'String'));

if isnan(volt_BC) || isnan(anglo_BC) || isnan(imped_B_tria)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','volt_BC',volt_BC)
    assignin('base','anglo_BC',anglo_BC)
    assignin('base','imped_B_tria',imped_B_tria)
    
    imped_B_polar = abs(imped_B_tria);
    anglo_imped_B = round((angle(imped_B_tria)*180)/3.14);

    corr_BC = round(volt_BC/imped_B_polar);
    anglo_corr_BC = anglo_BC - anglo_imped_B;

    set(handles.I_BC,'String',corr_BC);
    set(handles.A_I_BC,'String',anglo_corr_BC);
end

% --------------------------------------------------------------------
function cal_corr_CA_Callback(hObject, eventdata, handles)
global volt_CA anglo_CA imped_C_tria imped_C_polar anglo_imped_C 
global corr_CA anglo_corr_CA 

volt_CA = str2double(get(handles.V_CA,'String'));
anglo_CA = str2double(get(handles.A_V_CA,'String'));
imped_C_tria = str2double(get(handles.Z_C,'String'));

if isnan(volt_CA) || isnan(anglo_CA) || isnan(imped_C_tria)
    warndlg('Faltan algunos datos','Advertencia');
else
    assignin('base','volt_CA',volt_CA)
    assignin('base','anglo_CA',anglo_CA)
    assignin('base','imped_C_tria',imped_C_tria)
    
    imped_C_polar = abs(imped_C_tria);
    anglo_imped_C = round((angle(imped_C_tria)*180)/3.14);

    corr_CA = round(volt_CA/imped_C_polar);
    anglo_corr_CA = anglo_CA - anglo_imped_C;

    set(handles.I_CA,'String',corr_CA);
    set(handles.A_I_CA,'String',anglo_corr_CA);
end

% --------------------------------------------------------------------
function limpiar_Callback(hObject, eventdata, handles)
set(handles.I_A,'String',' ');
set(handles.A_I_A,'String',' ');
set(handles.I_B,'String',' ');
set(handles.A_I_B,'String',' ');
set(handles.I_C,'String',' ');
set(handles.A_I_C,'String',' ');
set(handles.I_AB,'String',' ' );
set(handles.A_I_AB,'String',' ');
set(handles.I_BC,'String',' ');
set(handles.A_I_BC,'String',' ');
set(handles.I_CA,'String',' ');
set(handles.A_I_CA,'String',' ');
set(handles.V_AB,'String',' ');
set(handles.A_V_AB,'String',' ');
set(handles.V_BC,'String',' ');
set(handles.A_V_BC,'String',' ');
set(handles.V_CA,'String',' ');
set(handles.A_V_CA,'String',' ');
set(handles.Z_A,'String',' ');
set(handles.Z_B,'String',' ');
set(handles.Z_C,'String',' ');

% --------------------------------------------------------------------
function salir_Callback(hObject, eventdata, handles)
close(gcbf)


% --------------------------------------------------------------------
function rect_a_polar_Callback(hObject, eventdata, handles)
Conversion_Rect_A_Polar

% --------------------------------------------------------------------
function polar_a_rect_Callback(hObject, eventdata, handles)
Conversion_Polar_A_Rect


% --------------------------------------------------------------------
function acercaDe_Callback(hObject, eventdata, handles)
warndlg('Ricardo Mélida','Autor');
