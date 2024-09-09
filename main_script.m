% Main script to run the mock processes

% Initialize the world object
world = struct();  % Create an empty struct first
world.get_blueprint_library = @mock_get_blueprint_library;  % Assign blueprint library function
world.get_map = @mock_get_map;  % Assign map function

% Run functions
survey_available_technologies(world);  % Survey available technologies
selectedCameras = evaluate_cameras(world);  % Evaluate and select cameras
prototype_testing(world, selectedCameras);  % Run prototype testing on selected cameras
benchmark_simulation();  % Run the benchmark simulation (optional)
collect_dataset();  % Simulate dataset collection
