#############################################################################
##
##                            equivalent mappings
##
##  mappings-cache-lookup.g
##                                                          Sergio Siccha
##                                                          Andres Goens
##
##  Copyright 2017 by the authors.
##  This file is free software, see license file.
##
##  For a given mapping, determine whether it appears in
##  a list of previously simulated mappings.
##
##  KPN: Kahn-Process-Network
##
#############################################################################

###############################
# function MappingsCacheLookup
# Input:
#   KPNString - name of KPN for an application
#   ArchitectureString - name of architecture
#   inStreamFilename - stream to listen to for mappings,
#       soonish implemented via named pipes
#   outStreamFilename - stream to output results to,
#       soonish implemented via named pipes
#   opt - optional parameters
#
# Output:
#   NOTHING - see outStream
###############################
MappingsCacheLookup := function(
    KPNString,
    ArchitectureString,
    inStreamFilename,
    outStreamFilename,
    opt...
)
    local inPipe, outPipe, KPNArchitectureData;
    ## Parse KPN and Architecture data
    KPNArchitectureData := ParseKPNArchitecture(
        KPNString,
        ArchitectureString
    );
    inPipe := NamedPipeHandle( inStreamFilename );
    outPipe := NamedPipeHandle( outStreamFilename );
    return ManageOrbits(
        inPipe,
        outPipe,
        KPNArchitectureData
    );
end;
