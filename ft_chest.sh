torchrun --nproc_per_node=4 run_class_finetuning.py \
--batch_size 64 --save_ckpt --save_ckpt_freq 10 \
    --epochs 100 --warmup_epochs 20 \
    --model beit_base_patch16_224 --nb_classes 14 \
    --imagenet_default_mean_and_std \
    --model_key state_dict --model_prefix module.visual. \
    --disable_rel_pos_bias --abs_pos_emb --use_cls \ 
    --layer_scale_init_value 0 \
    --lr 4e-3 --drop_path 0 --layer_decay 0.65 \
    --log_dir ./chestlog \
    --output_dir ./chestoutput --finetune /home/yinuo/contrastive/SLIP/checkpoint/clip_base_25ep.pt
