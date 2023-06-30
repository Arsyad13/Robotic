clear all

NET.addAssembly('System.Drawing');

    AvailableFonts = System.Drawing.Text.InstalledFontCollection();
    for i=1:AvailableFonts.Families.Length
        disp(AvailableFonts.Families(i).Name);
    end
    
FontData = System.Drawing.Drawing2D.GraphicsPath();

text='T K I';
font=System.Drawing.FontFamily('Times New Roman');
style=cast(System.Drawing.FontStyle.Regular,'int32');
emSize=36;
origin=System.Drawing.Point(0,0);
format=System.Drawing.StringFormat();

FontData.AddString(text,font,style,emSize,origin,format);

for i=1:FontData.PathPoints.Length
    
    x(i)=FontData.PathPoints(i).X;
    y(i)=-FontData.PathPoints(i).Y;
end

plot(x,y)
x
y

% "T"
T1=x([1:44])
T2=y([1:44])
T1(end+1)=T1(1)
T2(end+1)=T2(1)

% "K"
K1=x([45:145])
K2=y([45:145])
K1(end+1)=K1(1)
K2(end+1)=K2(1)

%"I"
I1=x([146:end])
I2=y([146:end])
I1(end+1)=I1(1)
I2(end+1)=I2(1)
hold on


%Rescale
T1 = (T1/2.94)+365.35
T2 = (T2/2.8)+13.95
K1 = (K1/2.94)+365.35
K2 = (K2/2.8)+13.95
I1 = (I1/2.94)+365.35
I2 = (I2/2.8)+13.95


plot(T1,T2,'b')
plot(K1,K2,'b')
plot(I1,I2,'b')

plot([20,30,30,20,20],[75,75,-75,-75,75]) %A4 paper
hold off