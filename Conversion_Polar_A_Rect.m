function varargout = Conversion_Polar_A_Rect(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Conversion_Polar_A_Rect_OpeningFcn, ...
                   'gui_OutputFcn',  @Conversion_Polar_A_Rect_OutputFcn, ...
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

function Conversion_Polar_A_Rect_OpeningFcn(hObject, eventdata, handles, varargin)

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

function varargout = Conversion_Polar_A_Rect_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function res_complejo_Callback(hObject, eventdata, handles)

function res_complejo_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function convertir_Callback(hObject, eventdata, handles)
angulo = str2double(get(handles.angulo,'String'));
modulo = str2double(get(handles.modulo,'String'));

if isnan(angulo) || isnan(modulo)   
    warndlg('Faltan algunos datos','Error');
else
    real = round((cos((angulo*3.14)/180))*modulo,1);
    imaginario = round((sin((angulo*3.14)/180))*modulo,1);

    resultado = num2str(complex(real,imaginario));
    set(handles.res_complejo,'String',resultado);
end
function Salir_Callback(hObject, eventdata, handles)
close(gcbf)

function modulo_Callback(hObject, eventdata, handles)

function modulo_CreateFcn(hObject, eventdata, handles)

function angulo_Callback(hObject, eventdata, handles)

function angulo_CreateFcn(hObject, eventdata, handles)
