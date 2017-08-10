#############################################################################
##
##                             equivalent mappings
##  hash.gd
##                                                          Sergio Siccha
##
##  Copyright 2017 by the authors.
##  This file is free software, see license file.
##
##  Declaring for hash.gi
##
#############################################################################

DeclareCategory( "IsMyHashTable", IsComponentObjectRep );
BindGlobal( "HashTableFamily", NewFamily( "HashTableFamily" ) );
BindGlobal( "HashTableType", NewType( HashTableFamily, IsMyHashTable ) );

DeclareOperation( "HashTableCreate", [ IsObject ] );
DeclareOperation( "HashTableCreate", [ IsObject, IsRecord ] );
DeclareOperation( "HashTableAdd", [ IsMyHashTable, IsObject ]);
DeclareOperation( "ListHashTable", [ IsMyHashTable ]);

#DeclareOperation( "PARORB_HashFunction", [ IsPerm ] );
