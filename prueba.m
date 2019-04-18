function varargout = ventana_emergentescaballero(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ventana_emergentescaballero_OpeningFcn, ...
                   'gui_OutputFcn',  @ventana_emergentescaballero_OutputFcn, ...
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
 
function ventana_emergentescaballero_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
 
function varargout = ventana_emergentescaballero_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;
 
function pushbutton1_Callback(hObject, eventdata, handles)
helpdlg('Archivos cargado correctamente','Procesamiento de audio');
 
function pushbutton3_Callback(hObject, eventdata, handles)
errordlg('Please: Abrir un archivo *.wav');
 
 
function pushbutton4_Callback(hObject, eventdata, handles)
warndlg({'Warning:  Ya esta reproduciendo.';'Para comenzar una nueva reproduccin primero debe detener la reproduccion actual.'})
 
function pushbutton5_Callback(hObject, eventdata, handles)
opc=questdlg('¿desea cerrar el programa?','cerrar','Si','No','No');
if strcmp(opc,'No');
    return;
end
 
function pushbutton6_Callback(hObject, eventdata, handles)
prompt = {'Enter matrix size:','Enter colormap name:'};
dlg_title = 'Input for peaks function';
num_lines = 1;
def = {'20','hsv'};
answer = inputdlg(prompt,dlg_title,num_lines,def);
 
function pushbutton7_Callback(hObject, eventdata, handles)
Data=1:64;Data=(Data'*Data)/64;
CreateStruct.WindowStyle='replace';
CreateStruct.Interpreter='tex';
h=msgbox('X^2 + Y^2','Title','custom',Data,hot(64),CreateStruct);