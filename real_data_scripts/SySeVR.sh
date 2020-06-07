#dataset=$1;
#batch_size=$2;
#model_type=$3;
#export PYTHONPATH='../Vuld_SySe/':$PYTHONPATH
#for i in 1 2 3 4 5; do
#	python ../Vuld_SySe/vul_det_main.py \
#		--train_file ../data/SySeVR/API_function_call-${dataset}.json ../data/SySeVR/Arithmetic_expression-${dataset}.json ../data/SySeVR/Array_usage-${dataset}.json ../data/SySeVR/Pointer_usage-${dataset}.json \
#		--model_path ../models/SySeVR/${dataset}_intra_dataset-${i}.bin \
#		--word_to_vec ../data/Word2Vec/li_et_al_wv \
#		--batch_size ${batch_size} \
#		--model_type ${model_type} --intra_dataset >> ../outputs/${dataset}-SySeVR-${model_type}.log;
#done


dataset=$1;
batch_size=$2;
model_type=$3;
export PYTHONPATH='../Vuld_SySe/':$PYTHONPATH
for i in 1; do
	python ../Vuld_SySe/vul_det_main.py \
		--train_file ../data/full_experiment_real_data_processed/${dataset}-syse.json \
		--model_path ../models/SySeVR/${dataset}_new_intra_dataset-${i}.bin \
		--word_to_vec ../data/Word2Vec/li_et_al_wv \
		--batch_size ${batch_size} \
		--model_type ${model_type} --intra_dataset >> ../outputs/${dataset}-SySeVR-${model_type}-new_intra_dataset.log;
done