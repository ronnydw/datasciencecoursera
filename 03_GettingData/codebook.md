DATA DICTIONARY - Human Activity Recognition Using Smartphones Data Set
 
1 subject: numerical id in the range from 1 to 30 representing the subject (person) who performed the activity
2 activity: string representing one of the 6 activities being measured:
			LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS 

The 66 features (3..68) selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals 

The feature names have the format:
time|frequency.{measurument}.mean|std.X|Y|Z

with:
	time|frequency:
		time: time domain signals, captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		frequency: frequency domain signals, by applying a Fast Fourier Transform (FFT) on the time domain signals.

	{measurement}:
		BodyAcc
		BodyAccMag
		BodyAccJerk
		BodyAccJerkMag
		BodyGyro
		BodyGyroMag
		BodyGyroJerk
		BodyGyroJerkMag
		GravityAcc
		GravityAccMag

	    with
			Body: body part of the acceleration signal
			Gravity: gravity part of the acceleration signal
			Acc: acceleration signals
			Gyro: gyroscope signals
			Mag: magnitude of the 3D signals calculated using the Euclidean norm
			Jerk: Jerk signals derived from the body linear acceleration and angular velocity

	meam|std:
		mean: mean value of all measurements for a particular subject and activity
		std: standard deviation for all measurements for a particular subject and activity

	X|Y|Z: denote 3-axial signals, in the X, Y, and Z directions

All these features are numeric normalised values (no units).

Ordered list of the variable names in the dataset:

1 subject 
2 activity
3 time.BodyAcc.mean.X
4 time.BodyAcc.mean.Y
5 time.BodyAcc.mean.Z
6 time.BodyAcc.std.X
7 time.BodyAcc.std.Y
8 time.BodyAcc.std.Z
9 time.GravityAcc.mean.X
10 time.GravityAcc.mean.Y
11 time.GravityAcc.mean.Z
12 time.GravityAcc.std.X
13 time.GravityAcc.std.Y
14 time.GravityAcc.std.Z
15 time.BodyAccJerk.mean.X
16 time.BodyAccJerk.mean.Y
17 time.BodyAccJerk.mean.Z
18 time.BodyAccJerk.std.X
19 time.BodyAccJerk.std.Y
20 time.BodyAccJerk.std.Z
21 time.BodyGyro.mean.X
22 time.BodyGyro.mean.Y
23 time.BodyGyro.mean.Z
24 time.BodyGyro.std.X
25 time.BodyGyro.std.Y
26 time.BodyGyro.std.Z
27 time.BodyGyroJerk.mean.X
28 time.BodyGyroJerk.mean.Y
29 time.BodyGyroJerk.mean.Z
30 time.BodyGyroJerk.std.X
31 time.BodyGyroJerk.std.Y
32 time.BodyGyroJerk.std.Z
33 time.BodyAccMag.mean
34 time.BodyAccMag.std
35 time.GravityAccMag.mean
36 time.GravityAccMag.std
37 time.BodyAccJerkMag.mean
38 time.BodyAccJerkMag.std
39 time.BodyGyroMag.mean
40 time.BodyGyroMag.std
41 time.BodyGyroJerkMag.mean
42 time.BodyGyroJerkMag.std
43 frequency.BodyAcc.mean.X
44 frequency.BodyAcc.mean.Y
45 frequency.BodyAcc.mean.Z
46 frequency.BodyAcc.std.X
47 frequency.BodyAcc.std.Y
48 frequency.BodyAcc.std.Z
49 frequency.BodyAccJerk.mean.X
50 frequency.BodyAccJerk.mean.Y
51 frequency.BodyAccJerk.mean.Z
52 frequency.BodyAccJerk.std.X
53 frequency.BodyAccJerk.std.Y
54 frequency.BodyAccJerk.std.Z
55 frequency.BodyGyro.mean.X
56 frequency.BodyGyro.mean.Y
57 frequency.BodyGyro.mean.Z
58 frequency.BodyGyro.std.X
59 frequency.BodyGyro.std.Y
60 frequency.BodyGyro.std.Z
61 frequency.BodyAccMag.mean
62 frequency.BodyAccMag.std
63 frequency.BodyAccJerkMag.mean
64 frequency.BodyAccJerkMag.std
65 frequency.BodyGyroMag.mean
66 frequency.BodyGyroMag.std
67 frequency.BodyGyroJerkMag.mean
68 frequency.BodyGyroJerkMag.std

Ackowledgement:
Input data set made available by 
Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science 