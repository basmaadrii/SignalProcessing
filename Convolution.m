function varargout = Convolution(varargin)
% CONVOLUTION MATLAB code for Convolution.fig
%      CONVOLUTION, by itself, creates a new CONVOLUTION or raises the existing
%      singleton*.
%
%      H = CONVOLUTION returns the handle to a new CONVOLUTION or the handle to
%      the existing singleton*.
%
%      CONVOLUTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONVOLUTION.M with the given input arguments.
%
%      CONVOLUTION('Property','Value',...) creates a new CONVOLUTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Convolution_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Convolution_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Convolution

% Last Modified by GUIDE v2.5 12-Apr-2017 16:52:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Convolution_OpeningFcn, ...
                   'gui_OutputFcn',  @Convolution_OutputFcn, ...
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


% --- Executes just before Convolution is made visible.
function Convolution_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Convolution (see VARARGIN)

handles.i=1;
handles.j=0;
handles.sig_part=1;

% Choose default command line output for Convolution
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Convolution wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Convolution_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit38_Callback(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit38 as text
%        str2double(get(hObject,'String')) returns contents of edit38 as a double
handles.y_intercept(1,handles.j)=str2double(get(hObject,'String'));
if (handles.sig_part~=handles.br_num+1)
    handles.sig_part=handles.sig_part+1;
    set(handles.text46,'String',['Signal Part' num2str(handles.sig_part)]);
else
    set(handles.popupmenu1,'Enable','off');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double
handles.slope(1,handles.j)=str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double
handles.center(1,handles.j)=str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_Callback(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36 as text
%        str2double(get(hObject,'String')) returns contents of edit36 as a double
handles.Amp_rect(1,handles.j)=str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double
handles.width(1,handles.j)=str2double(get(hObject,'String'));
if (handles.sig_part~=handles.br_num+1)
    handles.sig_part=handles.sig_part+1;
    set(handles.text46,'String',['Signal Part' num2str(handles.sig_part)]);
else
    set(handles.popupmenu1,'Enable','off');
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double
handles.DC(1,handles.j)=str2double(get(hObject,'String'));
if (handles.sig_part~=handles.br_num+1)
    handles.sig_part=handles.sig_part+1;
    set(handles.text46,'String',['Signal Part' num2str(handles.sig_part)]);
else
    set(handles.popupmenu1,'Enable','off');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double
handles.Amp_US(1,handles.j)=str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double
handles.Loc_US(1,handles.j)=str2double(get(hObject,'String'));
if (handles.sig_part~=handles.br_num+1)
    handles.sig_part=handles.sig_part+1;
    set(handles.text46,'String',['Signal Part' num2str(handles.sig_part)]);
else
    set(handles.popupmenu1,'Enable','off');
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double
handles.ImpLoc(1,handles.j)=str2double(get(hObject,'String'));
if (handles.sig_part~=handles.br_num+1)
    handles.sig_part=handles.sig_part+1;
    set(handles.text46,'String',['Signal Part' num2str(handles.sig_part)]);
else
    set(handles.popupmenu1,'Enable','off');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double
handles.PS_Sin(1,handles.j)=str2double(get(hObject,'String'));

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double
handles.Amp_Sin(1,handles.j)=str2double(get(hObject,'String'));

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double
handles.fq_Sin(1,handles.j)=str2double(get(hObject,'String'));
if (handles.sig_part~=handles.br_num+1)
    handles.sig_part=handles.sig_part+1;
    set(handles.text46,'String',['Signal Part' num2str(handles.sig_part)]);
else
    set(handles.popupmenu1,'Enable','off');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double
handles.exponent(1,handles.j)=str2double(get(hObject,'String'));
if (handles.sig_part~=handles.br_num+1)
    handles.sig_part=handles.sig_part+1;
    set(handles.text46,'String',['Signal Part' num2str(handles.sig_part)]);
else
    set(handles.popupmenu1,'Enable','off');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double
handles.Amp_exp(1,handles.j)=str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,20)=str2double(get(hObject,'String'));
set(hObject,'Enable','off');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,19)=str2double(get(hObject,'String'));
if handles.br_num~=19
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,18)=str2double(get(hObject,'String'));
if handles.br_num~=18
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,17)=str2double(get(hObject,'String'));
if handles.br_num~=17
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,16)=str2double(get(hObject,'String'));
if handles.br_num~=16
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,15)=str2double(get(hObject,'String'));
if handles.br_num~=15
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,14)=str2double(get(hObject,'String'));
if handles.br_num~=14
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,13)=str2double(get(hObject,'String'));
if handles.br_num~=13
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,12)=str2double(get(hObject,'String'));
if handles.br_num~=12
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,11)=str2double(get(hObject,'String'));
if handles.br_num~=11
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,10)=str2double(get(hObject,'String'));
if handles.br_num~=10
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,9)=str2double(get(hObject,'String'));
if handles.br_num~=9
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,8)=str2double(get(hObject,'String'));
if handles.br_num~=8
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,7)=str2double(get(hObject,'String'));
if handles.br_num~=7
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,6)=str2double(get(hObject,'String'));
if handles.br_num~=6
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,5)=str2double(get(hObject,'String'));
if handles.br_num~=5
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,4)=str2double(get(hObject,'String'));
if handles.br_num~=4
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,3)=str2double(get(hObject,'String'));
if handles.br_num~=3
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,2)=str2double(get(hObject,'String'));
if handles.br_num~=2
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double
if str2double(get(hObject,'String'))<handles.t_start || str2double(get(hObject,'String'))>handles.t_end
    msgbox('Invalid Break Point. Please Try Again.','ERROR');
    return;
end
handles.br(1,1)=str2double(get(hObject,'String'));
if handles.br_num~=1
    set(hObject,'Visible','off');
else
    set(hObject,'Enable','off');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
sig_type = get(hObject, 'String');
val = get(hObject,'Value');
switch(sig_type{val})
    
    case 'Sinusoidal'
        handles.sig_num(1,handles.i)=1;
        set(handles.uipanel5,'Visible','on');
        set(handles.uipanel4,'Visible','off');
        set(handles.uipanel10,'Visible','off');
        set(handles.uipanel9,'Visible','off');
        set(handles.uipanel8,'Visible','off');
        set(handles.uipanel7,'Visible','off');
        set(handles.uipanel6,'Visible','off');
        
    case 'DC'
        handles.sig_num(1,handles.i)=2;
        set(handles.uipanel8,'Visible','on');
        set(handles.uipanel5,'Visible','off');
        set(handles.uipanel4,'Visible','off');
        set(handles.uipanel10,'Visible','off');
        set(handles.uipanel9,'Visible','off');
        set(handles.uipanel7,'Visible','off');
        set(handles.uipanel6,'Visible','off');
        
    case 'Ramp'
        handles.sig_num(1,handles.i)=3;
        set(handles.uipanel10,'Visible','on');
        set(handles.uipanel5,'Visible','off');
        set(handles.uipanel4,'Visible','off');
        set(handles.uipanel9,'Visible','off');
        set(handles.uipanel8,'Visible','off');
        set(handles.uipanel7,'Visible','off');
        set(handles.uipanel6,'Visible','off');
        
    case 'Exponential'
        handles.sig_num(1,handles.i)=4;
        set(handles.uipanel4,'Visible','on');
        set(handles.uipanel5,'Visible','off');
        set(handles.uipanel10,'Visible','off');
        set(handles.uipanel9,'Visible','off');
        set(handles.uipanel8,'Visible','off');
        set(handles.uipanel7,'Visible','off');
        set(handles.uipanel6,'Visible','off');
        
    case 'Impulse'
        handles.sig_num(1,handles.i)=5;
        set(handles.uipanel6,'Visible','on');
        set(handles.uipanel5,'Visible','off');
        set(handles.uipanel4,'Visible','off');
        set(handles.uipanel10,'Visible','off');
        set(handles.uipanel9,'Visible','off');
        set(handles.uipanel8,'Visible','off');
        set(handles.uipanel7,'Visible','off');
        
    case 'Unit Step'
        handles.sig_num(1,handles.i)=6;
        set(handles.uipanel7,'Visible','on');
        set(handles.uipanel5,'Visible','off');
        set(handles.uipanel4,'Visible','off');
        set(handles.uipanel10,'Visible','off');
        set(handles.uipanel9,'Visible','off');
        set(handles.uipanel8,'Visible','off');
        set(handles.uipanel6,'Visible','off');
        
    case 'Rectangular'
        handles.sig_num(1,handles.i)=7;
        set(handles.uipanel9,'Visible','on');
        set(handles.uipanel5,'Visible','off');
        set(handles.uipanel4,'Visible','off');
        set(handles.uipanel10,'Visible','off');
        set(handles.uipanel8,'Visible','off');
        set(handles.uipanel7,'Visible','off');
        set(handles.uipanel6,'Visible','off');
        
end
handles.i=handles.i+1;
handles.j=handles.j+1;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
handles.t_start=str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
handles.t_end=str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double



% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
handles.br_num=str2double(get(hObject,'String'));
if handles.br_num>20
    msgbox('Maximum Number of break points is 20.','ERROR');
    return;
end
if handles.br_num~=0
    set(handles.text9,'Visible','on');
    set(handles.text9,'String',['Signal Part' num2str(handles.sig_part)]);
    set(handles.text10,'Enable','on');
    set(handles.edit25,'Enable','on');
    set(handles.edit24,'Enable','on');
    set(handles.edit23,'Enable','on');
    set(handles.edit22,'Enable','on');
    set(handles.edit21,'Enable','on');
    set(handles.edit20,'Enable','on');
    set(handles.edit19,'Enable','on');
    set(handles.edit18,'Enable','on');
    set(handles.edit17,'Enable','on');
    set(handles.edit16,'Enable','on');
    set(handles.edit15,'Enable','on');
    set(handles.edit14,'Enable','on');
    set(handles.edit13,'Enable','on');
    set(handles.edit12,'Enable','on');
    set(handles.edit11,'Enable','on');
    set(handles.edit10,'Enable','on');
    set(handles.edit9,'Enable','on');
    set(handles.edit8,'Enable','on');
    set(handles.edit7,'Enable','on');
    set(handles.edit6,'Enable','on');
    set(handles.edit5,'Enable','on');
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
if get(hObject,'Value')
    handles.sig_plot=1;
    set(handles.radiobutton2,'Value',0);
end
guidata(hObject, handles);

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
if get(hObject,'Value')
    handles.sig_plot=0;
    set(handles.radiobutton1,'Value',0);
end
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.axes1,'Visible','on');
getappdata(0,'tstart1');
getappdata(0,'tend1');
getappdata(0,'x');
handles.fs=getappdata(0,'fsvalue');
handles.ts=1/handles.fs;
temp=0;
for i=handles.br_num:-1:0
    j=handles.br_num-i+1;
    
    % Checks whether the end of the interval is t_end or another breakpoint
    if(i~=0)
         tx=handles.t_start:handles.ts:handles.br(1,j);
         for k = 1:length(tx)
            t(j,k)=tx(1,k);
         end
    else
        tx=handles.t_start:handles.ts:handles.t_end;
        for k = 1:length(tx)
            t(j,k)=tx(1,k);
        end
    end
    
    % The function of the signal
    switch(handles.sig_num(1,j))
        
        % Sinusoidal
        case 1
            for k=1:length(tx)
                x(j,k)=handles.Amp_Sin(1,j)*sin(2*pi*handles.fq_Sin(1,j)*t(j,k)+handles.PS_Sin(1,j));
            end
         
        % DC
        case 2
            for k=1:length(tx)
                x(j,k)=handles.DC(1,j);
            end
            
        % Ramp    
        case 3
            for k=1:length(tx)
                x(j,k)=handles.slope(1,j)*t(j,k)+handles.y_intercept(1,j);
            end
           
        % Exponential
        case 4
            for k=1:length(tx)
                x(j,k)=handles.Amp_exp(1,j)*exp(handles.exponent(1,j)*t(j,k));
            end
            
        % Impulse
        case 5
            for n=1:length(tx)
                if t(j,n)==handles.ImpLoc(1,j)
                    x(j,n)=1;
                else
                    x(j,n)=0;
                end
            end
            
        % Unit Step
        case 6
            for n=1:length(tx)
                if t(j,n)<handles.Loc_US(1,j)
                    x(j,n)=0;
                else
                    x(j,n)=handles.Amp_US(1,j);
                end
            end
            
        %Rectangular
        case 7
            for k=1:length(tx)
                x(j,k)=handles.Amp_rect(1,j)*rectangularPulse(handles.center(1,j)-(handles.width(1,j)/2),handles.center(1,j)+(handles.width(1,j)/2),t(j,k));
            end
            
    end
    
    % The starting time for the next interval is the break point+ts
    if(i~=0)
        handles.t_start=handles.br(1,j)+handles.ts;
    end
    for y=1:length(tx)
       t_plot(1,y+temp)=t(j,y);
    end
  
    for y=1:length(tx)
       x_plot(1,y+temp)=x(j,y);
    end
    temp=temp+y;
end

tstart_conv=getappdata(0,'tstart1')+handles.t_start;
tend_conv=getappdata(0,'tend1')+handles.t_end;
x=getappdata(0,'x');

t_conv=tstart_conv:handles.ts:tend_conv;
y=conv(x,x_plot)./handles.fs;

if handles.sig_plot
    % Continuous
    plot(t_conv,y);
else
    % Discrete
    stem(t_conv,y);
end
