function WantedClasses = FindWantedClass(rawWantedClasses,class,N)

s = length(rawWantedClasses);
WantedClasses = [];
S = length(WantedClasses);
lowerClassNameList = [];
for i = 1:N
    
    lowerClassNameList = [lowerClassNameList,lower(class(i).name)];
end

for i = 1:s
    D = S;
    for j = 1:N
        
        if strcmp(lower(rawWantedClasses(i)),lowerClassNameList(j))

            WantedClasses = [WantedClasses, class(j).name];
        end
    end
    if D == length(WantedClasses)
         
        error('Wrong Class Name: %s', rawWantedClasses(i))
    end
end
