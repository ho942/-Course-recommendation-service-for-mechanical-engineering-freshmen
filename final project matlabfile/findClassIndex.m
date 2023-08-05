% 클레스 이름에 해당하는 클레스 인덱스 찾기

function idx = findClassIndex(ClassName,N,class)

idx = 0;

for i = 1:N

    if class(i).name == ClassName
        idx = i;
    
    end
end
