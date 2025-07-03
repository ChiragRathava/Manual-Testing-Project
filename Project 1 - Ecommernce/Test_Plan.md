# Test Plan: KrishnaMart E-Commerce Website

## 1. Test Plan Identifier
TP_KrishnaMart_v1.0_2025-06-08

## 2. Introduction
This test plan outlines the testing approach for KrishnaMart – an online shopping portal. The goal is to ensure a smooth user experience, accurate functionality, and reliable performance across different browsers and devices.

## 3. Objectives and Tasks

### Objectives:
- Verify all user-facing features function as intended.
- Validate shopping cart, product listings, login, and checkout.
- Identify and document any bugs or usability issues.

### Tasks:
- Analyze requirements and site functionality
- Prepare and execute test cases
- Report defects and suggest improvements
- Re-test after fixes

## 4. Scope

### In-Scope:
- User registration/login
- Product search and category browsing
- Adding items to cart
- Checkout process (excluding payment gateway testing)
- Responsive design checks

### Out-of-Scope:
- Backend admin panel
- Performance/load testing
- Real payment gateway validation

## 5. Test Items
- Home Page
- Product Categories
- Product Detail Page
- Search Functionality
- Cart and Checkout
- User Login / Registration
- Contact / Support

## 6. Features to Be Tested
| Feature | Priority |
|---------|----------|
| User Login/Registration | High |
| Product Listing & Search | High |
| Add to Cart / Remove | High |
| Checkout Workflow | High |
| Responsive Layout | Medium |
| Navigation & Filters | Medium |
| Contact/Support Form | Low |

## 7. Features Not to Be Tested
- Admin-side CMS
- SMS/Email Notification Integration
- Real-time payment verification

## 8. Test Strategy
Testing Types:
- Functional Testing
- UI/UX Testing
- Compatibility Testing
- Smoke Testing

## 9. Test Deliverables
- Test Plan Document
- Test Case Document (Excel)
- Bug Report (Excel/Jira format)
- Final Test Summary Report

## 10. Testing Schedule
| Activity | Start Date | End Date |
|----------|------------|----------|
| Requirement Review | 20-01-25   | 20-01-25 |
| Test Case Writing | 21-01-25   | 25-01-25 |
| Test Execution | 26-01-25   | 28-01-25 |
| Bug Reporting | 13-02-25   | 18-02-25 |
| Retesting | 20-02-25   | 24-02-25 |

## 11. Entry and Exit Criteria

### Entry:
- Website is deployed and stable
- Test cases reviewed

### Exit:
- All high-severity bugs are fixed and retested
- Major functionalities validated

## 12. Roles and Responsibilities
| Role | Name | Responsibility |
|------|------|----------------|
| Test Lead | You | Test planning, case writing, review |
| Tester | You | Manual testing and defect reporting |
| Developer | Dev | Bug fixing |

## 13. Risks and Contingencies

### Risk: Site downtime due to hosting issues
- **Mitigation:** Coordinate with hosting provider.

### Risk: Incomplete requirements
- **Mitigation:** Derive test cases from existing UI and behavior.

## 14. Tools Used
- Bug Tracking: Excel / Jira
- Test Case Management: Excel
- Browsers: Chrome, Firefox, Edge
- Devices: Desktop, Mobile

## 15. Approvals
| Name | Role | Signature | Date |
|------|------|-----------|------|
| Chirag Rathava | Test Lead |  |  |
| Adarsh Patel | Project Manager |  |  |