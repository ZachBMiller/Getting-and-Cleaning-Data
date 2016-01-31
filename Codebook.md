The variables in the two dataframes created by run_analysis.R are as follows:

 [1] "subject"                         
 [2] "activity"                        
 [3] "timeBodyAcc mean X"              
 [4] "timeBodyAcc mean Y"              
 [5] "timeBodyAcc mean Z"              
 [6] "timeBodyAcc std X"               
 [7] "timeBodyAcc std Y"               
 [8] "timeBodyAcc std Z"               
 [9] "timeGravityAcc mean X"           
[10] "timeGravityAcc mean Y"           
[11] "timeGravityAcc mean Z"           
[12] "timeGravityAcc std X"            
[13] "timeGravityAcc std Y"            
[14] "timeGravityAcc std Z"            
[15] "timeBodyAccJerk mean X"          
[16] "timeBodyAccJerk mean Y"          
[17] "timeBodyAccJerk mean Z"          
[18] "timeBodyAccJerk std X"           
[19] "timeBodyAccJerk std Y"           
[20] "timeBodyAccJerk std Z"           
[21] "timeBodyGyro mean X"             
[22] "timeBodyGyro mean Y"             
[23] "timeBodyGyro mean Z"             
[24] "timeBodyGyro std X"              
[25] "timeBodyGyro std Y"              
[26] "timeBodyGyro std Z"              
[27] "timeBodyGyroJerk mean X"         
[28] "timeBodyGyroJerk mean Y"         
[29] "timeBodyGyroJerk mean Z"         
[30] "timeBodyGyroJerk std X"          
[31] "timeBodyGyroJerk std Y"          
[32] "timeBodyGyroJerk std Z"          
[33] "timeBodyAccMag mean"             
[34] "timeBodyAccMag std"              
[35] "timeGravityAccMag mean"          
[36] "timeGravityAccMag std"           
[37] "timeBodyAccJerkMag mean"         
[38] "timeBodyAccJerkMag std"          
[39] "timeBodyGyroMag mean"            
[40] "timeBodyGyroMag std"             
[41] "timeBodyGyroJerkMag mean"        
[42] "timeBodyGyroJerkMag std"         
[43] "freqBodyAcc mean X"              
[44] "freqBodyAcc mean Y"              
[45] "freqBodyAcc mean Z"              
[46] "freqBodyAcc std X"               
[47] "freqBodyAcc std Y"               
[48] "freqBodyAcc std Z"               
[49] "freqBodyAcc meanFreq X"          
[50] "freqBodyAcc meanFreq Y"          
[51] "freqBodyAcc meanFreq Z"          
[52] "freqBodyAccJerk mean X"          
[53] "freqBodyAccJerk mean Y"          
[54] "freqBodyAccJerk mean Z"          
[55] "freqBodyAccJerk std X"           
[56] "freqBodyAccJerk std Y"           
[57] "freqBodyAccJerk std Z"           
[58] "freqBodyAccJerk meanFreq X"      
[59] "freqBodyAccJerk meanFreq Y"      
[60] "freqBodyAccJerk meanFreq Z"      
[61] "freqBodyGyro mean X"             
[62] "freqBodyGyro mean Y"             
[63] "freqBodyGyro mean Z"             
[64] "freqBodyGyro std X"              
[65] "freqBodyGyro std Y"              
[66] "freqBodyGyro std Z"              
[67] "freqBodyGyro meanFreq X"         
[68] "freqBodyGyro meanFreq Y"         
[69] "freqBodyGyro meanFreq Z"         
[70] "freqBodyAccMag mean"             
[71] "freqBodyAccMag std"              
[72] "freqBodyAccMag meanFreq"         
[73] "freqBodyBodyAccJerkMag mean"     
[74] "freqBodyBodyAccJerkMag std"      
[75] "freqBodyBodyAccJerkMag meanFreq" 
[76] "freqBodyBodyGyroMag mean"        
[77] "freqBodyBodyGyroMag std"         
[78] "freqBodyBodyGyroMag meanFreq"    
[79] "freqBodyBodyGyroJerkMag mean"    
[80] "freqBodyBodyGyroJerkMag std"     
[81] "freqBodyBodyGyroJerkMag meanFreq"

A description of how this data and how it was collected follows:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


In creating the tidy dataframs selecteddata and averages, only variables realted mean and standard deviation were kept.
For averages, the observations were grouped by subject then activity, and then the mean was calculated for each varible
for each of the grouped observations.
