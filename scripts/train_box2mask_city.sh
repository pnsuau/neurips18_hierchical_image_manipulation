python3 train_box2mask.py --dataroot=/data1/pnsuau/cityscape/ --dataloader cityscape --name neurips_box2mask_city \
  --use_gan --prob_bg 0.3 --label_nc 35 --output_nc 35 --model AE_maskgen_twostream \
  --which_stream obj_context --tf_log --batchSize 16 --first_conv_stride 1 --first_conv_size 5 \
  --conv_size 4 --num_layers 3 --use_resnetblock 1 --num_resnetblocks 1 --nThreads 2 \
  --niter 400 --beta1 0.5 --objReconLoss bce --norm_layer batch --cond_in ctx_obj \
  --gan_weight 0.1 --which_gan patch_multiscale --num_layers_D 3 --n_blocks 6 --fineSize 256 \
  --use_output_gate --no_comb --contextMargin 2 --use_ganFeat_loss \
  --min_box_size 128 --max_box_size 256 --gpu_ids 3

