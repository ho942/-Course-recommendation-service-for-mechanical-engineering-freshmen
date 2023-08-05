function [timetable,timetableName,Credit,cannotAffordedClasses,XX] = MakeTimeTable(WCindex,requisiteList,timetable,timetableName,Credit,class)


N = length(class);
L = length(requisiteList);
k=1;
cannotAffordedClasses = [];

for i = 1:L
    
    % 선행과목 리스트 내 각 과목 index 도출
    idx = findClassIndex(requisiteList(i),N,class);

    [row,col] = find(class(idx).time);
    
    if isempty(find(timetableName==idx))

        while k <= 6
            
            % 강의가 홀수 학기에 열리는지 확인
            if class(idx).sem == 1 && rem(k,2) == 0
        
                k = k+1;
            end   

            if class(idx).sem == 2 && rem(k,2) == 1   

                k = k+1;
            end 

            if k > 6
                cannotAffordedClasses = [cannotAffordedClasses, requisiteList(i:end)];

                break

            end
            
            if Credit(k)+class(idx).credit <= 15
            
                if max(timetable(:,:,k)+class(idx).time)<=1

                    timetable(:,:,k) = timetable(:,:,k)+class(idx).time;
                    Credit(k) = Credit(k)+ class(idx).credit ;
                
                    for m=1:length(col)

                        timetableName(row(m),col(m),k) = idx;
                
                    end
                    break
                else
                    k = k+1;
                    
                end
            
            end
        end
    else
        k = k+1;
     end
       
    % 선행과목을 한 학기에 두개를 들을 수 없으므로 다음학기로 이동
    
    if k > 6
        cannotAffordedClasses = [cannotAffordedClasses, requisiteList(i:end)];
        break
    end
end

% 선호 과목을 추가
idx = WCindex;
[row,col] = find(class(idx).time);
if k > 6
    cannotAffordedClasses = [cannotAffordedClasses,requisiteList(i:end)];
end



while k <=6

    if isempty(find(timetableName==idx))

     % 강의가 홀수 학기에 열리는지 확인
     if class(idx).sem == 1 && rem(k,2) == 0
        
         k = k+1;
     end   

     if class(idx).sem == 2 && rem(k,2) == 1   

         k = k+1;
     end          

     if Credit(k)+class(idx).credit <= 15
            
           if max(timetable+class(idx).time)<=1

               timetable(:,:,k) = timetable(:,:,k)+class(idx).time;
               Credit(k) = Credit(k)+ class(idx).credit ;
                
               for m=1:length(col)

                    timetableName(row(m),col(m),k) = idx;
                
               end
                break
            end
     end
    else
        k = k+1;
    end     
end

XX = L+1-length(cannotAffordedClasses);