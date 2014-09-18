# Introduction


# Data management in Pervasive Systems


# The PerLa system

## A brief history of PerLa

## Abstracting network nodes

### FPCs and device attributes

### Support for runtime configurability

## The PerLa query language


# Classic Architecture

## Overview

## Communication

## Encoding and decoding information

## Device descriptor & FPC Factory


# New Architecture

## Core concepts

### Asynchronous methods

### Improved device configurability

### Architecture overview

## Main differences with classic architecture


# In-depth architecture description

## Communication

### Requests, asynchronous responses and payloads ????????????

### An overview on Channel implementations


## Encoding and decoding information

### Encoding and Decoding procedure

### FPCMessage class

### An overview on Mapper implementations


## Data management

### Transforming FPCMessages into records

### Available instructions

### Engine architecture and execution model (debugger?)


## FPC design

### Public interface

### How is the FPC composed?

### Operations types (where it all comes together)

### Scheduling mechanism


# Device Descriptor & FPC Factory

## The Device Descriptor

## Plugin system and XML extension points

## FPC Factory

## Registry


# Conclusions

## Future work

### New Channels, mappers

### Integration with the query language and context management system


# Appendix A: Script instruction syntax and examples

# Appendix B: XML Descriptor examples