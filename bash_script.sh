echo "create conda environment"
conda create -p venv python==3.7 -y
echo "conda environment created successfully"

echo "Activate conda environment"
conda activate ./venv
echo "Environment activated"

echo "create project structure"
mkdir app_config app_exception app_logger app_pipeline app_src app_util config app_entity
echo "project structure created"

echo "start creating python script for each module"
touch app_entity/__init__.py app_entity/config_entity.py
echo "app configuration file created successfully"

echo "start creating app exception script"
touch app_exception/__init__.py app_exception/exception.py
echo "app exception file created"

echo "start creating app logger script"
touch app_logger/__init__.py app_logger/logger.py

echo "start creating app pipeline script"
touch app_pipeline/__init__.py app_pipeline/training_pipeline.py app_pipeline/production_pipeline.py
echo "app pipeline script created"

echo "start creating app src script"
touch app_src/__init__.py app_src/stage_00_data_ingestion.py app_src/stage_01_data_validation.py
touch app_src/stage_02_data_transformation.py app_src/stage_03_model_trainer.py app_src/stage_04_model_evaluation.py
touch app_src/stage_05_model_pusher.py
echo "app src scripts created successfully"

echo "start creating app util scripts"
touch app_util/__init__.py app_util/util.py
echo "app util file created successfully"

echo "start creating requirements.txt file"
touch requirements.txt

echo "start creating setup.py file"
touch setup.py

echo "all required python scripts created successfully"
mkdir config
touch config/config.yaml
echo "configuration files created successfully"