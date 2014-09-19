# Introduction

Descrizione WSNs e Pervasive Systems, introduzione ai problemi da affrontare durante l'integrazione di tali tecnologie all'interno di un progetto software.


# Data management in Pervasive Systems

Stato dell'arte, descrizione "competitor" PerLa.


# The PerLa system

## A brief history of PerLa

Evoluzione di PerLa, descrizione dei sistemi in cui PerLa e' stato utilizzato (San Martino, Artdeco, ecc).

## Managing heterogeneity

Descrizione ad alto livello delle astrazioni utilizzate da PerLa per la gestione di sistemi pervasivi (database-like interface con linguaggio di query derivato da SQL).

### FPC and device attributes

Cos'e' l'FPC, paradigma di accesso ai dati generati da un dispositivo.

### Runtime heterogeneity support

Introduzione ai concetti di FPC Factory e Device Descriptor. Descrizione ad alto livello della procedura di creazione di nuove FPC.

## The PerLa query language

Descrizione delle Low Level Query, esempi di Query utilizzate in precedenti progetti.

## Context-management

Descrizione ad alto livello del layer di gestione del contesto.


# Classic Middleware Architecture

I contenuti di questo capitolo saranno oggetto di discussione nelle sezioni successive, dove verranno confrontati con i nuovi componenti del middleware.

## Overview

Descrizione generale della precedente architettura di accesso ai dati (TSE).

## Network stack

Descrizione approfondita di Channel e Channel Manager. Suddivisione dello stack di rete tra Channel e FPC.

## Encoding and decoding data

Descrizione delle procedure di codifica e decodifica dati tramite il DataManager.

## Interconnecting software components

Descrizione del paradigma di utilizzo degli oggetti Pipe e Waiter, usati per collegare tra loro diversi componenti nella precedente versione del middleware.

## Device Descriptor and FPC Factory

Precedente struttura del descrittore, generalita' sul metodo di funzionamento della FPC Factory.


# New Middleware Architecture

## Design goals and core concepts

In questa prima sezione vengono descritti i concetti che stanno alla base del nuovo middleware, le motivazioni per il refactoring e le considerazioni che ne hanno influenzato il design.

## Architecture overview

Descrizione ad alto livello dei componenti architetturali del middleware (funzionalita' e mutue interazioni).

### Asynchronous invocation paradigm

Descrizione del sistema di invocazione asincrono, introduzione alle interfacce ed al lessico utilizzato (Handler, Task). In questa sezione vengono anche indicati i vantaggi rispetto al precedente meccanismo pipe/waiter.

### Factory patterns

Descrizione dei pattern Factory e Factory of Factory, utilizzati estensivamente per l'implementazione del sistema di plugin.

### Device Descriptor and plugin system

Introduzione al nuovo formato di Device Descriptor, meccanismi di estensione del sistema PerLa (open/closed principle), utilizzo dei namespace XML come punto di estensione nel descrittore.
I concetti evidenziati in questa sezione formeranno la base per comprendere gli estratti di XML presenti nel resto del documento.


# In-depth component description

Descrizione dettagliata di tutti i componenti del middleware. Motivazione dell'ordine di spiegazione dei componenti (segue il flusso di dati dal dispositivo all'utente).

## Communicating with Channels

Gestione delle comunicazioni tramite l'interfaccia Channel, descrizione e vantaggi del nuovo stack (promuove l'utilizzo di librerie off-the-shelf). Spiegazione dell'interfaccia Payload e della sua attuale implementazione ByteArrayPayload.

### IORequest management

Descrizione dell'interfaccia IORequest, metodi a disposizione dei livelli superiori, parametrizzazione delle richieste.

### Handling asynchronous data transmissions

Meccanismo di ricezione eventi (dati inviati dal dispositivo, senza una precedente richiesta dall'utente o dal middleware).

### Implementations: HTTPChannel and SimulatorChannel

Descrizione delle attuali implementazioni dell'interfaccia Channel.


## Encoding and decoding information

### The Message and Mapper interfaces

Accesso ai dati tramite l'interfaccia Message, codifica e decodifica delle informazioni (trasformazione di un Payload in un Message e viceversa).

### Handling composite data structures

Metodi di gestione di strutture dati annidate e vettoriali

### Managing multiple messagge types

Questa sezione spiega i meccanismi utilizzati dal middleware per decodificare uno stream di byte nel tipo di messaggio corretto.
Tramite questa funzionalita' il sistema PerLa e' in grado di gestire comunicazioni multiple e parallele con un singolo dispositivo, anche quando ogni singolo flusso dati utilizza un formato di messagio diverso.

### Implementations: JSONMapper and URLEncodedMapper

Descrizione delle attuali implementazioni dell'interfaccia Mapper.


## Data management: Scripts

Motivazioni che hanno portato all'implementazione del sistema di scripting (impedence adapter tra i messaggi ricevuti dai dispositivi ed i Record utilizzati dal modello PerLa).

### Transforming Messages into records

Questa sezione descrive i meccanismi che permettono di rimodellare un messaggio ricevuto da un dispositivo della rete in un record (istruzioni Put/Emit), con particolare attenzione alla gestione di messaggi con campi di tipo composito o vettoriale.

### Available instructions

Descrizione approfondita delle istruzioni a disposizione degli utenti, completa di sintassi XML.

### Engine architecture and execution model

Architettura dell'esecutore degli script, gestione delle comunicazioni asincrone tramite  script (istruzione submit), dettagli implementativi relativi all'utilizzo dell'Expression Language all'interno dell'esecutore.

### Script examples

Alcuni esempi di Script.


## Putting it all together: the FPC

Spiega come i vari componenti descritti nelle sezioni precedenti interagiscono all'interno dell'FPC.

### Data access interface

Metodi che l'FPC mette a disposizione dell'utente per comunicare con i dispositivi remoti.

### Operations

Descrizione Operations. L'oggetto Operation raggruppa uno o piu' script che permettono all'FPC di estrarre (o inviare) un determinato set di attributi da un nodo della rete.

### Scheduling mechanism

Meccanismi di scheduling delle operazioni, simulazione delle operazioni (e.g., simulazione campionamento periodico utilizzando operazioni non-periodiche).


## Device Descriptor & FPC Factory

### The XML Device Device Descriptor

Riepilogo dei vari elementi che compongono il descrittore, focus sull'attuale sintassi XML e sulle interazioni tra diverse sezioni del descrittore. Riprende ed approfondisce i concetti introdotti nelle precedenti sezioni.

### FPC Factory

Creazione e configurazione dell'FPCFactory, registrazione di nuovi plugin. Descrizione della procedura di creazione di una nuova FPC.

### Registry

Funzionamento e design della nuova versione dell'FPC Registry.

### Complete XML Descriptor examples

Esempi commentati di descrittori XML.


# Conclusions

## Comparison with the classic architecture

Confronto tra la nuova e la vecchia versione del Middleware, sia a livello di prestazioni che di funzionalita'.

## Future work

### Implementation of new plugins

Nuove tipologie di Mapper (XML, csv, etc), nuovi canali (TinyOS, Android).

### Alternative Device Descriptor forms

Questa sezione contiene una serie di linee guida per introdurre il supporto a nuove rappresentazioni del DeviceDescriptor, che possono spaziare da una semplice traduzione in un formato alternativo (e.g., JSON) fino all'adozione di un nuovo standard (SensorML).

### Accessing FPC methods through HTTP

Possibile architettura di un layer HTTP per l'interrogazione di un'FPC tramite interfaccia REST.


# Bibliografia

