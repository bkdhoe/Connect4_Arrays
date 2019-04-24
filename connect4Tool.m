function varargout = connect4Tool(varargin)
% connect4Tool MATLAB code for connect4Tool.fig
%      connect4Tool, by itself, creates a new connect4Tool or raises the existing
%      singleton*.
%
%      H = connect4Tool returns the handle to a new connect4Tool or the handle to
%      the existing singleton*.
%
%      connect4Tool('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in connect4Tool.M with the given input arguments.
%
%      connect4Tool('Property','Value',...) creates a new connect4Tool or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before connect4Tool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to connect4Tool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help connect4Tool

% Last Modified by GUIDE v2.5 24-Apr-2019 14:54:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @connect4Tool_OpeningFcn, ...
                   'gui_OutputFcn',  @connect4Tool_OutputFcn, ...
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


% --- Executes just before connect4Tool is made visible.
function connect4Tool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to connect4Tool (see VARARGIN)
allofthe = [handles.axes1 handles.axes2 handles.axes3 handles.axes4 handles.axes5 handles.axes6, handles.axes7; ...
    handles.axes8 handles.axes9 handles.axes10 handles.axes11 handles.axes12 handles.axes13, handles.axes14; ...
    handles.axes15 handles.axes16 handles.axes17 handles.axes18 handles.axes19 handles.axes20, handles.axes21; ...
    handles.axes22 handles.axes23 handles.axes24 handles.axes25 handles.axes26 handles.axes27, handles.axes28; ...
    handles.axes29 handles.axes30 handles.axes31 handles.axes32 handles.axes33 handles.axes34, handles.axes35; ...
    handles.axes36 handles.axes37 handles.axes38 handles.axes39 handles.axes40 handles.axes41, handles.axes42];

axes(handles.axes0)
    %axes(handles.axesi)
    piece = imread('empty_board.png');
    image(piece)
    axis off
    grid off
    axis image 
    
[piece, map, Palpha] = imread('piece.png');

for i = 1:6
    for j=1:7
axis off
axes(allofthe(i,j))

image(piece, 'AlphaData', Palpha)
axis image
axis off
    end
end

% Choose default command line output for connect4Tool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes connect4Tool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = connect4Tool_OutputFcn(hObject, eventdata, handles) 
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
if handles.pushbutton1 == 1
    pick = 1

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
