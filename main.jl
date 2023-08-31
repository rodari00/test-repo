

# Directory Setup
root = dirname(@__FILE__)
cd(root)
push!(LOAD_PATH, "c:\\Users\\feder\\Dropbox\\Github\\gowrisankaran-99\\script\\modules")
# (Activate the project through REPL)
# "C:\\Users\\feder\\Dropbox\\Github\\gowrisankaran-99\\script\\production"
using Primitives
using Utils



# Define the input data as a string
varnames_cons = """
                MAX_FIRMS
                START_FIRMS
                ENTRY_LOW
                ENTRY_HIGH
                ENTRY_SUNK
                ENTRY_AT
                BETA
                DELTA
                SCRAP_VAL
                INV_MULT
                INV_COST
                MC
                MKT_SIZE
                KMAX
                WSTAR
                INTERCEPT
                FIXED_COST
                GAMMA
                TAU
                PROFIT_DONE
                EQL_DONE
                DS_WSTART
                DS_NSIMX
                DS_NSIMW
                DS_NRUNW
                """

varnames_config = """
                  EQL_TYPE
                  ENTRY_TYPE
                  ACTIVE_CFG
                  PREFIX
                  """



MAX_FIRMS=3
START_FIRMS=1
EQL_TYPE="COMPETITION"
ENTRY_TYPE="RAN_ENTRY"
ENTRY_LOW=0.15
ENTRY_HIGH=0.25
ENTRY_SUNK=0.2
ENTRY_AT=4
BETA=0.925
DELTA=0.7
SCRAP_VAL=0.1
INV_MULT=3
INV_COST=1
MC=5
MKT_SIZE=5
KMAX=30
WSTAR=12
INTERCEPT=3
FIXED_COST=0.2
GAMMA=1
TAU=0.1
PROFIT_DONE=0
EQL_DONE=0
ACTIVE_CFG="default"
PREFIX= ""
DS_WSTART=[ENTRY_AT+2; zeros(Int,MAX_FIRMS-1)]
DS_NSIMX=10000
DS_NSIMW=100
DS_NRUNW=100


# Remove leading/trailing whitespaces and split the data into lines
varnames_cons = split(strip(varnames_cons), "\n")
varnames_config = split(strip(varnames_config), "\n")

constants = Constants([eval(Meta.parse(i)) for i in varnames_cons]...)
config = Configurations([eval(Meta.parse(i)) for i in varnames_config]...)




x = 10

for i in 1:5
    y = 0 + i
    println("$y")
end

y
    