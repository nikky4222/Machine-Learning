k=1;
res=zeros(64,3);
 for C=[0.01,0.03,0.1,0.3,1,3,10,30]
        for sigma=[0.01,0.03,0.1,0.3,1,3,10,30]
        model = svmTrain(X, y,C, @(x1, x2) gaussianKernel(x1, x2, sigma));
        predictions= svmPredict(model, Xval);
        val=mean(double(predictions ~= yval));
        res(k,:)=[C,sigma,val];
        k=k+1;
        end
 end
 B = sortrows(res,3);
C=B(1,1);
sigma=B(1,2);
model = svmTrain(X, y,C, @(x1, x2) gaussianKernel(x1, x2, sigma));
predictions= svmPredict(model, Xval);
val=mean(double(predictions ~= yval));
    