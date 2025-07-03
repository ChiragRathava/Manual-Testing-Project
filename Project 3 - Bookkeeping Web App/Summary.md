# 🐞 Defect Report Summary – Bookkeeping Platform

This document summarizes the key defects identified during **manual testing** of the **Cloud Bookkeeping Platform** (formerly referred to as QuickBookWeb). The issues span across UI behavior, form submissions, navigation logic, and feedback messaging.

---

## 📊 Summary Overview

| Metric                   | Value         |
|--------------------------|---------------|
| **Total Defects Reported**   | 11            |
| **Status: Assigned**         | 9             |
| **Status: In Progress**      | 1             |
| **Status: Won’t Fix**        | 1             |
| **High Priority Defects**    | 8             |
| **Medium Priority Defects**  | 3             |
| **Low Priority Defects**     | 1             |
| **Reported By**              | Tisha         |
| **Environment Tested**       | Windows 11, Chrome Browser |
| **Date Range**               | 25-02-25 to 28-02-25 |

---

## 🧩 Categories of Issues

| Category                     | Example Defects                                       | Count |
|------------------------------|-------------------------------------------------------|-------|
| **Navigation Errors**        | Invalid redirects, missing tabs                      | 3     |
| **UI Rendering Issues**      | Text cutoff, incorrect tab display                   | 2     |
| **Form Submission Issues**   | No feedback after sending message or registration    | 4     |
| **Validation Issues**        | Selection of past dates not restricted               | 1     |
| **Feedback Messaging Errors**| Missing confirmation popups or alerts                | 6     |

---

## 🔎 Highlights

- 🔗 **Broken Links**: EDU Meeting link leads to a 404 error page.
- 💬 **No Confirmation Feedback**: Forms such as "Send Message" and "Registration" fail to display success/failure popups.
- 📅 **Past Date Booking**: System allows booking meetings in the past with no warnings.
- 🔁 **Navigation Confusion**: Clicking "Change Password" redirects to the registration page.
- 🔄 **UI Inconsistencies**: Tabs like "Account" disappear or unexpected ones like "Course" appear.

---

## 🏷️ Priority Breakdown

| Priority | Description                                     | Count |
|----------|--------------------------------------------------|-------|
| **High** | Directly impacts usability or functionality      | 8     |
| **Medium** | Affects user experience or minor inconsistencies| 3     |
| **Low**  | Visual or cosmetic issues                        | 1     |

---

## 🧰 Suggested Fix Areas

- Implement consistent **feedback messages** for all major user actions.
- Fix or validate all **navigation links** and redirects.
- Improve **UI consistency** across page headers and tab views.
- Enforce **validation rules** for date/time and form inputs.

---
