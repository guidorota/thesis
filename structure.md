# Introduction


# Data management in Pervasive Systems


# The PerLa system

## A brief history of PerLa

## Managing heterogeneity

### FPCs and device attributes

### Runtime configurability

## The PerLa query language


# Classic Architecture

## Overview

## Communication

## Encoding and decoding information

## Device descriptor & FPC Factory


# New Architecture

## Core concepts

### Asynchronous paradigm

### Plugin system

### Factory patterns

## Architecture overview

## Comparison with the classic architecture


# Component description

## Communication: Channel

### IORequest management

### Handling asynchronous data transmissions

### Implementations: HTTPChannel and SimulatorChannel


## Encoding and decoding information: Messages and Mappers

### The Mapper interface

### The Message interface

### Vector type management

### Distinguishing different messagge types

### Implementations: JSONMapper and URLEncodedMapper


## Data management: Scripts

### Transforming Messages into records

### Available instructions

### Engine architecture and execution model (debugger?)


## Putting it all together: the FPC

### Data access interface

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