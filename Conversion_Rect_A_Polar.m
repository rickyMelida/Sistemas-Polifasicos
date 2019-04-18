function varargout = Conversion_Rect_A_Polar(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Conversion_Rect_A_Polar_OpeningFcn, ...
                   'gui_OutputFcn',  @Conversion_Rect_A_Polar_OutputFcn, ...
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

function Conversion_Rect_A_Polar_OpeningFcn(hObject, eventdata, handles, varargin)

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

function varargout = Conversion_Rect_A_Polar_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function dato_rectangular_Callback(hObject, eventdata, handles)

function dato_rectangular_CreateFcn(hObject, eventdata, handles)

function convertir_Callback(hObject, eventdata, handles)
dato = str2double(get(handles.dato_rectangular,'String'));

if isnan(dato)
    warndlg('Favor ingrese el dato complejo','Error');
else
    if isreal(dato)
        warndlg('Ingrese un dato tipo complejo','Error.');
    else
        modulo = round(abs(dato));
        angulo = round((angle(dato)*180)/3.14);

        set(handles.resultado_polar,'String',num2str(modulo));
        set(handles.angulo,'String',num2str(angulo));
    end
end

function Salir_Callback(hObject, eventdata, handles)
close(gcbf)

function resultado_polar_Callback(hObject, eventdata, handles)

function resultado_polar_CreateFcn(hObject, eventdata, handles)

function angulo_Callback(hObject, eventdata, handles)

function angulo_CreateFcn(hObject, eventdata, handles)
