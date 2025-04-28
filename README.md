
# 🌟 Daily Motivation PowerShell Script

_A lightweight PowerShell script to brighten your day with a random motivational quote, right from your desktop!_

---

## 🚀 Features

- **Pop-up Motivational Quotes** — Displays a random quote as a Windows toast notification.
- **Easily Add New Quotes** — Add new quotes directly through a parameter, without editing the file manually.
- **Duplicate Protection** — Prevents adding the same quote twice.
- **Missing File Handling** — Alerts you if your quotes file is missing.

---

## 📋 Requirements

- **PowerShell** 5.1 or later (Windows PowerShell)  
  _or_  
  **PowerShell 7+** (cross-platform)
- **BurntToast** module installed  
  Install via PowerShell:
  ```powershell
  Install-Module -Name BurntToast -Force
  ```

---

## 🛠 Installation

1. **Clone or Download** this repository.
2. Ensure a quotes file exists at:
   ```
   C:\Users\YOUR_USERNAME\OneDrive\Documents\Quotes.txt
   ```
   (Modify `$quotesPath` in the script if needed.)
3. Make sure script execution is enabled:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

---

## ⚡ Usage

### Show a Random Daily Quote
Run the script:
```powershell
.\DailyMotivation.ps1
```

A toast notification with a random quote will appear.

---

### Add a New Quote
Add a quote via the `-QuoteIn` parameter:
```powershell
.\DailyMotivation.ps1 -QuoteIn "Every day is a fresh start."
```

- ✅ Adds the quote if it's not already in the file.
- 🚫 Skips adding if the quote already exists.

---

## 🔍 How It Works

- Loads quotes from `Quotes.txt`.
- If `-QuoteIn` is passed:
  - Checks if the quote already exists.
  - Adds it if it's new.
- If no `-QuoteIn`:
  - Picks a random quote.
  - Displays it in a Windows notification.

---

## 🌱 Future Enhancements (Optional Ideas)

- Customizable notification durations.
- Import quotes from an online API.
- Categorize quotes by themes (growth, recovery, self-love, etc.).
- Automatic daily execution with Task Scheduler integration.

---

## 📄 License

This project is **open-source** and free to use under the [MIT License](LICENSE).

---

# ✨ Example Notification

> "Believe you can and you're halfway there."  
> — _Displayed via Windows Toast Notification_
