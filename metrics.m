totalPredictions = sum(confusionMatrix(:));
truePositives = sum(diag(confusionMatrix));
accuracy = truePositives / totalPredictions;
fprintf('Overall Accuracy: %.2f%%\n', accuracy * 100);

for class = 1:3
    TP = confusionMatrix(class, class);
    FP = sum(confusionMatrix(:, class)) - TP;  
    FN = sum(confusionMatrix(class, :)) - TP;  

    precision = TP / (TP + FP);  
    recall = TP / (TP + FN);    

    fprintf('Class %d (0: Enrolled, 1: Graduated, 2: Dropped Out):\n', class);
    fprintf('  Precision: %.2f%%\n', precision * 100);
    fprintf('  Recall: %.2f%%\n', recall * 100);
end


