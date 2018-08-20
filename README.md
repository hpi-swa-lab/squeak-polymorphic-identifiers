# Squeak Polymorphic Identifiers
Polymorphic Identifiers aim to provide uniform access to all different kinds of user defined storage.
This is an implementation of polymorphic identifiers for Squeak.

## Installation
1. Get [Squeak 5.0 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/Metacello/metacello)
3. Finally, load Polymorphic Identifiers with the following command:

```Smalltalk
Metacello new
  baseline: 'PolymorphicIdentifiers';
  repository: 'github://hpi-swa-lab/squeak-polymorphic-identifiers/packages';
  load.
```
4. Finally, you have to register the Global Schema Handler in the Smalltalk dictionary with the following line:
```Smalltalk
Smalltalk at: #PolymorphicIdentifierHandler put: GlobalSchemaHandler new
```

### Build status
[![Build Status](https://travis-ci.org/hpi-swa-lab/squeak-polymorphic-identifiers.svg?branch=master)](https://travis-ci.org/hpi-swa-lab/squeak-polymorphic-identifiers) (Disclaimer: build includes no tests currently)

## Usage
To use Polymorphic Identifiers just implement a method ```compilerClass``` on class side of the class you want use them in. ```compilerClass``` should just return PICompiler.

You can add custom composite schemes with: ```PolymorphicIdentifierHandler>>addHandler:forCompositeScheme:```. Please provide a unique scheme and an instance of ```PICompositeSchemaHandler```.

You can also add custom base schemes with: ```PolymorphicIdentifierHandler>>addHandler:forBaseScheme:```. Please provide a unique scheme as well as an instance of ```PIBaseSchemaHandler```.

### Examples
To use the provided examples just comment out the body of the methods:

```PIExamplePostCreator>>createPostWithAutor:```
```PIExamplePost>>getPostAsDict```
```PIExampleMorphic>>createMorphs```

To use the ```PIExamplePostCreator``` without configuration you need an JSON API running on localhost:3000 that has a posts endpoint that accepts a post of this form {author: string, title: string}. For a simple json-server with the right configuration please visit: https://github.com/typicode/json-server

## Notes

### Implementation
PI uses a custom grammar that extends the usual Smalltalk grammar to identify URIs acting as identifiers while parsing or compiling.
It rewrites the source string to use the Schema Handlers for the underlying storage access, while providing beautiful abstraction for the developer. It is highly customisable by providing an interface, which allows the developer to implement new kinds of storage as well as combining and extending existing storage types to fit his needs.

### Known issues
 - The custom grammar currently matches dots at the end of URIs. This causes bug when there is no whitespace at the end of the line to separate the Polymorphic Identifier from the dot that separates statements. I haven't found the right solution for this yet, as we want to allow dots in the middle of the first segment of the URI.
Currently syntax highlighting is not supported.
 - Please note, that it's currently not possible to fileIn or clone methods that contain Polymorphic Identifier notation. Every method has to be compiled by hand.


### How to cite this work
If you did work related to Polymorphic Identifiers in general you can cite the following reference:


```Bibtex
@InProceedings{Weiher2013PIU, 
author = {Weiher, Marcel and Hirschfeld, Robert}, 
abstract = {In object-oriented programming, polymorphic dispatch of operations decouples clients from specific providers of services and allows implementations to be modified or substituted without affecting clients. The Uniform Access Principle (UAP) tries to extend these qualities to resource access by demanding that access to state be indistinguishable from access to operations. Despite language features supporting the UAP, the overall goal of substitutability has not been achieved for either alternative resources such as keyed storage, files or web pages, or for alternate access mechanisms: specific kinds of resources are bound to specific access mechanisms and vice versa. Changing storage or access patterns either requires changes to both clients and service providers and trying to maintain the UAP imposes significant penalties in terms of code-duplication and/or performance overhead. We propose introducing first class identifiers as polymorphic names for storage locations to solve these problems. With these Polymorphic Identifiers, we show that we can provide uniform access to a wide variety of resource types as well as storage and access mechanisms, whether parametrized or direct, without affecting client code, without causing code duplication or significant performance penalties.}, 
isbn = {9781450324335}, 
location = {Indianapolis, Indiana, USA}, 
address = {New York, NY, USA}, 
series = {DLS '13}, 
booktitle = {Proceedings of the Symposium on Dynamic Languages (DLS) 2013}, 
publisher = {ACM}, 
pages = {61--72}, 
doi = {10.1145/2508168.2508169}, 
year = {2013}, 
file = {:WeiherHirschfeld_2013_PolymorphicIdentifiersUniformResourceAccessInObjectiveSmalltalk.pdf:PDF}, 
title = {Polymorphic Identifiers: Uniform Resource Access in Objective-Smalltalk}, 
url = {http://doi.acm.org/10.1145/2508168.2508169}
}
```

If you have build something using this implementation of Polymorphic Identifiers consider using the reference above and the following:

```Bibtex
@online{Lichtblau2018SPI,
author = {Marius Lichtblau, Patrick Rein, Stefan Ramson, Johannes Henning, Marcel Weiher, Robert Hirschfeld},
title = {Squeak/Smalltalk Implementation of Polymorphic Identifiers},
url = {https://github.com/hpi-swa-lab/squeak-polymorphic-identifiers},
year = 2018,
urldate = {}
}
```
