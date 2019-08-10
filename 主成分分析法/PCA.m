a1ALLFirst=zscore(ALLFirst);%数据标准化
rALLFirst=corrcoef(ALLFirst);%计算相关系数矩阵
%下面利用相关系数阵进行主成分分析，vec1的列为r的特征向量，即主成分系数
[vec1ALLFirst,lambdaALLFirst,rateALLFirst]=pcacov(rALLFirst);%lambda为r的特征值,rate为各个主成分的贡献率
contrALLFirst=cumsum(rateALLFirst);%计算累计贡献率
fALLFirst=repmat(sign(sum(vec1ALLFirst)),size(vec1ALLFirst,1),1);%g构造与vec1同维数的元素为正负1的矩阵
vec2ALLFirst=vec1ALLFirst.*fALLFirst;%修改特征向量的正负号，使得每个特征向量的分量和为正
numALLFirst=5;%num为选取主成分个数
dfALLFirst=ALLFirst *vec2ALLFirst(:,1:numALLFirst);%计算各个主成分数值
tfALLFirst=dfALLFirst*rateALLFirst(1:numALLFirst)/100;%计算上一指标各年的综合指标值
