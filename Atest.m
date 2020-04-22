function varargout = Atest(varargin)
% ATEST MATLAB code for Atest.fig
%      ATEST, by itself, creates a new ATEST or raises the existing
%      singleton*.
%
%      H = ATEST returns the handle to a new ATEST or the handle to
%      the existing singleton*.
%
%      ATEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ATEST.M with the given input arguments.
%
%      ATEST('Property','Value',...) creates a new ATEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Atest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Atest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Atest

% Last Modified by GUIDE v2.5 12-Dec-2019 14:36:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Atest_OpeningFcn, ...
                   'gui_OutputFcn',  @Atest_OutputFcn, ...
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


% --- Executes just before Atest is made visible.
function Atest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Atest (see VARARGIN)

% Choose default command line output for Atest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Atest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Atest_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
global yourInputText
yourInputText = get(handles.edit1,'String')
set(handles.edit2,'string',yourInputText) 




% function edit2_Callback(hObject, eventdata, handles)
% global yourInputText
% set(handles.edit2,'string',yourInputText) 
