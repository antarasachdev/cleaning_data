Overview
This codebook describes the variables, data transformations, and tidy dataset created as part of the Getting and Cleaning Data Course Project.

The data comes from the Human Activity Recognition Using Smartphones Dataset and was processed to create a tidy dataset with the average of each measurement grouped by activity and subject.

Original Dataset
The original dataset contains data collected from 30 participants who performed six activities while wearing a smartphone equipped with accelerometers and gyroscopes. More details about the original dataset are available at the UCI Machine Learning Repository.

Variables in the Tidy Dataset
The tidy dataset (tidy_data.txt) contains the following variables:

subject

Description: The ID of the subject (1 to 30).
Type: Integer.
activity

Description: The activity performed by the subject (e.g., WALKING, SITTING).
Type: Factor (with six levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
Measurement Variables
These variables represent the mean of the selected features (mean and standard deviation measurements) for each subject and activity. They are normalized and bounded within [-1, 1].

Examples of variable names and their meanings:

TimeBodyAccelerometerMeanX: Average of the mean body acceleration in the X direction (time domain).
TimeBodyAccelerometerStdY: Average of the standard deviation of body acceleration in the Y direction (time domain).
FrequencyBodyGyroscopeMeanZ: Average of the mean gyroscope measurement in the Z direction (frequency domain).
FrequencyBodyAccelerometerMagnitudeStd: Average of the standard deviation of body acceleration magnitude (frequency domain).
Note: The variables have been renamed for clarity:

Prefix t → Time
Prefix f → Frequency
Acc → Accelerometer
Gyro → Gyroscope
Mag → Magnitude
BodyBody → Body
Transformations and Data Cleaning Steps
Download and Unzip the Dataset:
The original dataset was downloaded from the given URL and unzipped.

Merge Training and Test Sets:

Combined the training and test datasets into one dataset.
Extract Mean and Standard Deviation Measurements:

Selected only the columns that represent mean (mean()) and standard deviation (std()) measurements.
Use Descriptive Activity Names:

Replaced activity codes (1–6) with descriptive names (e.g., WALKING, SITTING).
Label Variables with Descriptive Names:

Applied transformations to make variable names more descriptive and readable.
Create Tidy Dataset:

Calculated the average of each measurement variable for each activity and each subject.
Saved the resulting tidy dataset to tidy_data.txt.
Dataset Summary
Number of Rows: 180 (30 subjects × 6 activities).
Number of Columns: 68 (1 subject + 1 activity + 66 measurement variables).
File Format: The dataset is saved as a space-separated text file (tidy_data.txt).
References
Original Dataset: Human Activity Recognition Using Smartphones Dataset.
Course: Coursera - Getting and Cleaning Data.
This CodeBook.md should provide a comprehensive overview of your project and the dataset transformations. Let me know if you'd like further refinements!
