#############################################################################
##
##                         equivalent mappings
##  named-pipes.gd
##                                                          Sergio Siccha
##
##  Copyright 2017 by the authors.
##  This file is free software, see license file.
##
##  Declarations for named-pipes.gi
##
#############################################################################

DeclareCategory( "IsNamedPipeHandle", IsComponentObjectRep );
BindGlobal(
    "NamedPipeHandleFamily",
    NewFamily( "NamedPipeHandleFamily" )
);
BindGlobal(
    "NamedPipeHandleType",
    NewType( NamedPipeHandleFamily, IsNamedPipeHandle )
);

DeclareOperation( "NamedPipeHandle", [ IsString ] );
DeclareOperation( "NamedPipeHandle", [ IsString, IsRecord ] );
DeclareOperation( "ReadLine", [ IsNamedPipeHandle ] );
