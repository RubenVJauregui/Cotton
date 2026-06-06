Cotton Dashboard

This is a local dashboard. It is not deployed as a website.

How to run:
1. Extract the zip file first.
2. Double-click:
   START-COTTON-DASHBOARD.cmd
3. The dashboard should open automatically at:
   http://localhost:4895

Important:
- Do not open index.html directly. The dashboard needs the local API in server.js.
- If you open index.html directly, the page will not have an API and the WISE data cannot load.
- Keep the command window open while using the dashboard.

Manual run option:
1. Open PowerShell in this folder.
2. Run:
   node server.js
3. Open:
   http://localhost:4895

What it does:
- Signs in to WISE using the same IAM flow as the Valley View dashboard.
- Finds the facility whose name or ID contains Cotton.
- Follows the Valley View Bay 3 style for Cotton, but includes all Cotton customers.
- Pulls PLANNED outbound orders from WISE for Cotton only.
- Pulls in-yard FULL equipment using the Bay 3 equipment logic:
  CONTAINER + FULL + FULL_TO_OFFLOAD.
- Shows metrics, Section 1 equipment, Section 2 planned outbound order detail, watch list, Cotton assignees, and CSV export.
- The Customers square opens a customer dropdown.
- E-Comm Orders and E-Comm Past SLA filter the planned order table.
- Auto Suggest, Auto Assign, and Autonomous show suggested task assignments:
  outbound planned orders use the employee who packed that customer the most in the past 6 months;
  inbound RNs use the employee who offloaded that customer the most in the past 6 months.

Notes:
- This app runs locally on the computer that starts server.js.
- The person using it must have WISE access to the Cotton facility.
- The person using it must have Node.js installed.
- If port 4895 is already in use, set a different port before running:
  $env:PORT=4896
  node server.js
