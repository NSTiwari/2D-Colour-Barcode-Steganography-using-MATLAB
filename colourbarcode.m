function varargout = colourbarcode(varargin)
% COLOURBARCODE MATLAB code for colourbarcode.fig
%      COLOURBARCODE, by itself, creates a new COLOURBARCODE or raises the existing
%      singleton*.
%
%      H = COLOURBARCODE returns the handle to a new COLOURBARCODE or the handle to
%      the existing singleton*.
%
%      COLOURBARCODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COLOURBARCODE.M with the given input arguments.
%
%      COLOURBARCODE('Property','Value',...) creates a new COLOURBARCODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before colourbarcode_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to colourbarcode_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help colourbarcode

% Last Modified by GUIDE v2.5 05-Apr-2019 20:36:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @colourbarcode_OpeningFcn, ...
                   'gui_OutputFcn',  @colourbarcode_OutputFcn, ...
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


% --- Executes just before colourbarcode is made visible.
function colourbarcode_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to colourbarcode (see VARARGIN)

% Choose default command line output for colourbarcode
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes colourbarcode wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = colourbarcode_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inp_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of inp as text
%        str2double(get(hObject,'String')) returns contents of inp as a double


% --- Executes during object creation, after setting all properties.
function inp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in encode.
function encode_Callback(hObject, eventdata, handles)
inputstring = get(handles.inp,'string');  %take input from user
letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 ';
lettercolours = uint8([255,   0,   0;   ...for A
                         0, 255,   0;   ...for B
                       255, 255,   0;   ...for C
                         0,   0, 255;   ...for D
                       224,  64, 251;   ...for E 
                       255,  152,  0;   ...for F
                       197,   17, 98;   ...for G
                         0,  131,143;   ...for H
                        62,   39, 35;   ...for I
                       139,  195, 74;   ...for J
                        24,  255,255;   ...for K
                         0,   77, 64;   ...for L
                       255,  229,127;   ...for M
                       118,  255,  3;   ...for N
                       255,   82, 82;   ...for O
                        83,  109,254;   ...for P
                       130,  119, 23;   ...for Q
                       103,   58, 183;  ...for R
                       224,  224, 224;  ...for S
                       255,   87,  34;  ...for T
                        29,  233, 182;  ...for U
                        26,   35, 126;  ...for V
                       121,   85,  72;  ...for W
                       255,  235,  59;  ...for X
                        76,  175,  80;  ...for Y
                       255,  128, 171;  ...for Z
                         0,  230, 118;  ...for a
                        94,   53, 177;  ...for b
                       255,  179,   0;  ...for c
                       255,   23,  68;  ...for d
                        77,  182, 172;  ...for e
                        96,  125, 139;  ...for f
                       244,   81,  30;  ...for g
                        49,   27, 146;  ...for h
                       240,   98, 146;  ...for i
                         0,  229, 255;  ...for j
                       221,   44,   0;  ...for k
                         0,  121, 107;  ...for l
                       156,   39, 176;  ...for m
                       253,  216,  53;  ...for n
                         3,  169, 244;  ...for o
                       105,  240, 174;  ...for p
                        98,    0, 234;  ...for q
                       117,  117, 117;  ...for r
                       141,  110,  99;  ...for s
                       179,  229, 252;  ...for t
                       216,   27,  96;  ...for u
                        48,   79, 254;  ...for v
                       213,    0, 249;  ...for w
                        57,   73, 171;  ...for x
                       175,  180,  43;  ...for y
                       191,   54,  12;  ...for z
                        38,   50,  56;  ...for 0
                       245,  245, 245;  ...for 1
                         0,  145, 234;  ...for 2
                       255,  214,   0;  ...for 3
                         0,   96, 100;  ...for 4
                       123,   31, 162;  ...for 5
                       255,   61,   0;  ...for 6
                       128,  216, 255;  ...for 7
                       244,   67,  54;  ...for 8
                       179,  157, 219;  ...for 9
                       255,  255, 255]); ...for space  
[found, whichrow] = ismember(inputstring, letters);        %find which colour goes with each letter of the input
assert(all(found), 'Some letters in input are not valid');
letterswidth = diff(round(linspace(0, 1024, numel(inputstring)+1)));    %compute width of each letter colour patch. There's probaby a simpler way. Ensure width is integer
colouredimage = repelem(permute(lettercolours(whichrow, :), [3 1 2]), 1024, letterswidth, 1);   %replicate each colour patch according to calculate width and a 1024 height. 
imshow(colouredimage);      %display the image







% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
set(handles.inp,'string','');   %clear input textbox
cla reset;        %clear the graph


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
imsave  %save the image


% --- Executes on button press in decode.
function decode_Callback(hObject, eventdata, handles)
colourbarcode_decode   %call colourbarcode_decode GUI
