#############################################################################
##
##                       KPN-Architecture-Mappings
##  mappings-cache-lookup.g
##                                                          Sergio Siccha
##                                                          Andres Goens
##
##  Copyright...
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
    local inPipe, KPNArchitectureData;
    ## Parse KPN and Architecture data
    KPNArchitectureData := ParseKPNArchitecture(
        KPNString,
        ArchitectureString
    );
    inPipe := NamedPipeHandle( inStreamFilename );
    return ManageOrbits(
        inPipe,
        KPNArchitectureData
    );
end;
