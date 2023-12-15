cairo-compile fibonacci_starknet_with_keccak.cairo --output fibonacci_compiled.json --proof_mode

cairo-run \
    --program=fibonacci_compiled.json \
    --layout=starknet_with_keccak \
    --program_input=fibonacci_input.json \
    --air_public_input=fibonacci_public_input.json \
    --air_private_input=fibonacci_private_input.json \
    --trace_file=fibonacci_trace.json \
    --memory_file=fibonacci_memory.json \
    --print_output \
    --proof_mode

./cpu_air_prover \
    --out_file=fibonacci_proof.json \
    --private_input_file=fibonacci_private_input.json \
    --public_input_file=fibonacci_public_input.json \
    --prover_config_file=cpu_air_prover_config.json \
    --parameter_file=cpu_air_params_starknet_with_keccak.json \
    -generate_annotations