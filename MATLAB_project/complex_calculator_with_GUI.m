function varargout = final(varargin)

% Begin initialization final - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @final_OpeningFcn, ...
                   'gui_OutputFcn',  @final_OutputFcn, ...
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
% End initialization final - DO NOT EDIT


% --- Executes just before final is made visible.
function final_OpeningFcn(hObject, ~, handles, varargin)

% Choose default command line output for final
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes final wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = final_OutputFcn(~, ~, handles) 

% Get default command line output from handles structure
varargout{1} = handles.output;

function addButton_Callback(hObject, eventdata, handles)
y1=str2num(get(handles.edit1,'string'))
y2=str2num(get(handles.edit2,'string'))
z=y1+y2
set(handles.edit3,'string',num2str(z))
z5=real(y1);
z6=imag(y1);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z7=real(y2);
z8=imag(y2);
plot([0 z7],[0 z8],'y')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('1st num','2nd num','result')
hold off
r=sqrt(z4^2+z3^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])
% hObject    handle to addButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hint: get(hObject,'Value') returns toggle state of addButton



function edit1_Callback(~, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in divButton.
function divButton_Callback(hObject, eventdata, handles)
% hObject    handle to divButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y1=str2num(get(handles.edit1,'string'))
y2=str2num(get(handles.edit2,'string'))
z=y1/y2
set(handles.edit3,'string',num2str(z))
z5=real(y1);
z6=imag(y1);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z7=real(y2);
z8=imag(y2);
plot([0 z7],[0 z8],'y')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('1st num','2end num','result')
hold off
r=sqrt(z4^2+z3^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])

% Hint: get(hObject,'Value') returns toggle state of divButton


% --- Executes on button press in sineButton.
function sineButton_Callback(hObject, eventdata, handles)
% hObject    handle to sineButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y=str2num(get(handles.edit1,'string'));
z=(exp(i*y)-exp(-i*y))/(2*i)
z5=real(y);
z6=imag(y);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('num','result')
hold off
r=sqrt(z4^2+z3^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])
set(handles.edit3,'string',num2str(z))

% Hint: get(hObject,'Value') returns toggle state of sineButton


% --- Executes on button press in cosButton.
function cosButton_Callback(hObject, eventdata, handles)
y=str2num(get(handles.edit1,'string'))
z=(exp(i*y)+exp(-i*y))/2
z5=real(y);
z6=imag(y);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('num','result')
hold off
r=sqrt(z5^2+z6^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])
set(handles.edit3,'string',num2str(z))


% --- Executes on button press in clearButton.
function clearButton_Callback(hObject, eventdata, handles)
% hObject    handle to clearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')
set(handles.edit6,'string','')
axes(handles.axes1)
cla
axes(handles.axes3)
cla
clc
clear


% --- Executes on button press in GridButton.
function GridButton_Callback(hObject, eventdata, handles)
% hObject    handle to GridButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(handles.GridButton,'value')==1)
    axes(handles.axes1)
    grid on
else
    axes(handles.axes1)
    grid off
end
% Hint: get(hObject,'Value') returns toggle state of GridButton



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

% --- Executes on button press in multiButton.
function multiButton_Callback(hObject, eventdata, handles)
% hObject    handle to multiButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y1=str2num(get(handles.edit1,'string'))
y2=str2num(get(handles.edit2,'string'))
z=y1*y2
set(handles.edit3,'string',num2str(z))
z5=real(y1);
z6=imag(y1);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z7=real(y2);
z8=imag(y2);
plot([0 z7],[0 z8],'y')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('1st num','2end num','result')
hold off
r=sqrt(z4^2+z3^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])


% --- Executes on button press in subButton.
function subButton_Callback(hObject, eventdata, handles)
% hObject    handle to subButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y1=str2num(get(handles.edit1,'string'))
y2=str2num(get(handles.edit2,'string'))
z=y1-y2
set(handles.edit3,'string',num2str(z))
z5=real(y1);
z6=imag(y1);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z7=real(y2);
z8=imag(y2);
plot([0 z7],[0 z8],'y')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('1st num','2end num','result')
hold off
r=sqrt(z4^2+z3^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])
% --- Executes on button press in sinhButton.
function sinhButton_Callback(hObject, eventdata, handles)
% hObject    handle to sinhButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y=str2num(get(handles.edit1,'string'));
z=(exp(y)-exp(-y))/2
z5=real(y);
z6=imag(y);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('num','result')
hold off 
r=sqrt(z5^2+z6^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])
set(handles.edit3,'string',num2str(z))

% --- Executes on button press in coshButton.
function coshButton_Callback(hObject, eventdata, handles)
% hObject    handle to coshButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y=str2num(get(handles.edit1,'string'));
z=(exp(y)+exp(-y))/2
z5=real(y);
z6=imag(y);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('num','result')
hold off
r=sqrt(z5^2+z6^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])
set(handles.edit3,'string',num2str(z))

% --- Executes on button press in LnButton.
function LnButton_Callback(hObject, eventdata, handles)
% hObject    handle to LnButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y=str2num(get(handles.edit1,'string'));
x=real(y);
l=imag(y);
r=sqrt(x^2+l^2);
th=atand(l/x);
z=log(r)+(i*th)
z5=real(y);
z6=imag(y);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('num','result')
hold off
r=sqrt(z5^2+z6^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])
set(handles.edit3,'string',num2str(z))
        
        
% --- Executes on button press in tanButton.
function tanButton_Callback(hObject, eventdata, handles)
% hObject    handle to tanButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y=str2num(get(handles.edit1,'string'));
z0=(exp(i*y)+exp(-i*y))/2 ;
z1=(exp(i*y)-exp(-i*y))/(2*i);
z=z1/z0
z5=real(y);
z6=imag(y);
axes(handles.axes1)
plot([0 z5],[0 z6],'r')
hold on
z3=real(z);
z4=imag(z);
plot([0 z3],[0 z4],'b')
legend('num','result')
hold off
r=sqrt(z5^2+z6^2);
th=angle(z);
axes(handles.axes3)
polar([0 th+(2*pi)],[0 r])
set(handles.edit3,'string',num2str(z))


function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


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


% --- Executes on button press in expButton.
function expButton_Callback(hObject, eventdata, handles)
% hObject    handle to expButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=str2num(get(handles.edit1,'string'));
n=str2num(get(handles.edit2,'string'));
m=str2num(get(handles.edit6,'string'));
x=real(z);
y=imag(z);
r=sqrt(x^2+y^2);
th=angle(z)*(180/pi);
a=1;
for k=0:m-1
    theta(a)=(th+360*k)/(m/n);
    while (theta(a)>360)
        theta(a)=theta(a)-360;
    end
    a=a+1;
end
w=r^(n/m)*(cosd(theta)+i*sind(theta));
axes(handles.axes1)
plot([0 real(w(1))],[0 imag(w(1))],'r')
hold on
for c= 2:m
    axes(handles.axes1)
    plot([0 real(w(c))],[0 imag(w(c))],'r')
end
    hold off
    axes(handles.axes3)
   polar([0 ((theta(1)*pi)/180)+2*pi],[0 r^(n/m)],'r')
   hold on
   for c= 2:m
    axes(handles.axes3)
   polar([0 ((theta(c)*pi)/180)+2*pi],[0 r^(n/m)],'r')
   end
hold on
thetacircle=[0:0.01:2*pi];
b=r^(n/m)*cos(thetacircle);
c=r^(n/m)*sin(thetacircle);
[thetacircle rho]=cart2pol(b,c);
polar(thetacircle,rho,'r');
hold off
w=num2str(w);
set(handles.edit3,'string',w)
    
