---
title       : BitAnd in Shiny
subtitle    : Calculating BitAnd quickly
author      : TermiJAG
job         : Developer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## What is BitAnd

- BitAnd compares 2 numbers bit wise. The operations is done in 3 steps
  1. Convert 2 numbers from decimal to binary
  2. Compare each bit. If the bit is 1 for both numbers is 1, the result is 1. Otherwise it is 0
  3. Convert the result from binary to decimal
  
- Example BitAnd(10,12)
  - 10 as binary is 1010
  - 12 as binary is 1100
  - The BitAnd operation returns 1000
  - 1000 in decimal is 8

---

## Calculating BitAnd in R
To calculate BitAnd we use the bitops library

```r
library(bitops)
```
We calculate the result of our example again

```r
bitAnd(10,12)
```

```
## [1] 8
```
As we see, our calculation was correct. However it took us a lot of manual work, while R can do things fast.

---

## Valid input
Only integers >= 0 shall be accepted. Data that is not supported:
 - Real Numbers
 - Text

```r
bitAnd(12.1,10)
```

```
## [1] 8
```
R ignores the decimal places, so that we still get a result.

```r
bitAnd("Hello",10)
```

```
## Warning in bitAnd("Hello", 10): NAs introduced by coercion
```

```
## [1] NA
```
This input cannot be processed, and therefore we receive an error.

---

## Why use BitAnd?

- Storing Binary data as integer is a very efficient method
- Example: 
  - We want to store the status of 3 different switches of a machine at different times
  - Instead of having a variable for each switch with 1/0 we have one integer value ranging from 0 to 7 that stores every possible configuration.
  - With BitAnd can easily compare which switches were active at two different time stamps
- Easy expandable to other bit wise operations
