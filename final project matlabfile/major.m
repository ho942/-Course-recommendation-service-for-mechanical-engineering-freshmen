%%
% The data type was used as a structure to create a subject database.
% Start with class (1) in the order of Yonsei University Department of Mechanical Engineering.
% Thus, when main code call class name, information about the class comes out.
% time table is 

% 1st period at 9:00 am, 13th period at 9:00 pm
% 
% 
% times= zeros(13,5) ; % monday~friday. 1st period at 9:00 am ~ 13th period
% at 9:00 pm. default timetable layout.
% 
% % Reflect the timetable in the following way
% class1_times = times;
% class1_times(6:7,2) = 1;
% class1_times(7,4)=1;
% 
% 
% % Reflect the subject information in the following way
% class(1).name =  'Mechanical System Control'; % Subject name
% class(1).credit = 3; %credit
% class(1).requisite = ["Dynamics" "Mechanical Vibration"]; % requisite 
% class(1).sem = 2; % 1 for 1st semester, 2 for 2nd semester, and 0 if opened in all semesters. 
% class(1).time = class1_times; %timetable



%% Department of Mechanical Engineering Undergraduate Course Opening Courses
% "Creative Thinking in Mechanical Engineering"
% "Mechanics of Materials"
% "Thermodynamics"
% "Computer-aided Mechanical Engineering Design"
% "Fluid Mechanics"
% "Dynamics"
% "Mechanical Engineering Laboratory I"
% "Mechanical Engineering Laboratory II"
% "Mechanical Vibration"
% "Heat Transfer"
% "Manufacturing Process"
% "Mechanism Design"
% "Biomedical Mechanical Engineering"
% "Microsystems for Mechanical Engineering"
% "Applied Fluid Mechanics"
% "Mechanical Behaviors of Materials"
% "Electromagnetics and Applications"
% "Environmental Mechanical Engineering"
% "Undergraduate Independent Study I"
% "Design of Machine Element"
% "Advanced Mechanics of Materials"
% "Applied Thermodynamics"
% "Mechanical System Control"
% "Biomechanics"
% "Optical Engineering"
% "Net-Shaped Manufacturing System"
% "Energy and Power Engineering"
% "Nano Mechanical Engineering"
% "Undergraduate Independent Study II"
% "Creative Product Design"
% "Undergraduate Thesis"
% "Mechanical Engineering Seminar I"
% "Mechatronics"
% "Engineering Materials"

%% below real code


%------memo
% no class data included about junior seminar, UT seminar

%about time
% class(1).name="Creative Thinking in Mechanical Engineering";
% class(13).name="Biomedical Mechanical Engineering";
% class(25).name="Optical Engineering";
% class(26).name="Net-Shaped Manufacturing System";
%above classes are not held in 2022.


%name
class(1).name="Creative Thinking in Mechanical Engineering";
class(2).name="Mechanics of Materials";
class(3).name="Thermodynamics";
class(4).name="Computer-aided Mechanical Engineering Design";
class(5).name="Fluid Mechanics";
class(6).name="Dynamics";
class(7).name="Mechanical Engineering Laboratory I";
class(8).name="Mechanical Engineering Laboratory II";
class(9).name="Mechanical Vibration";
class(10).name="Heat Transfer";
class(11).name="Manufacturing Process";
class(12).name="Mechanism Design";
class(13).name="Biomedical Mechanical Engineering";
class(14).name="Microsystems for Mechanical Engineering";
class(15).name="Applied Fluid Mechanics";
class(16).name="Mechanical Behaviors of Materials";
class(17).name="Electromagnetics and Applications";
class(18).name="Environmental Mechanical Engineering";
class(19).name="Undergraduate Independent Study I";
class(20).name="Design of Machine Element";
class(21).name="Advanced Mechanics of Materials";
class(22).name="Applied Thermodynamics";
class(23).name="Mechanical System Control";
class(24).name="Biomechanics";
class(25).name="Optical Engineering";
class(26).name="Net-Shaped Manufacturing System";
class(27).name="Energy and Power Engineering";
class(28).name="Nano Mechanical Engineering";
class(29).name="Undergraduate Independent Study II";
class(30).name="Creative Product Design";
class(31).name="Undergraduate Thesis";
class(32).name="Mechanical Engineering Seminar I";
class(33).name="Mechatronics";
class(34).name="Engineering Materials";



%credit
class(1).credit=3;
class(2).credit=3;
class(3).credit=3;
class(4).credit=3;
class(5).credit=3;
class(6).credit=3;
class(7).credit=3;
class(8).credit=3;
class(9).credit=3;
class(10).credit=3;
class(11).credit=3;
class(12).credit=3;
class(13).credit=3;
class(14).credit=3;
class(15).credit=3;
class(16).credit=3;
class(17).credit=3;
class(18).credit=3;
class(19).credit=1;
class(20).credit=3;
class(21).credit=3;
class(22).credit=3;
class(23).credit=3;
class(24).credit=3;
class(25).credit=3;
class(26).credit=3;
class(27).credit=3;
class(28).credit=3;
class(29).credit=1;
class(30).credit=3;
class(31).credit=3;
class(32).credit=3;
class(33).credit=3;
class(34).credit=3;



%grade
class(1).grade=1;
class(2).grade=2;
class(3).grade=2;
class(4).grade=2;
class(5).grade=2;
class(6).grade=2;
class(7).grade=2;
class(8).grade=3;
class(9).grade=3;
class(10).grade=3;
class(11).grade=3;
class(12).grade=3;
class(13).grade=3;
class(14).grade=3;
class(15).grade=3;
class(16).grade=3;
class(17).grade=3;
class(18).grade=3;
class(19).grade=3;
class(20).grade=3;
class(21).grade=3;
class(22).grade=3;
class(23).grade=3;
class(24).grade=3;
class(25).grade=3;
class(26).grade=3;
class(27).grade=3;
class(28).grade=3;
class(29).grade=3;
class(30).grade=4;
class(31).grade=4;
class(32).grade=4;
class(33).grade=3;
class(34).grade=3;



%requisite %V checkers are written on website. 
class(1).requisite=[];
class(2).requisite=[];
class(3).requisite=[];
class(4).requisite=[];
class(5).requisite=[];
class(6).requisite=["Mechanics of Materials"];
class(7).requisite=["Mechanics of Materials"];
class(8).requisite=["Mechanics of Materials"];
class(9).requisite=["Dynamics"];%V
class(10).requisite=["Fluid Mechanics"	"Thermodynamics"	"Computer-aided Mechanical Engineering Design"];%V
class(11).requisite=["Mechanics of Materials"];
class(12).requisite=["Mechanics of Materials"];
class(13).requisite=["Mechanics of Materials"];
class(14).requisite=["Mechanics of Materials"	"Dynamics"];
class(15).requisite=["Fluid Mechanics"];%V
class(16).requisite=["Mechanics of Materials"	"Advanced Mechanics of Materials"];%V
class(17).requisite=[];
class(18).requisite=["Fluid Mechanics"];
class(19).requisite=[];
class(20).requisite=["Mechanics of Materials"	"Advanced Mechanics of Materials"	"Computer-aided Mechanical Engineering Design"];%V
class(21).requisite=["Mechanics of Materials"];%V
class(22).requisite=["Thermodynamics"];%V
class(23).requisite=["Dynamics"	"Mechanical Vibration"];%V
class(24).requisite=["Fluid Mechanics"	"Mechanics of Materials"];%V
class(25).requisite=["Electromagnetics and Applications"];%V
class(26).requisite=["Mechanics of Materials"	"Manufacturing Process"];
class(27).requisite=["Fluid Mechanics"	"Thermodynamics"	"Heat Transfer"	"Computer-aided Mechanical Engineering Design"];%V
class(28).requisite=["Mechanics of Materials"	"Thermodynamics"];
class(29).requisite=[];
class(30).requisite=["Mechanics of Materials"	"Thermodynamics"	"Computer-aided Mechanical Engineering Design"	"Fluid Mechanics"	"Dynamics"	"Mechatronics"];
class(31).requisite=["Mechanics of Materials"	"Thermodynamics"	"Fluid Mechanics"	"Dynamics"];
class(32).requisite=[];
class(33).requisite=["Mechanics of Materials"	"Dynamics"];
class(34).requisite=["Mechanics of Materials"	"Thermodynamics"];



%sem
class(1).sem=1;
class(2).sem=1;
class(3).sem=1;
class(4).sem=1;
class(5).sem=2;
class(6).sem=2;
class(7).sem=2;
class(8).sem=1;
class(9).sem=1;
class(10).sem=1;
class(11).sem=1;
class(12).sem=1;
class(13).sem=1;
class(14).sem=1;
class(15).sem=1;
class(16).sem=1;
class(17).sem=1;
class(18).sem=1;
class(19).sem=1;
class(20).sem=2;
class(21).sem=2;
class(22).sem=2;
class(23).sem=2;
class(24).sem=2;
class(25).sem=2;
class(26).sem=2;
class(27).sem=2;
class(28).sem=2;
class(29).sem=2;
class(30).sem=0;
class(31).sem=0;
class(32).sem=2;
class(33).sem=2;
class(34).sem=2;




%time

times= zeros(13,5) ; % 1st period at 9:00 am ~ 13th period

% base 
class1_times = times;
class2_times = times;
class3_times = times;
class4_times = times;
class5_times = times;
class6_times = times;
class7_times = times;
class8_times = times;
class9_times = times;
class10_times = times;
class11_times = times;
class12_times = times;
class13_times = times;
class14_times = times;
class15_times = times;
class16_times = times;
class17_times = times;
class18_times = times;
class19_times = times;
class20_times = times;
class21_times = times;
class22_times = times;
class23_times = times;
class24_times = times;
class25_times = times;
class26_times = times;
class27_times = times;
class28_times = times;
class29_times = times;
class30_times1= times;
class30_times2= times;
class31_times1 = times;
class31_times2 = times;
class32_times = times;
class33_times = times;
class34_times = times;

%allocate data from information
% class1_times = 1;	class1_times = 1; % freshman
class2_times(2,1) =1;	class2_times(2:3,3) =1;
class3_times(5,1) =1;	class3_times(4:5,3) =1;
class4_times(6:7,1) =1;	class4_times(7:8,3) =1;
class5_times(2:3,2) =1;	class5_times(1,4) =1;
class6_times(1,3) =1;	class6_times(6:7,5) =1;
class7_times(9:10,2) =1;	class7_times(8:10,4) =1;
class8_times(10:11,1) =1;	class8_times(7:9,3)=1;
class9_times(8:9,1) =1;	class9_times(6,3) =1;
class10_times(2:1) =1;	class10_times(2:3,3) =1;
class11_times(5:6,2)=1;	class11_times(7,4) =1;
class12_times(7:8,2) =1;	class12_times(8,4) =1;
% class13_times =1;	class13_times =1; % "Biomedical Mechanical Engineering"
% is not allocated
class14_times(9,2) =1;	class14_times(4:5,4) =1;
class15_times(2:3,2) =1;	class15_times(3,4) =1;
class16_times(8:9,1) =1;	class16_times(6,3) =1;
class17_times(5:6,2) =1;	class17_times(7,4) =1;
class18_times(6:7,1) =1;	class18_times(1,3) =1;
class19_times(1,5) =1;
class20_times(1:2,1) =1;	class20_times(3,3) =1;
class21_times(7:8,1) =1;	class21_times(2,3) =1;
class22_times(2,1) =1;	class22_times(5:6,4) =1;
class23_times(6:7,2) =1;	class23_times(7,4) =1;
class24_times(5:6,1) =1;	class24_times(6,3) =1;
% class25_times =1;	class25_times =1; % no class in 2022
% class26_times =1;	class26_times =1; % no class in 2022
class27_times(7:8,1) =1;	class27_times(2,3) =1;
class28_times(6:7,2) =1;	class28_times(7,4) =1;
class29_times(1,5) =1;
class30_times1(2:3,2) =1;	class30_times1(2:3,4) =1;class30_times2(9:10,1) =1;	class30_times2(9:10,3) =1; % acting lecture is not considered.
class31_times1(7:8,3) =1;	class31_times1(3,5) =1;class31_times2(5,2) =1;	class31_times2(2:3,4)=1;
class32_times(8:10,5) =1;	
class33_times(8,2) =1;	class33_times(5:6,4) =1;
class34_times(5:6,1) =1;	class34_times(6,3) =1;


% allocate data to class;

class(1).time=class1_times;

class(2).time=class2_times;

class(3).time=class3_times;

class(4).time=class4_times;

class(5).time=class5_times;

class(6).time=class6_times;

class(7).time=class7_times;

class(8).time=class8_times;

class(9).time=class9_times;

class(10).time=class10_times;

class(11).time=class11_times;

class(12).time=class12_times;

class(13).time=class13_times;

class(14).time=class14_times;

class(15).time=class15_times;

class(16).time=class16_times;

class(17).time=class17_times;

class(18).time=class18_times;

class(19).time=class19_times;

class(20).time=class20_times;

class(21).time=class21_times;

class(22).time=class22_times;

class(23).time=class23_times;

class(24).time=class24_times;

class(25).time=class25_times;

class(26).time=class26_times;

class(27).time=class27_times;

class(28).time=class28_times;

class(29).time=class29_times;

class(30).time=class30_times1;

 class(31).time= class31_times2;

class(32).time=class32_times;

class(33).time=class33_times;

class(34).time=class34_times;

