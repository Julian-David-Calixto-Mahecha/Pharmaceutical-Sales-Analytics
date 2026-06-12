# DAX Measures

## YTD Sales

```DAX
YTD SALES = 
CALCULATE(
  sum(
    'pharma fact_table'[YTD_Sales]),
'pharma dim_valuetype'[Tipo Valor] = "Venta Neta"
)
```
Returns accumulated sales for the selected context.

---

## YTD Budget

```DAX
YTD BUDGET = 
CALCULATE(
  sum(
    'pharma fact_table'[Budget]),
'pharma dim_valuetype'[Tipo Valor] = "Presupuesto"
)
```

Returns accumulated budget for the selected context.

---

## Compliance Rate

```DAX
Compliance Rate =
DIVIDE(
    [YTD Sales],
    [YTD Budget],
    0
)
```

Measures budget achievement percentage.

---

## Title modeling

```DAX
COMPLIANCE TITLE =
VAR Valor = [COMPLIANCE RATE]
VAR Icono =
    SWITCH(
        TRUE(),
        Valor < 0.5, "❌",
        Valor < 0.75, "⚠️",
        "✅"
    )

RETURN
    "COMPLIANCE RATE " & Icono
```

Business Rules:

- ❌ Below 50% compliance
- ⚠️ Between 50% and 75%
- ✅ Above 75%

This improves dashboard readability by allowing users to quickly identify performance status without analyzing the KPI value itself.

## Freshness Index

```DAX
FRESHNESS INDEX = 
IF(ISCROSSFILTERED('Selector_país_freshness'[Selctor país]),
SWITCH(TRUE(), VALUES('Selector_país_freshness'[Selctor país])= "ESPAÑA",CALCULATE(DIVIDE([YTD SALES],43762369,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "ITALIA",CALCULATE(DIVIDE([YTD SALES],4538800,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "ALEMANIA",CALCULATE(DIVIDE([YTD SALES],69474,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "ESTADOS UNIDOS",CALCULATE(DIVIDE([YTD SALES],249795,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "EGYPTO",CALCULATE(DIVIDE([YTD SALES],6719408,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "CUBA",CALCULATE(DIVIDE([YTD SALES],169487,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "PUERTO RICO",CALCULATE(DIVIDE([YTD SALES],2901,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "BRASIL",CALCULATE(DIVIDE([YTD SALES],274900,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "ARGENTINA",CALCULATE(DIVIDE([YTD SALES],97890,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "CHINA",CALCULATE(DIVIDE([YTD SALES],1341377,889)),
                VALUES('Selector_país_freshness'[Selctor país])= "JAPON",CALCULATE(DIVIDE([YTD SALES],0,889)),
                CALCULATE(DIVIDE(CALCULATE([YTD SALES],REMOVEFILTERS('Selector_país_freshness')),52719320,889))),CALCULATE(DIVIDE([YTD SALES],55506110)))
                
```

Calculates a country-specific freshness indicator based on sales performance and predefined business thresholds.

Key concepts demonstrated:

- Context detection using ISCROSSFILTERED
- Conditional logic with SWITCH(TRUE())
- Context modification with REMOVEFILTERS
- Dynamic calculations based on user selections

Business purpose:

The metric allows users to evaluate portfolio freshness across different markets while adapting calculations according to the selected country.
