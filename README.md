## JavaAnalysis

This project was developed to generate reports based on the analysis of Java code using Abstract Syntax Trees created with SmaCC by John Brant.

## Requirements

### SmaCC

https://github.com/j-brant/SmaCC

--

## How to Install

1. Install SmaCC by j-brant via iceberg

2. Download 

## How to use 

### Parsing a Java project

Create a JavaAnalysis object and use the method parseJavaProject: aJavaDirectory.

```smalltalk

ja:=JavaAnalysis new.
ja parseJavaProject: 'pathTo\JavaProject'

```

### Detectors available

At this moment, we have 6 detectors working: TooLongName,TooManyLines,TooManyMethods,TooManyParameters,UnUsedVariables and UninitializedVariables. In order to use them, you need to create an object called JCodeSmellDetector + the code smell you want to check. For example: JCodeSmellDetectorTooLongName.

### Adding a detector

In order to add a detector, you need to create a detector and add it to the JavaAnalysis class via the method addDetector: aDetector

```smalltalk
    
detec:=JCodeSmellDetectorTooLongName new.
ja:=JavaAnalysis new.
ja addDetector: detec.

```

### Detecting and generating the report

In order to detect the code smells, you should create the detectors you wanna check and the JavaAnalysis object. Then use the JavaAnalysis parseJavaProject: aJavaDirectory with the corresponding directory and then execute the method detectCodeSmells from the JavaAnalysis class.

```smalltalk

detector1:=JCodeSmellDetectorTooLongName new.
detector2:=JCodeSmellUninitializedVariables new.
ja:=JavaAnalysis new.
ja parseJavaProject: 'pathTo\JavaProject'
ja addDetector:detector1.
ja addDetector:detector2.
ja detectCodeSmells.

```

After the detectCodeSmells method is executed, there will be a .log file with the current date as it's name with the results of the detection.

## Tests

There are tests included with some Java files in the folder "JavaTestFiles". In order to run them properly, copy the "JavaTestFiles" folder into the base directory of the smalltalk image workplace directory.
