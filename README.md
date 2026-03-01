# yana-carecon

**A healthcare analytics and economics toolkit by Yana**  
Bridging care quality, cost modeling, and business intelligence.

## 📌 Overview
`yana-carecon` is a collection of analytics workflows and data tools focused on healthcare economics—especially value-based care, utilization trends, and risk adjustment.

## 🧠 Core Skills
SQL • Tableau • POWER BI • EMR Data • CMS-HCC • Risk Modeling • BI Strategy • VBA Automation • Healthcare Economics • Predictive Analytics

## 🔍 Key Projects
- **Care Utilization Dashboard**: Tracks chronic condition capture and admission trends
- **Cost Modeling Engine**: PMPM cost forecasting using claims + enrollment data
- **HCC Risk Scoring**: SQL pipeline for condition capture accuracy and RAF optimization
- **Automated Physician P&L Reporting**: Multi-doctor monthly P&L workbook generator with doctor-level sheets, consolidated view, and executive dashboard

## 📁 Structure
- `/sql/` – Core queries and logic layers
- `/scripts/` – Automation scripts
- `/data/` – Sample data or schemas

## 🧾 Automated P&L Report (18 Doctors)
This repo now includes a generator for a full P&L package:
- 18 doctor-specific P&L tabs
- 1 consolidated P&L tab
- 1 dashboard tab with KPI cards + charts

### Files
- `scripts/generate_pnl_report.py`
- `data/doctor_financials_sample.csv`

### Required dependency
```bash
pip install openpyxl
```

### Run
```bash
python scripts/generate_pnl_report.py \
  --input data/doctor_financials_sample.csv \
  --output output/Doctor_PnL_Report.xlsx
```

### Input format
CSV columns required:
- `doctor`
- `month` (`YYYY-MM`)
- `patient_revenue`
- `procedure_revenue`
- `ancillary_revenue`
- `salary_expense`
- `supplies_expense`
- `facility_expense`
- `admin_expense`
- `malpractice_expense`
- `other_expense`

---
