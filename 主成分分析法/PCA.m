a1ALLFirst=zscore(ALLFirst);%���ݱ�׼��
rALLFirst=corrcoef(ALLFirst);%�������ϵ������
%�����������ϵ����������ɷַ�����vec1����Ϊr�����������������ɷ�ϵ��
[vec1ALLFirst,lambdaALLFirst,rateALLFirst]=pcacov(rALLFirst);%lambdaΪr������ֵ,rateΪ�������ɷֵĹ�����
contrALLFirst=cumsum(rateALLFirst);%�����ۼƹ�����
fALLFirst=repmat(sign(sum(vec1ALLFirst)),size(vec1ALLFirst,1),1);%g������vec1ͬά����Ԫ��Ϊ����1�ľ���
vec2ALLFirst=vec1ALLFirst.*fALLFirst;%�޸����������������ţ�ʹ��ÿ�����������ķ�����Ϊ��
numALLFirst=5;%numΪѡȡ���ɷָ���
dfALLFirst=ALLFirst *vec2ALLFirst(:,1:numALLFirst);%����������ɷ���ֵ
tfALLFirst=dfALLFirst*rateALLFirst(1:numALLFirst)/100;%������һָ�������ۺ�ָ��ֵ
