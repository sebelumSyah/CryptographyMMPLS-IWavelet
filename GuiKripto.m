function varargout = GuiKripto(varargin)
% GUIKRIPTO MATLAB code for GuiKripto.fig
%      GUIKRIPTO, by itself, creates a new GUIKRIPTO or raises the existing
%      singleton*.
%
%      H = GUIKRIPTO returns the handle to a new GUIKRIPTO or the handle to
%      the existing singleton*.
%
%      GUIKRIPTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIKRIPTO.M with the given input arguments.
%
%      GUIKRIPTO('Property','Value',...) creates a new GUIKRIPTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiKripto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiKripto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiKripto

% Last Modified by GUIDE v2.5 24-Jan-2024 15:39:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiKripto_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiKripto_OutputFcn, ...
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


% --- Executes just before GuiKripto is made visible.
function GuiKripto_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiKripto (see VARARGIN)

% Choose default command line output for GuiKripto
clc;
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiKripto wait for user response (see UIRESUME)
% uiwait(handles.figure1);
g1=imread('logoITS.jpg');
handles.g1=g1;
axes(handles.logoITS);
imshow(g1);

g2=imread('logoMTK.jpg');
handles.g2=g2;
axes(handles.logoMTK);
imshow(g2);

% set(handles.chiperText,'Enable','off');
set(handles.plainText, 'Min', 0, 'Max', 2);
set(handles.chiperText, 'Min', 0, 'Max', 2);
% --- Outputs from this function are returned to the command line.
function varargout = GuiKripto_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function plainText_Callback(hObject, eventdata, handles)
% hObject    handle to plainText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plainText as text
%        str2double(get(hObject,'String')) returns contents of plainText as a double


% --- Executes during object creation, after setting all properties.
function plainText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plainText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function chiperText_Callback(hObject, eventdata, handles)
% hObject    handle to chiperText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chiperText as text
%        str2double(get(hObject,'String')) returns contents of chiperText as a double


% --- Executes during object creation, after setting all properties.
function chiperText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chiperText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.key_dekripsi1,'String','');
set(handles.key_dekripsi2,'String','');
set(handles.kualitas_enkripsi,'String','');
set(handles.key_dekripsi3,'String','');
set(handles.waktu_dekripsi,'String','');
set(handles.similarity,'String','');
set(handles.waktu_enkripsi,'String','');
set(handles.banyak_karakter_chiper,'String','');
set(handles.presentase_kualitas,'String','');
set(handles.plainText,'String','');
set(handles.chiperText,'String','');
set(handles.korelasi_teks,'String','');
set(handles.key_Enkripsi,'String','');
set(handles.banyak_karakter,'String','');
[FileName,FilePath]=uigetfile('*.txt');
ExPath = [FilePath FileName];
plaintext=char(importdata(ExPath));
global text;
text=plaintext;
numChar=size(double(plaintext),2);
set(handles.plainText,'String',plaintext);
set(handles.plainText, 'Min', 0, 'Max', 2);
set(handles.banyak_karakter,'String',num2str(numChar));
set(handles.waktu_enkripsi,'Enable','on');
set(handles.plainText,'Enable','on');
set(handles.key_Enkripsi,'Enable','on');
set(handles.banyak_karakter,'Enable','on');
guidata(hObject, handles);

function key_Enkripsi_Callback(hObject, eventdata, handles)
% hObject    handle to key_Enkripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of key_Enkripsi as text
%        str2double(get(hObject,'String')) returns contents of key_Enkripsi as a double


% --- Executes during object creation, after setting all properties.
function key_Enkripsi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to key_Enkripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function banyak_karakter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to banyak_karakter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in button_Enkripsi.
function button_Enkripsi_Callback(hObject, eventdata, handles)
% hObject    handle to button_Enkripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

kunci = get(handles.key_Enkripsi, 'String');
plaintext= get(handles.plainText, 'String');
key_enkripsi = str2double(strsplit(kunci, ' '));
transformLS=key_enkripsi(1);
KeyLevel=key_enkripsi(2:end);
global modulo_enkripsi;
global result_enkripsi;
global biner;
if transformLS==1
    [ChiperText KS Kode t modulo result]=EnkripsiMin(plaintext,KeyLevel,biner);
    modulo_enkripsi=modulo;
    result_enkripsi=result;
    set(handles.chiperText,'String',ChiperText);
elseif transformLS==2
    [ChiperText KS Kode t modulo result]=EnkripsiMax(plaintext,KeyLevel,biner);
     modulo_enkripsi=modulo;
    result_enkripsi=result;
    set(handles.chiperText,'String',ChiperText);
elseif transformLS==3
    [ChiperText KS Kode t modulo result]=EnkripsiMaxMin(plaintext,KeyLevel,biner);
    modulo_enkripsi=modulo;
    result_enkripsi=result;
    set(handles.chiperText,'String',ChiperText);
elseif transformLS==4
    [ChiperText KS Kode t modulo result]=EnkripsiAveMin(plaintext,KeyLevel,biner);
    modulo_enkripsi=modulo;
    result_enkripsi=result;
    set(handles.chiperText,'String',ChiperText);
end
maxplain=max(double(plaintext))
maxchip=max(double(ChiperText))
[result max_quality_enk persent_quality_enk]=encryption_quality(plaintext,ChiperText);
set(handles.kualitas_enkripsi,'String',num2str(result));
set(handles.bit_edit,'String',num2str(biner));
set(handles.presentase_kualitas,'String',num2str(persent_quality_enk));
num_chiper=size(double(ChiperText),2);
set(handles.banyak_karakter_chiper,'String',num2str(num_chiper));
korelasi_num=corelation_value(plaintext,ChiperText);
set(handles.korelasi_teks,'String',num2str(korelasi_num));
set(handles.key_dekripsi1,'String',num2str(key_enkripsi));
set(handles.key_dekripsi2,'String',num2str(KS));
set(handles.key_dekripsi3,'String',num2str(Kode));
set(handles.waktu_enkripsi,'String',num2str(t));
set(handles.chiperText, 'Min', 0, 'Max', 2);
set(handles.plainText,'String','');
set(handles.key_Enkripsi,'String','');
set(handles.plainText,'Enable','off');
set(handles.key_Enkripsi,'Enable','off');
set(handles.banyak_karakter,'Enable','off');
%set(handles.banyak_karakter,'String','');
% set(handles.waktu_enkripsi,'Enable','off');
% set(handles.korelasi_teks,'Enable','off');

% --- Executes on button press in clearButton.
function clearButton_Callback(hObject, eventdata, handles)
% hObject    handle to clearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.key_dekripsi1,'String','');
set(handles.key_dekripsi2,'String','');
set(handles.key_dekripsi3,'String','');
set(handles.waktu_dekripsi,'String','');
set(handles.similarity,'String','');
set(handles.waktu_enkripsi,'String','');
set(handles.kualitas_enkripsi,'String','');
set(handles.bit_edit,'String','');
set(handles.presentase_kualitas,'String','');
set(handles.plainText,'String','');
set(handles.chiperText,'String','');
set(handles.key_Enkripsi,'String','');
set(handles.banyak_karakter,'String','');
set(handles.waktu_enkripsi,'Enable','on');
set(handles.plainText,'Enable','on');
set(handles.key_Enkripsi,'Enable','on');
set(handles.banyak_karakter,'Enable','on');
set(handles.korelasi_teks,'String','');

function key_dekripsi1_Callback(hObject, eventdata, handles)
% hObject    handle to key_dekripsi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of key_dekripsi1 as text
%        str2double(get(hObject,'String')) returns contents of key_dekripsi1 as a double


% --- Executes during object creation, after setting all properties.
function key_dekripsi1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to key_dekripsi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function key_dekripsi2_Callback(hObject, eventdata, handles)
% hObject    handle to key_dekripsi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of key_dekripsi2 as text
%        str2double(get(hObject,'String')) returns contents of key_dekripsi2 as a double
% --- Executes during object creation, after setting all properties.
function key_dekripsi2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to key_dekripsi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function key_dekripsi3_Callback(hObject, eventdata, handles)
% hObject    handle to key_dekripsi3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of key_dekripsi3 as text
%        str2double(get(hObject,'String')) returns contents of key_dekripsi3 as a double
% --- Executes during object creation, after setting all properties.
function key_dekripsi3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to key_dekripsi3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function waktu_dekripsi_Callback(hObject, eventdata, handles)
% hObject    handle to waktu_dekripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of waktu_dekripsi as text
%        str2double(get(hObject,'String')) returns contents of waktu_dekripsi as a double
% --- Executes during object creation, after setting all properties.
function waktu_dekripsi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to waktu_dekripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in dekripsiButton.
function dekripsiButton_Callback(hObject, eventdata, handles)
% hObject    handle to dekripsiButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Chiper_Text=get(handles.chiperText,'String');
kunci1=get(handles.key_dekripsi1,'String');
kunci2=get(handles.key_dekripsi2,'String');
kunci3=get(handles.key_dekripsi3,'String');
bit=get(handles.bit_edit,'String');
bit=str2double(bit);
KS=str2double(strsplit(kunci2, ' '));
Kode=str2double(strsplit(kunci3, ' '));
key_one = str2double(strsplit(kunci1, ' '));
transformLS=key_one(1);
KeyLevel=key_one(2:end);
global modulo_enkripsi;
global result_enkripsi;
if transformLS==1
    [resul_dekripsi t]=DekripsiMin(Chiper_Text,KS,Kode,KeyLevel,modulo_enkripsi,result_enkripsi,bit);
    set(handles.plainText,'String',resul_dekripsi);
elseif transformLS==2
    [resul_dekripsi t]=DekripsiMax(Chiper_Text,KS,Kode,KeyLevel,modulo_enkripsi,result_enkripsi,bit);
    set(handles.plainText,'String',resul_dekripsi);
elseif transformLS==3
    [resul_dekripsi t]=DekripsiMaxMin(Chiper_Text,KS,Kode,KeyLevel,modulo_enkripsi,result_enkripsi,bit);
    set(handles.plainText,'String',resul_dekripsi);
elseif transformLS==4
    [resul_dekripsi t]=DekripsiAveMin(Chiper_Text,KS,Kode,KeyLevel,modulo_enkripsi,result_enkripsi,bit);
    set(handles.plainText,'String',resul_dekripsi);
end
global text
similarity=(resul_dekripsi==text);
sum(similarity)
size(resul_dekripsi,2)
hitung_similarity=((sum(similarity))/(size(resul_dekripsi,2)))*100;
set(handles.similarity,'String',num2str(hitung_similarity));
set(handles.waktu_dekripsi,'String',num2str(t));
set(handles.waktu_enkripsi,'String','');

function banyak_karakter_chiper_Callback(hObject, eventdata, handles)
% hObject    handle to banyak_karakter_chiper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of banyak_karakter_chiper as text
%        str2double(get(hObject,'String')) returns contents of banyak_karakter_chiper as a double


% --- Executes during object creation, after setting all properties.
function banyak_karakter_chiper_CreateFcn(hObject, eventdata, handles)
% hObject    handle to banyak_karakter_chiper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
chiper_text_result= get(handles.chiperText, 'String');
key_dekripsi_one=get(handles.key_dekripsi1,'String');
key_dekripsi_two=get(handles.key_dekripsi2,'String');
key_dekripsi_three=get(handles.key_dekripsi3,'String');

chiper_text_result_cell={chiper_text_result};
key_dekripsi_one_cell={key_dekripsi_one};
key_dekripsi_two_cell={key_dekripsi_two};
key_dekripsi_three_cell={key_dekripsi_three};
writecell(chiper_text_result_cell,'ChiperText.txt')
writecell(key_dekripsi_one_cell,'Kunci Dekripsi 1.txt')
writecell(key_dekripsi_two_cell,'Kunci Dekripsi 2.txt')
writecell(key_dekripsi_three_cell,'Kunci Dekripsi 3.txt')



function similarity_Callback(hObject, eventdata, handles)
% hObject    handle to similarity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of similarity as text
%        str2double(get(hObject,'String')) returns contents of similarity as a double


% --- Executes during object creation, after setting all properties.
function similarity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to similarity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global biner;
switch get(hObject,'Tag')
    case 'radiobutton2'
        a=get(handles.radiobutton2,'String');
        biner =str2double(a);
    case 'radiobutton3'
        a=get(handles.radiobutton3,'String');
        biner =str2double(a);
end



function bit_edit_Callback(hObject, eventdata, handles)
% hObject    handle to bit_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bit_edit as text
%        str2double(get(hObject,'String')) returns contents of bit_edit as a double


% --- Executes during object creation, after setting all properties.
function bit_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bit_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
