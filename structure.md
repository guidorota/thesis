# Introduction

Descrizione WSNs e Pervasive Systems, introduzione ai problemi da affrontare durante l'integrazione di tali tecnologie all'interno di un progetto software


# Data management in Pervasive Systems

Stato dell'arte, descrizione competitor PerLa


# The PerLa system

## A brief history of PerLa

Evoluzione di PerLa, descrizione dei sistemi in cui PerLa e' stato utilizzato (San Martino, Artdeco, ecc)

## Managing heterogeneity

Descrizione ad alto livello delle astrazioni utilizzate da PerLa per la gestione di sistemi pervasivi

### FPC and device attributes

Cos'e' l'FPC, paradigma di accesso ai dati generati da un dispositivo tramite gli attributi

### Runtime heterogeneity support

Introduzione ai concetti di FPC Factory e Device Descriptor, creazione di nuove FPC aruntime

## The PerLa query language

Descrizione delle Low Level Query, esempi di Query utilizzati in precedenti progetti


# Classic Middleware Architecture

## Overview

Descrizione della precedente architettura di accesso ai dati (TSE)

## Network stack

Descrizione Channel, Channel Manager e suddivisione dello stack di rete tra Channel e FPC

## Encoding and decoding information

Descrizione DataManager, procedure di codifica e decodifica dei dati

## Interconnecting software components

Descrizione del paradigma Pipe/Waiter utilizzato nella precedente versione del middleware (sostituito dal sistema di invocazione asincrono)

## Device Descriptor and FPC Factory

Precedente struttura del descrittore, generalita' sul funzionamento della FPC Factory


# New Middleware Architecture

## Design goals and core concepts

In questa prima sezione vengono descritti i concetti che stanno alla base del nuovo middleware, le motivazioni per il refactoring e le considerazioni che hanno influenzato il design

### Asynchronous invocation paradigm

Descrizione del sistema di invocazione asincrono, introduzione alle interfacce ed al lessico utilizzato (Handler, Task). Breve 

### Device Descriptor and plugin system

Introduzione al nuovo formato del Device Descriptor, meccanismi di estensione del sistema PerLa (open/closed principle), utilizzo dei namespace XML come punto di estensione nel descrittore

### Factory patterns

Descrizione dei pattern Factory e Factory of Factory, utilizzati estensivamente per l'implementazione del sistema di plugin e della FPC Factory

## Architecture overview

Descrizione ad alto livello dei componenti architetturali del middleware, delle loro funzionalita' e interazioni intra-framework


# In-depth component description

Descrizione dettagliata di tutti i componenti del middleware. Motivazione dell'ordine di spiegazione dei componenti (segue il flusso di dati dal dispositivo all'utente)

## Communicating with Channels

Gestione delle comunicazioni tramite l'interfaccia Channel, descrizione e vantaggi del nuovo stack monolitico (miglior riutilizzo di librerie off-the-shelf). Spiegazione dell'interfaccia Payload e della sua implementazione ByteArrayPayload.

### IORequest management

Descrizione dell'interfaccia IORequest, metodi a disposizione dei livelli superiori, parametrizzazione delle richieste

### Handling asynchronous data transmissions

Meccanismi di ricezione eventi (dati inviati dal dispositivo, senza una precedente richiesta dall'utente)

### Implementations: HTTPChannel and SimulatorChannel

Descrizione delle attuali implementazioni dell'interfaccia Channel


## Encoding and decoding information

### The Message Mapper interfaces

Accesso ai dati tramite l'interfaccia Message, codifica e decodifica delle informazioni (trasformazione di un Payload in un Message e viceversa)

### Handling composite data structures

Metodi di gestione di strutture dati annidate e vettoriali

### Distinguishing different messagge types

Il middleware e' in grado di gestire vari comunicazioni in parallelo con lo stesso dispositivo, anche se queste utilizzano tipi di messaggio diversi. In questo capitolo sono spiegate le tecniche adottate per decodificare uno stream di byte nel messaggio corretto

### Implementations: JSONMapper and URLEncodedMapper

Descrizione delle attuali implementazioni dell'interfaccia Mapper


## Data management: Scripts

Motivazioni che hanno portato all'implementazione del sistema di scripting (impedence adapter tra i messaggi ricevuti dai dispositivi ed i Record utilizzati dal modello PerLa)

### Transforming Messages into records

Questa sezione descrive i meccanismi che permettono di rimodellare un messaggio ricevuto da un dispositivo della rete in un record (istruzioni Put/Emit)

### Available instructions

Descrizione approfondita delle istruzioni a disposizione.

### Engine architecture and execution model

Architettura dell'esecutore degli script, gestione delle comunicazioni asincrone tramite  sript (istruzione submit), dettagli implementativi relativi all'utilizzo dell'Expression Language all'interno dell'esecutore

### Script examples

Alcuni esempi di Script


## Putting it all together: the FPC

Spiega come i vari componenti descritti nelle sezioni precedenti interagiscono all'interno dell'FPC.

### Data access interface

Metodi che l'FPC mette a disposizione dell'utente per comunicare con i dispositivi remoti

### Operations

Descrizione Operations. L'oggetto Operation raggruppa uno o piu' script che permettono all'FPC di estrarre o inviare dati ad un dispositivo della rete

### Scheduling mechanism

Meccanismi di scheduling delle operazioni, simulazione delle operazioni (e.g., simulazione campionamento periodico utilizzando operazioni non-periodiche)


# Device Descriptor & FPC Factory

## The Device Descriptor

## Plugin system and XML extension points

## FPC Factory

## Registry

## Complete XML Descriptor examples


# Conclusions

## Comparison with the classic architecture

## Future work

### Implementation of new plugins

### Integration with the query language and context management system


# Bibliografia

