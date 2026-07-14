# Test Cases - Linux System Administration Toolkit
**Author:** Dharani V

---

## Module 1: Package Installation

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | curl | Installed successfully | Installed successfully | PASS |
| 2 | git | Already installed | Already installed | PASS |
| 3 | (empty) | Error: cannot be empty | Error: cannot be empty | PASS |
| 4 | invalidpkg123 | Failed to install | Failed to install | PASS |
| 5 | wget | Installed successfully | Installed successfully | PASS |

---

## Module 2: Package Removal

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | curl | Removed successfully | Removed successfully | PASS |
| 2 | fakepackage | Not installed | Not installed | PASS |
| 3 | (empty) | Error: cannot be empty | Error: cannot be empty | PASS |
| 4 | wget | Removed successfully | Removed successfully | PASS |
| 5 | git | Removed successfully | Removed successfully | PASS |

---

## Module 3: System Updates

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | Option 1 | Package list updated | Package list updated | PASS |
| 2 | Option 2 | Packages upgraded | Packages upgraded | PASS |
| 3 | Option 3 | Full upgrade done | Full upgrade done | PASS |
| 4 | Option 4 | Unused packages removed | Unused packages removed | PASS |
| 5 | Option 9 | Error: Invalid choice | Error: Invalid choice | PASS |

---

## Module 4: Disk Usage Monitor

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | Option 1 | All disk usage shown | All disk usage shown | PASS |
| 2 | Option 2 - / | Root partition usage | Root partition usage | PASS |
| 3 | Option 3 - /home | Directory size shown | Directory size shown | PASS |
| 4 | Option 4 | Top 5 dirs shown | Top 5 dirs shown | PASS |
| 5 | Option 9 | Error: Invalid choice | Error: Invalid choice | PASS |

---

## Module 5: Memory Monitor

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | Option 1 | RAM and swap shown | RAM and swap shown | PASS |
| 2 | Option 2 | Detailed memory info | Detailed memory info | PASS |
| 3 | Option 3 | Top 5 processes shown | Top 5 processes shown | PASS |
| 4 | Option 4 | Swap details shown | Swap details shown | PASS |
| 5 | Option 9 | Error: Invalid choice | Error: Invalid choice | PASS |

---

## Module 6: CPU Monitor

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | Option 1 | CPU info displayed | CPU info displayed | PASS |
| 2 | Option 2 | CPU usage shown | CPU usage shown | PASS |
| 3 | Option 3 | Top 5 processes shown | Top 5 processes shown | PASS |
| 4 | Option 4 | Load average shown | Load average shown | PASS |
| 5 | Option 9 | Error: Invalid choice | Error: Invalid choice | PASS |

---

## Module 7: Network Information

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | Option 1 | IP address shown | IP address shown | PASS |
| 2 | Option 2 | Interfaces shown | Interfaces shown | PASS |
| 3 | Option 3 - google.com | Ping successful | Ping successful | PASS |
| 4 | Option 4 - google.com | DNS info shown | DNS info shown | PASS |
| 5 | Option 3 - (empty) | Error: cannot be empty | Error: cannot be empty | PASS |

---

## Module 8: Cron Job Manager

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | Option 1 | Cron jobs listed | Cron jobs listed | PASS |
| 2 | Option 2 - */5 * * * * | Job added | Job added | PASS |
| 3 | Option 3 | Job removed | Job removed | PASS |
| 4 | Option 4 | Examples shown | Examples shown | PASS |
| 5 | Option 2 - (empty) | Error: cannot be empty | Error: cannot be empty | PASS |

---

## Module 9: Log Analysis

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | Option 1 | Last 20 lines shown | Last 20 lines shown | PASS |
| 2 | Option 2 - error | Error lines shown | Error lines shown | PASS |
| 3 | Option 3 | Auth logs shown | Auth logs shown | PASS |
| 4 | Option 4 | Error logs shown | Error logs shown | PASS |
| 5 | Option 2 - (empty) | Error: cannot be empty | Error: cannot be empty | PASS |

---

## Module 10: System Health Report

| # | Test Input | Expected Output | Actual Output | Result |
|---|---|---|---|---|
| 1 | Option 1 | Full report generated | Full report generated | PASS |
| 2 | Option 2 | Quick status shown | Quick status shown | PASS |
| 3 | Option 3 | Last report viewed | Last report viewed | PASS |
| 4 | Option 9 | Error: Invalid choice | Error: Invalid choice | PASS |
| 5 | Option 1 again | Report overwritten | Report overwritten | PASS |
