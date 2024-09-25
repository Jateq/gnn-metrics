data = updateddataset;  

features = data(:, 1:end-1);  
labels = data(:, end);  

knnModel = fitcknn(features, labels, 'NumNeighbors', 5);
predictedLabels = predict(knnModel, features);
confusionMatrix = confusionmat(labels, predictedLabels);

fprintf('Confusion Matrix:\n');
fprintf('                Predicted\n');
fprintf('                Enrolled   Graduated   Dropped Out\n');
fprintf('   Enrolled       %d          %d           %d\n', confusionMatrix(1, :));
fprintf('   Graduated      %d          %d           %d\n', confusionMatrix(2, :));
fprintf('   Dropped Out    %d          %d           %d\n', confusionMatrix(3, :));

