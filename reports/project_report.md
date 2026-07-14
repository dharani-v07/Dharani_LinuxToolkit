# Final Project Report
# Linux System Administration Toolkit

**Author:** Dharani V
**College:** Dr. N.G.P. Arts and Science College
**Program:** BCA
**Internship:** EduPyramids, SINE, IIT Bombay
**Date:** July 2026

---

## 1. Project Overview

This project is a menu-driven Linux System Administration
Toolkit developed using Bash shell scripting on Ubuntu 24.04
LTS. It integrates 10 independent modules into a single
unified application through a main menu interface.

---

## 2. Objectives Achieved

- Developed 10 independent shell script modules
- Integrated all modules into single main.sh application
- Implemented input validation and error handling
- Generated log files for all module activities
- Documented all modules with test cases
- Captured screenshots of all module outputs

---

## 3. Tools and Technologies Used

| Tool | Purpose |
|---|---|
| Ubuntu 24.04 LTS | Development environment |
| Bash 5.0 | Scripting language |
| nano | Code editor |
| Git | Version control |
| GitHub | Code repository |
| VirtualBox | Virtual machine |

---

## 4. Module Summary

| # | Module | Description | Status |
|---|---|---|---|
| 1 | Package Installation | Install packages using apt | Complete |
| 2 | Package Removal | Remove packages using apt | Complete |
| 3 | System Updates | Update and upgrade system | Complete |
| 4 | Disk Usage Monitor | Monitor disk usage | Complete |
| 5 | Memory Monitor | Monitor RAM and swap | Complete |
| 6 | CPU Monitor | Monitor CPU usage | Complete |
| 7 | Network Information | Display network info | Complete |
| 8 | Cron Job Manager | Manage cron jobs | Complete |
| 9 | Log Analysis | Analyze system logs | Complete |
| 10 | System Health Report | Generate health report | Complete |

---

## 5. Project Structure
Dharani_LinuxToolkit/
├── README.md
├── main.sh
├── modules/         (10 shell scripts)
├── logs/            (10 log files)
├── screenshots/     (17 screenshots)
├── documentation/   (project report)
├── testcases/       (test cases)
└── reports/         (health reports)

---

## 6. Key Linux Commands Used

| Command | Module Used In |
|---|---|
| apt install/remove | Package modules |
| df -h, du -sh | Disk usage |
| free -h | Memory monitor |
| lscpu, top | CPU monitor |
| ip addr, ping | Network info |
| crontab | Cron job manager |
| grep, tail | Log analysis |
| ps aux | Health report |

---

## 7. Challenges Faced and Solutions

| Challenge | Solution |
|---|---|
| Log file path error | Used dirname to get absolute path |
| curl not found | Installed curl using apt |
| Token authentication | Generated new GitHub token |
| Copy paste issues in terminal | Used nano editor instead |

---

## 8. Testing Summary

- Total modules tested: 10
- Total test cases: 50
- Test cases passed: 50
- Test cases failed: 0
- Pass percentage: 100%

---

## 9. Learning Outcomes

- Gained hands-on experience with Ubuntu Linux
- Learned modular Bash shell scripting
- Understood Linux system administration concepts
- Practiced professional documentation
- Learned Git and GitHub version control
- Developed debugging and problem solving skills

---

## 10. Conclusion

The Linux System Administration Toolkit was successfully
developed and tested. All 10 modules work correctly and
are integrated into a single menu-driven application.
This project strengthened my understanding of Linux
system administration and Bash scripting through
practical hands-on experience following the Spoken
Tutorial methodology.

---

## 11. References

- Spoken Tutorial Project, IIT Bombay
- EduPyramids, SINE, IIT Bombay
- Ubuntu Official Documentation
- GNU Bash Manual
- Linux man pages
- GitHub Documentation
