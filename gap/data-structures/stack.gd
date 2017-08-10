#############################################################################
##
##                             equivalent mappings
##  stack.gd
##                                                          Sergio Siccha
##
##  Copyright 2017 by the authors.
##  This file is free software, see license file.
##
##  Declaring for stack.gi
##
#############################################################################

DeclareCategory( "IsMyStack", IsPositionalObjectRep );
BindGlobal( "StackFamily", NewFamily( "StackFamily" ) );
BindGlobal( "StackType", NewType( StackFamily, IsMyStack ) );

DeclareOperation( "StackCreate", [ IsInt ] );
DeclareOperation( "StackPush", [ IsMyStack, IsObject ]);
DeclareOperation( "StackPop", [ IsMyStack ]);
DeclareOperation( "StackPopAll", [ IsMyStack ]);
DeclareOperation( "StackPeek", [ IsMyStack ]);
DeclareOperation( "StackIsEmpty", [ IsMyStack ]);

