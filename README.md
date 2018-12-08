# Medbay

Currently rebuilding medbay project using TDD and MVVM -- Will update read me once I have a few views working.

Here is the link to the original project:

https://github.com/dru1208/camp-quality-gift-the-code/tree/master/medical-access-mobile/camp-quality-nurseApp-iOS

## Development Goals 

### Views

* CalendarView 
* CamperSearchView
* QRScanView
* CamperDetailView
* MedicationDetailView

### View Details

* **CalendarView**
  - Will display a calendar based on current day; I will attempt to build the calendar just using the Swift UI frameworks.
  - Clicking on a specific date should display all the campers that require medication for the day in a tableview.
  - Clicking on a tableview cell should segue into the MedicationDetailView.

* **CamperSearchView**
  - Will display a list of current campers in the designated camp in a tableview.
  - You can search and filter camper by name.
  - Clicking on a tableview cell should segue into the CamperDetailView.

* **QRScanView**
  - Nurses can scan QR codes that can be played on each camper's id tag.
  - Scanning a QR code will segue into the CamperDetailView.

* **CamperDetailView**
  - This view will show the detailed information for the selected camper.
  - There will be a button somewhere that will display a table view of the medication schedule for the camper when pressed.
  - Clicking on the medication tableview cell will segue into the MedicationDetailView.

* **MedicationDetailView**
  - This view will show the detailed information for the selected medication.
  - Users can update the medication status here and the will be updated for all users to see.
  - Admin Users can override the medication status if needed.

### Models

* People
  - Camper
  - Employee
* Medication

## Development Order

1. Build and Test Models
2. Build Camper and Medication Detail Views
3. Build QR Scanner View
4. Build Camper Search View
5. Build Calendar View


