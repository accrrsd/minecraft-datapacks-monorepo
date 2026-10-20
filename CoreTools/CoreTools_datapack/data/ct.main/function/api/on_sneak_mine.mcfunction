# Hook for addons to intercept sneaking logic.
# If an addon handles the block breaking (e.g. vein miner), it should break the block and do nothing else.
# The base datapack will just 'return 0' immediately after this function finishes for most tools, which stops the 3x3 breaking and allows vanilla 1-block breaking.
