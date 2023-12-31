% 최종 시간표의 선호도 반영 지수

% 1. 수강을 희망하는 과목의 총 수(선행과목 제외) = N
% 2. 선호도에 따라 희망 과목의 가중치 부여
% ex) 기계시스템제어(1순위), 열전달(2순위), 응용유체(3순위)
% -> 기시제 = 3, 열전달 = 2, 응용유체 = 1 (순위의 역순으로 가중치 부여)
% ( 기시제의 선행과목 총 수 + 1 (기시제까지 포함하기 위해))*가중치 = M1
% 100/(M1+M2+M3) = N
% N 값에 기시제 및 그것의 선행과목은 *3을 하여 시간표에 몇개가 반영되었는지 곱해줌
% 열전달은 N*2 에 시간표에 반영된 총 과목수를 곱해줌
% 만약 모든 희망과목과 선행과목이 시간표에 전부 반영이 되었다면 총 합이 100(%)이 나온다.
% 
