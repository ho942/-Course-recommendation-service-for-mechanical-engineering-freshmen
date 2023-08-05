rawWantedClasses = input('Input your course wish list (ex:["Biomechanics","Energy and Power Engineering"]):' );
prefer = input("Input your preference of each course(리스트 형태 ex:[1,2]): ");

N = length(class);
lectureTime = {1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13};
grade = ["2-1","2-2","3-1","3-2","4-1","4-2"];
reflectionRate = 0;
XXX = 0;
YY = [];

% 입력된 강의 이름을 데이터 베이스에서 찾기

WantedClasses = FindWantedClass(rawWantedClasses,class,N);
L = length(WantedClasses);
WCindex = [];

for i = 1:L
    idx = findClassIndex(WantedClasses(i),N,class);
    WCindex = [WCindex,idx];
end

% 선호도가 높은 순으로 수강희망 과목 리스트 정리

for i=1:L-1
    
    for j = i:L-1
        if prefer(j) > prefer(j+1)
       
            dummy = WCindex(j);
            WCindex(j) = WCindex(j+1);
            WCindex(j+1) = dummy;

            dummy2 = prefer(j);
            prefer(j) = prefer(j+1);
            prefer(j+1) = dummy2;

        end
    end
end

% 필수 수강 전공을 미리 TimeTable에 배치

TimeTable = zeros(13,5,6);
TimeTableName = zeros(13,5,6);
Credit = zeros(1,6);

[row2,col2]=find(class(2).time);

for i = 1:length(row2)

    TimeTable(row2(i),col2(i),1) = 1;
    TimeTableName(row2(i),col2(i),1) = 2;
end


[row3,col3]=find(class(3).time);

for i = 1:length(row3)

    TimeTable(row3(i),col3(i),1) = 1;
    TimeTableName(row3(i),col3(i),1) = 3;
end

Credit(1) = 6;

[row5,col5]=find(class(5).time);

for i = 1:length(row5)

    TimeTable(row5(i),col5(i),2) = 1;
    TimeTableName(row5(i),col5(i),2) = 5;
end


[row6,col6]=find(class(6).time);

for i = 1:length(row6)

    TimeTable(row6(i),col6(i),2) = 1;
    TimeTableName(row6(i),col6(i),2) = 6;
end

[row7,col7]=find(class(7).time);

for i = 1:length(row7)

    TimeTable(row7(i),col7(i),2) = 1;
    TimeTableName(row7(i),col7(i),2) = 7;
end

Credit(2) = 9;

[row8,col8]=find(class(8).time);

for i = 1:length(row8)

    TimeTable(row8(i),col8(i),3) = 1;
    TimeTableName(row8(i),col8(i),3) = 8;
end

Credit(3) = 3;

[row30,col30]=find(class(30).time);

for i = 1:length(row30)

    TimeTable(row30(i),col30(i),5) = 1;
    TimeTableName(row30(i),col30(i),5) = 30;
end

Credit(5) = 3;

[row31,col31]=find(class(31).time);

for i = 1:length(row31)

    TimeTable(row31(i),col31(i),6) = 1;
    TimeTableName(row31(i),col31(i),6) = 31;
end


Credit(6) = 3;

CannotAffordedClasses = [];


for i = 1:length(WCindex)

    requisiteList = class(WCindex(i)).requisite;

    [TimeTable,TimeTableName,Credit,cannotAffordedClasses,XX] = MakeTimeTable(WCindex(i),requisiteList,TimeTable,TimeTableName,Credit,class);
    CannotAffordedClasses = [CannotAffordedClasses,cannotAffordedClasses];
    XXX = XXX+(L-i+1)*XX;
    YY = [YY,XX];
end

for i = 1:L

    reflectionRate = reflectionRate + (100/XXX)*(L+1-i)*YY(i);
end



CreditTable = array2table(Credit,"VariableNames",["2-1","2-2","3-1","3-2","4-1","4-2"])
TimeTableFinal = cell(13,5,6);
for i = 1:6
    [row,col] = find(TimeTableName(:,:,i));
    for j = 1:length(row)
        TimeTableFinal(row(j),col(j),i) = {class(TimeTableName(row(j),col(j),i)).name};
    end
end
for i = 1:6
    
    cell2table(cat(2,lectureTime,TimeTableFinal(:,:,i)),'VariableNames',[grade(i),"Mon","Tue","Wed","Thu","Fri"])
end

unique(CannotAffordedClasses)
totalCredit = sum(Credit)
reflectionRate
