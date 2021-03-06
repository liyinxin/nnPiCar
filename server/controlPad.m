function varargout = controlPad(varargin)
% CONTROLPAD MATLAB code for controlPad.fig
%      CONTROLPAD, by itself, creates a new CONTROLPAD or raises the existing
%      singleton*.
%
%      H = CONTROLPAD returns the handle to a new CONTROLPAD or the handle to
%      the existing singleton*.
%
%      CONTROLPAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTROLPAD.M with the given input arguments.
%
%      CONTROLPAD('Property','Value',...) creates a new CONTROLPAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before controlPad_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to controlPad_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help controlPad

% Last Modified by GUIDE v2.5 26-Sep-2017 13:40:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @controlPad_OpeningFcn, ...
                   'gui_OutputFcn',  @controlPad_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before controlPad is made visible.
function controlPad_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to controlPad (see VARARGIN)

% Choose default command line output for controlPad
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes controlPad wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = controlPad_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentType;global curl;
currentType = 'forward';cmd(currentType,curl);pause(0.2);cmd('stop',curl);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(~, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentType;global curl;
currentType = 'turnleft';cmd(currentType, curl);pause(0.2);cmd('stop',curl);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentType;global curl;
currentType = 'backward';cmd(currentType, curl);pause(0.2);cmd('stop',curl);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentType;global curl;
currentType = 'turnright';cmd(currentType, curl);pause(0.2);cmd('stop',curl);


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
global startFlag;
button_state = get(hObject,'Value');
if button_state == get(hObject,'Max')
	startFlag = ~startFlag;
elseif button_state == get(hObject,'Min')
	startFlag = ~startFlag;
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global quitLoop;
quitLoop = true;
