function[trainData,testData]=randD(x)
%将数据随机划分为训练样本集和测试样本集
j=1;
k=1;
tr=zeros(250,252);
test=zeros(250,252);
for i=1:500
    if(rand>=0.5)
        if(j>250)
            for a=1:252
                test(k,a)=x(i,a);
            end
            k=k+1;
        else
            for a=1:252
                tr(j,a)=x(i,a);
            end
            j=j+1;
        end
    else
        if(k>250)
            for a=1:252
                tr(j,a)=x(i,a);
            end
            j=j+1;
        else
            for a=1:252
                test(k,a)=x(i,a);
            end
            k=k+1;
        end
    end
end
trainData=tr;
testData=test;