# 7-Minute Workout (HICT) #

## Description ##

[7-Minute Workout (HICT)](https://apps.garmin.com/en-US/apps/65a44a9d-465d-4e76-a866-c0667e51cf98) application for Garmin watches.

This watch application drives you through the execution of 13 exercises as described in the article from ACSM'S Health & Fitness Journal:
_[High-Intensity Circuit Training Using Body Weight: Maximum Results With Minimal Investment](http://journals.lww.com/acsm-healthfitness/Fulltext/2013/05000/HIGH_INTENSITY_CIRCUIT_TRAINING_USING_BODY_WEIGHT_.5.aspx)_.

The watch displays a timer for the 30-second exercises followed by 10-second rest period (configurable).

Number of exercises, duration of exercises and rest periods are configurable on the watch menu or through Garmin Connect Mobile.
A long vibration will trigger at the beginning and at the end of each exercise.
A short vibration will trigger every 10 seconds during the exercise.
Sound notification is not supported.

Four activity types are available:

- 7-minute workout: 13 exercises from HICT program are repeated, activity is saved as cardio training
- Cardio: activity is saved as cardio training
- Strength: activity is saved as strength training
- Flexibility: activity is saved as flexibility training

The application supports heart-rate monitor (HRM) and temperature sensor (Tempe).

Use the menu button to configure:

- Activity type
- Number of exercises
- Duration of exercise, in seconds
- Duration of rest period, in seconds
- Notification policy: none, start and end, every 10 seconds

If you achieve at least half of the session, the activity is recorded in your Garmin profile.

The activity in your Garmin profile will include basic information such as date, time, total activity time.

- Each exercise and rest period corresponds to a lap.
- Heart-rate graph is included if a heart-rate monitor is used.
- Temperature graph is included if a temperature sensor is used.
- Calories will be automatically calculated if and only if a heart-rate monitor is used.

![Capture](dist/images/capture1.png)
![Capture](dist/images/capture2.png)
![Capture](dist/images/capture3.png)
![Capture](dist/images/capture4.png)
![Capture](dist/images/capture5.png)

## Installation ##

Install from Garmin's [Connect IQ Store](https://apps.garmin.com/en-US/apps/65a44a9d-465d-4e76-a866-c0667e51cf98) or from Garmin Connect Mobile.

## Support ##

Please submit questions, issues and enhancement requests on this project's [issue tracker](https://bitbucket.org/obagot/connectiq-hict/issues).

Available languages:

- Danish (partly),
- English,
- French,
- German,
- Italian,
- Polish,
- Russian,
- Spanish,
- Swedish.

Supported models:

- Approach® S60.
- D2 Charlie and D2 Delta series,
- Descent™ Mk1,
- fēnix® 3, fēnix® 5 and fēnix® 6 series,
- Forerunner® series, except Forerunner® 45,
- MARQ™ series,
- Venu™,
- vívoactive®, vívoactive® HR, vívoactive® 3 and vívoactive® 4 series,

## Development ##

Source code is made available under the [MIT license](https://opensource.org/licenses/MIT).

[Pull requests](https://bitbucket.org/obagot/connectiq-hict/pull-requests) and translations are welcomed!

When [forking](https://bitbucket.org/obagot/connectiq-hict/fork), please remember to change the application ID in *manifest.xml*, to prevent issues between both applications on the watch.

## History ##

### v.1.22 - 2020-03-xx ###

- Change start delay to 5 seconds, instead of same value as rest delay.

### v.1.21 - 2020-02-01 ###

- New options menu format for modern watches (Connect IQ 3+).
- Fix "workou" session name.
- Upgrade to Connect IQ SDK 3.1.7.

### v.1.20 - 2020-01-10 ###

- Add Swedish support, thanks to Erik.
- Fix temperature units based on Garmin Connect settings.

### v.1.19 - 2019-11-29 ###

- Add support for new watches.
- Add support for repetitive activities in same workout.
- Add Russian support, thanks to Korneev.
- Upgrade to Connect IQ SDK 3.1.6.

### v.1.18 - 2017-12-02 ###

- Add Italian support, thanks to Raghnor.
- Add support for Descent™ Mk1.
- Add temperature for devices with internal sensor.
- Add a progress dialog on activity save.
- Fix font size on vívoactive® 3.

### v.1.17 - 2017-10-05 ###

- Fix issue with start/stop activity (vívoactive® 3).

### v.1.16 - 2017-09-17 ###

- Add support for vívoactive® 3 and Forerunner® 935.
- Add missing activity type (flexibility) in Connect settings.

### v.1.15 - 2017-09-07 ###

- Add Spanish support, thanks to Mario.
- Add support for Approach® S60.
- Upgrade to Connect IQ SDK 2.3.4.

### v.1.14 - 2017-03-04 ###

- Add Polish support, thanks to Uriasz.
- Change session name based on activity type.

### v.1.13 - 2017-02-10 ###

- Add activity type: flexibility training.
- Add German support, thanks to Mateo.
- Add support for fēnix® 5, 5S, 5X.
- Upgrade to Connect IQ SDK 2.2.4.

### v.1.12 - 2017-01-06 ###

- Add notification policy: none, start and end, every 10 seconds.
- Add tone notifications.
- Add backlight on notification.
- Add configuration for vibration and tone notifications.
- Upgrade to Connect IQ SDK 2.2.3.

### v.1.11 - 2017-01-03 ###

- Add support for Forerunner® 735XT, fēnix® Chronos.
- Upgrade to Connect IQ SDK 2.2.2.

### v.1.10 - 2016-11-10 ###

- Add menu to configure settings directly from the watch.
- Add configuration for number of exercises.
- Add configurable activity type: 7-minute, cardio training or strength training.
- Upgrade to Connect IQ SDK 2.1.5.

### v.1.9 - 2016-10-15 ###

- Change activity type from strength training to cardio training.
- Upgrade to Connect IQ SDK 2.1.3.
- Remove epix™ support.

### v.1.8 - 2016-08-23 ###

- Upgrade to Connect IQ SDK 2.1.2.

### v.1.7 - 2016-06-13 ###

- Add Danish support, thanks to Anonymous.

### v.1.6 - 2016-06-10 ###

- Fix display issue on Forerunner® 920XT.
- Upgrade to Connect IQ SDK 1.2.9.

### v.1.5 - 2016-05-15 ###

- Fix issue with HRM sensor detection
- Add support for temperature sensor (Tempe) back

### v.1.4 - 2016-05-14 ###

- Removed temporarily support for temperature sensor (Tempe)

### v.1.3 - 2016-05-09 ###

- Added support for fēnix® 3 and fēnix® 3 HR
- Rest time is now included in workout session as lap

### v.1.2 - 2016-05-07 ###

- Added short vibration every 10 seconds
- Changed text color: green for current exercise, orange for next exercise
- Added support for vívoactive® HR, Forerunner® 920XT, 630, 235, 230, epix™
- Added second side plank exercise
- Fixed reset of period time when activity stopped

### v.1.1 - 2016-02-10 ###

- Added confirmation dialog when stopping an active session.
- Upgrade to Connect IQ SD 1.2.4.

### v.1.0 - 2016-01-31 ###

- First public release.
