This codebook describes each variable (column) in the tidy data file. 

|Variables      |Description    |
|Body       |Signal based on the body of the subject, one of two components derived from the time based signals on the phone's accelerometer
|Freq       |Measurement based on the "frequency" domain, taken as a Fast Fourier Transform of the time-based signals
|Gravity    |Signal based on gravity, second of the two measurement components derived from the phone's accelerometer
|Gyro       |Measurement taken from the gyroscope on the phone
|Jerk       |Measurement of sudden movement, based on body acceleration and angular velocity
|Mag        |Measurement of the magnitude using the Euclidean norm
|Mean       |Indicates that the measurement is a mean within the original Human Activity Recognition data set
|meanOf     |Indicates that the measurement is a mean in the tidy data taken over all experiments for a particular activity, person and feature
|Stdev      |Indicates that the measurement is a standard deviation within the original Human Activity Recognition data set
|Time       |Measurement based on the "time" domain. Measurements taken from the phone were measured at a constant rate of 50Hz.
|X          |Measurement taken along the X axis (3-dimensional)
|Y          |Measurement taken along the Y axis (3-dimensional)
|Z          |Measurement taken along the Z axis (3-dimensional)
|1          |`subject`         |integer|unique identifier for the participant with a range of `1` to `30`
|2          |`activity`        |character| `walking` \\ `walkingupstairs` \\ `walkingdownstairs` \\ `sitting` \\ `standing` \\ `laying`
|3          |`meanOfTimeBodyAccMeanX`|numeric|mean of the time domain body acceleration means (X axis)
|4          |`meanOfTimeBodyAccMeanY`|numeric|mean of the time domain body acceleration means (Y axis)
|5          |`meanOfTimeBodyAccMeanZ`|numeric|mean of the time domain body acceleration means (Z axis)
|6          |`meanOfTimeBodyAccStdevX`|numeric|mean of the time domain body acceleration standard deviations (X axis)
|7          |`meanOfTimeBodyAccStdevY`|numeric|mean of the time domain body acceleration standard deviations (Y axis)
|8          |`meanOfTimeBodyAccStdevZ`|numeric|mean of the time domain body acceleration standard deviations (Z axis)
|9          |`meanOfTimeGravityAccMeanX`|numeric|mean of the time domain gravity acceleration means (X axis)
|10         |`meanOfTimeGravityAccMeanY`|numeric|mean of the time domain gravity acceleration means (Y axis)
|11         |`meanOfTimeGravityAccMeanZ`|numeric|mean of the time domain gravity acceleration means (Z axis))
|12         |`meanOfTimeGravityAccStdevX`|numeric|mean of the time domain gravity acceleration standard deviations (X axis)
|13         |`meanOfTimeGravityAccStdevY`|numeric|mean of the time domain gravity acceleration standard deviations (Y axis)
|14         |`meanOfTimeGravityAccStdevZ`|numeric|mean of the time domain gravity acceleration standard deviations (Z axis)
|15         |`meanOfTimeBodyAccJerkMeanX`|numeric|mean of the time domain body acceleration jerk means (X axis)
|16         |`meanOfTimeBodyAccJerkMeanY`|numeric|mean of the time domain body acceleration jerk means (Y axis)
|17         |`meanOfTimeBodyAccJerkMeanZ`|numeric|mean of the time domain body acceleration jerk means (Z axis)
|18         |`meanOfTimeBodyAccJerkStdevX`|numeric|mean of the time domain body acceleration jerk standard deviations (X axis)
|19         |`meanOfTimeBodyAccJerkStdevY`|numeric|mean of the time domain body acceleration jerk standard deviations (Y axis)
|20         |`meanOfTimeBodyAccJerkStdevZ`|numeric|mean of the time domain body acceleration jerk standard deviations (Z axis)
|21         |`meanOfTimeBodyGyroMeanX`|numeric|mean of the time domain body gyroscope means (X axis)
|22         |`meanOfTimeBodyGyroMeanY`|numeric|mean of the time domain body gyroscope means (Y axis)
|23         |`meanOfTimeBodyGyroMeanZ`|numeric|mean of the time domain body gyroscope means (Z axis)
|24         |`meanOfTimeBodyGyroStdevX`|numeric|mean of the time domain body gyroscope standard deviations (X axis)
|25         |`meanOfTimeBodyGyroStdevY`|numeric|mean of the time domain body gyroscope standard deviations (Y axis)
|26         |`meanOfTimeBodyGyroStdevZ`|numeric|mean of the time domain body gyroscope standard deviations (Z axis)
|27         |`meanOfTimeBodyGyroJerkMeanX`|numeric|mean of the time domain body gyroscope jerk means (X axis)
|28         |`meanOfTimeBodyGyroJerkMeanY`|numeric|mean of the time domain body gyroscope jerk means (Y axis)
|29         |`meanOfTimeBodyGyroJerkMeanZ`|numeric|mean of the time domain body gyroscope jerk means (Z axis)
|30         |`meanOfTimeBodyGyroJerkStdevX`|numeric|mean of the time domain body gyroscope jerk standard deviations (X axis)
|31         |`meanOfTimeBodyGyroJerkStdevY`|numeric|mean of the time domain body gyroscope jerk standard deviations (Y axis)
|32         |`meanOfTimeBodyGyroJerkStdevZ`|numeric|mean of the time domain body gyroscope jerk standard deviations (Z axis)
|33         |`meanOfTimeBodyAccMagMean`|numeric|mean of the time domain body acceleration magnitude means
|34         |`meanOfTimeBodyAccMagStdev`|numeric|mean of the time domain body acceleration magnitude standard deviations
|35         |`meanOfTimeGravityAccMagMean`|numeric|mean of the time domain gravity acceleration magnitude means
|36         |`meanOfTimeGravityAccMagStdev`|numeric|mean of the time domain gravity acceleration magnitude standard deviation
|37         |`meanOfTimeBodyAccJerkMagMean`|numeric|mean of the time domain body acceleration jerk magnitude means
|38         |`meanOfTimeBodyAccJerkMagStdev`|numeric|mean of the time domain body acceleration jerk magnitude standard deviation
|39         |`meanOfTimeBodyGyroMagMean`|numeric|mean of the time domain body gyroscope magnitude means
|40         |`meanOfTimeBodyGyroMagStdev`|numeric|mean of the time domain body gyroscope magnitude standard deviations
|41         |`meanOfTimeBodyGyroJerkMagMean`|numeric|mean of the time domain body gyroscope jerk magnitude means
|42         |`meanOfTimeBodyGyroJerkMagStdev`|numeric|mean of time domain body gyroscope jerk magnitude standard deviations
|43         |`meanOfFreqBodyAccMeanX`|numeric|mean of the frequency domain body acceleration means (X axis)
|44         |`meanOfFreqBodyAccMeanY`|numeric|mean of the frequency domain body acceleration means (Y axis)
|45         |`meanOfFreqBodyAccMeanZ`|numeric|mean of the frequency domain body acceleration means (Z axis)
|46         |`meanOfFreqBodyAccStdevX`|numeric|mean of the frequency domain body acceleration standard deviations (X axis)
|47         |`meanOfFreqBodyAccStdevY`|numeric|mean of the frequency domain body acceleration standard deviations (Y axis)
|48         |`meanOfFreqBodyAccStdevZ`|numeric|mean of the frequency domain body acceleration standard deviations (Z axis)
|49         |`meanOfFreqBodyAccJerkMeanX`|numeric|mean of the frequency domain body acceleration jerk means (X axis)
|50         |`meanOfFreqBodyAccJerkMeanY`|numeric|mean of the frequency domain body acceleration jerk means (Y axis)
|51         |`meanOfFreqBodyAccJerkMeanZ`|numeric|mean of the frequency domain body acceleration jerk means (Z axis)
|52         |`meanOfFreqBodyAccJerkStdevX`|numeric|mean of the frequency domain body acceleration jerk standard deviations (X axis)
|53         |`meanOfFreqBodyAccJerkStdevY`|numeric|mean of the frequency domain body acceleration jerk standard deviations (Y axis)
|54         |`meanOfFreqBodyAccJerkStdevZ`|numeric|mean of the frequency domain body acceleration jerk standard deviations (Z axis)
|55         |`meanOfFreqBodyGyroMeanX`|numeric|mean of the frequency domain body gyroscope means (X axis)
|56         |`meanOfFreqBodyGyroMeanY`|numeric|mean of the frequency domain body gyroscope means (Y axis)
|57         |`meanOfFreqBodyGyroMeanZ`|numeric|mean of the frequency domain body gyroscope means (Z axis)
|58         |`meanOfFreqBodyGyroStdevX`|numeric|mean of the frequency domain body gyroscope standard deviations (X axis)
|59         |`meanOfFreqBodyGyroStdevY`|numeric|mean of the frequency domain body gyroscope standard deviations (Y axis)
|60         |`meanOfFreqBodyGyroStdevZ`|numeric|mean of the frequency domain body gyroscope standard deviations (Z axis)
|61         |`meanOfFreqBodyAccMagMean`|numeric|mean of the frequency domain body acceleration magnitude means
|62         |`meanOfFreqBodyAccMagStdev`|numeric|mean of the frequency domain body acceleration magnitude standard deviations
|63         |`meanOfFreqBodyAccJerkMagMean`|numeric|mean of the frequency domain body acceleration jerk magnitude means
|64         |`meanOfFreqBodyAccJerkMagStdev`|numeric|mean of the frequency domain body acceleration jerk magnitude standard deviations
|65         |`meanOfFreqBodyGyroMagMean`|numeric|mean of the frequency domain body gyroscope magnitude means
|66         |`meanOfFreqBodyGyroMagStdev`|numeric|mean of the frequency domain body gyroscope magnitude standard deviations
|67         |`meanOfFreqBodyGyroJerkMagMean`|numeric|mean of the frequency domain body gyroscope jerk magnitude means
|68         |`meanOfFreqBodyGyroJerkMagStdev`|numeric|mean of the frequency domain body gyroscope jerk magnitude standard deviations