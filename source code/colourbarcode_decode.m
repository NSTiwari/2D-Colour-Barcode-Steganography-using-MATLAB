function varargout = colourbarcode_decode(varargin)
% COLOURBARCODE_DECODE MATLAB code for colourbarcode_decode.fig
%      COLOURBARCODE_DECODE, by itself, creates a new COLOURBARCODE_DECODE or raises the existing
%      singleton*.

%      H = COLOURBARCODE_DECODE returns the handle to a new COLOURBARCODE_DECODE or the handle to
%      the existing singleton*.
%
%      COLOURBARCODE_DECODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COLOURBARCODE_DECODE.M with the given input arguments.
%
%      COLOURBARCODE_DECODE('Property','Value',...) creates a new COLOURBARCODE_DECODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before colourbarcode_decode_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to colourbarcode_decode_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help colourbarcode_decode

% Last Modified by GUIDE v2.5 13-Apr-2019 14:43:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @colourbarcode_decode_OpeningFcn, ...
                   'gui_OutputFcn',  @colourbarcode_decode_OutputFcn, ...
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


% --- Executes just before colourbarcode_decode is made visible.
function colourbarcode_decode_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to colourbarcode_decode (see VARARGIN)

% Choose default command line output for colourbarcode_decode
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes colourbarcode_decode wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = colourbarcode_decode_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in upload.
function upload_Callback(hObject, eventdata, handles)
%open window for select image
global img
[File_Name, Path_Name] = uigetfile('D:\');
axes(handles.graph);
%img=imshow([Path_Name,File_Name]);
fullname = fullfile(Path_Name, File_Name);
img = imread(fullname);
img1=imshow(fullname);


    







% --- Executes on button press in decode.

function decode_Callback(hObject, eventdata, handles)

global img %using the global variable 'img' from the "upload" function
index=1;            %set index of text variable to 1

for i=1:10:1024
red=img(500,i,1);   %extract value of 'R' at (500,i)
green=img(500,i,2); %extract value of 'G' at (500,i)
blue=img(500,i,3);  %extract value of 'B' at (500,i)

if(red==255&&green==0&&blue==0)
text(index)='A';   %store the letter 'A' in array 'text'
index=index+1;     %increment the index for next colour
lv=[false text(2:end)==text(1:end-1)];  %delete consecutive recurring values
unique=text(~lv);         %store the processed string
set(handles.out,'string',unique);  %display decoded text in textbox

elseif(red==0&&green==255&&blue==0)
text(index)='B';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==255&&blue==0)
text(index)='C';   
index=index+1;     
lv=[false text(2:end)==text(1:end-1)]; 
unique=text(~lv);                      
set(handles.out,'string',unique);

elseif(red==0&&green==0&&blue==255)
text(index)='D';  
index=index+1;    
lv=[false text(2:end)==text(1:end-1)];   
unique=text(~lv);        
set(handles.out,'string',unique);    

elseif(red==224&&green==64&&blue==251)
text(index)='E';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==152&&blue==0)
text(index)='F';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==197&&green==17&&blue==98)
text(index)='G';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==0&&green==131&&blue==143)
text(index)='H';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==62&&green==39&&blue==35)
text(index)='I';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==139&&green==195&&blue==74)
text(index)='J';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==24&&green==255&&blue==255)
text(index)='K';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==0&&green==77&&blue==64)
text(index)='L';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==229&&blue==127)
text(index)='M';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==118&&green==255&&blue==3)
text(index)='N';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==82&&blue==82)
text(index)='O';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==83&&green==109&&blue==254)
text(index)='P';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==130&&green==119&&blue==23)
text(index)='Q';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==103&&green==58&&blue==183)
text(index)='R';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==224&&green==224&&blue==224)
text(index)='S';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==87&&blue==34)
text(index)='T';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==29&&green==233&&blue==182)
text(index)='U';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==26&&green==35&&blue==126)
text(index)='V';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==121&&green==85&&blue==72)
text(index)='W';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==235&&blue==59)
text(index)='X';   
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==76&&green==175&&blue==80)
text(index)='Y';    %Y
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==128&&blue==171)
text(index)='Z';    %Z
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==0&&green==230&&blue==118)
text(index)='a';   %a
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==94&&green==53&&blue==177)
text(index)='b';   %b
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==179&&blue==0)
text(index)='c';   %c
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==23&&blue==68)
text(index)='d';   %d
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==77&&green==182&&blue==172)
text(index)='e';   %e
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==96&&green==125&&blue==139)
text(index)='f';   %f
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==244&&green==81&&blue==30)
text(index)='g';   %g
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==49&&green==27&&blue==146)
text(index)='h';   %h
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==240&&green==98&&blue==146)
text(index)='i';   %i
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==0&&green==229&&blue==255)
text(index)='j';   %j
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==221&&green==44&&blue==0)
text(index)='k';   %k
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==0&&green==121&&blue==107)
text(index)='l';   %l
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==156&&green==39&&blue==176)
text(index)='m';   %m
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==253&&green==216&&blue==53)
text(index)='n';   %n
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==3&&green==169&&blue==244)
text(index)='o';   %o
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==105&&green==240&&blue==174)
text(index)='p';   %p
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==98&&green==0&&blue==234)
text(index)='q';   %q
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==117&&green==117&&blue==117)
text(index)='r';   %r
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==141&&green==110&&blue==99)
text(index)='s';   %s
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==179&&green==229&&blue==252)
text(index)='t';   %t
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==216&&green==27&&blue==96)
text(index)='u';   %u
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==48&&green==79&&blue==254)
text(index)='v';   %v
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==213&&green==0&&blue==249)
text(index)='w';   %w
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==57&&green==73&&blue==171)
text(index)='x';   %x
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==175&&green==180&&blue==43)
text(index)='y';   %y
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==191&&green==54&&blue==12)
text(index)='z';   %z
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==191&&green==54&&blue==12)
text(index)='z';   %z
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==38&&green==50&&blue==56)
text(index)='0';   %0
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==245&&green==245&&blue==245)
text(index)='1';   %1
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==0&&green==145&&blue==234)
text(index)='2';   %2
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==214&&blue==0)
text(index)='3';   %3
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==0&&green==96&&blue==100)
text(index)='4';   %4
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==123&&green==31&&blue==162)
text(index)='5';   %5
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==61&&blue==0)
text(index)='6';   %6
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==128&&green==216&&blue==255)
text(index)='7';   %7
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==244&&green==67&&blue==54)
text(index)='8';   %8
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==179&&green==157&&blue==219)
text(index)='9';   %9
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);

elseif(red==255&&green==255&&blue==255)
text(index)=' ';   %space
index=index+1;   
lv=[false text(2:end)==text(1:end-1)];
unique=text(~lv);
set(handles.out,'string',unique);
end
end
            
 
function clear_Callback(hObject, eventdata, handles)
cla reset;
set(handles.out,'string','') %clear output 


function graph_CreateFcn(hObject, eventdata, handles)



function out_Callback(hObject, eventdata, handles)


function out_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function back_Callback(hObject, eventdata, handles)
colourbarcode;  %calling colourbarcode GUI
