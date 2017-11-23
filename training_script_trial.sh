echo "------------------------------------------"
echo "Starting first training phase with --max_enc_steps=10 --max_dec_steps=10"

python paper_git/pointer-generator/run_summarization.py --mode=train --data_path=finished_files/finished_files/chunked/train_* --vocab_path=finished_files/finished_files/vocab --log_root=logging --exp_name=training0 --eval_data_path=finished_files/finished_files/val.bin --nb_training_steps=1 --max_enc_steps=10 --max_dec_steps=10

echo "------------------------------------------"
echo "Starting second training phase with --max_enc_steps=50 --max_dec_steps=50"

python paper_git/pointer-generator/run_summarization.py --mode=train --data_path=finished_files/finished_files/chunked/train_* --vocab_path=finished_files/finished_files/vocab --log_root=logging --exp_name=training0 --eval_data_path=finished_files/finished_files/val.bin --nb_training_steps=1 --max_enc_steps=50 --max_dec_steps=50

echo "------------------------------------------"
echo "Starting third training phase with --max_enc_steps=200 --max_dec_steps=50"

python paper_git/pointer-generator/run_summarization.py --mode=train --data_path=finished_files/finished_files/chunked/train_* --vocab_path=finished_files/finished_files/vocab --log_root=logging --exp_name=training0 --eval_data_path=finished_files/finished_files/val.bin --nb_training_steps=1 --max_enc_steps=200 --max_dec_steps=50

echo "------------------------------------------"
echo "Starting last training phase with --max_enc_steps=400 --max_dec_steps=100"

python paper_git/pointer-generator/run_summarization.py --mode=train --data_path=finished_files/finished_files/chunked/train_* --vocab_path=finished_files/finished_files/vocab --log_root=logging --exp_name=training0 --eval_data_path=finished_files/finished_files/val.bin --nb_training_steps=1 --max_enc_steps=400 --max_dec_steps=100
