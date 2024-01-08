for i in {0..262}; do # set jumlah segment
  input_files+="segment_${i}.ts|"
done


input_files="${input_files%|}"

ffmpeg -i "concat:${input_files}" -c copy outputx.mp4 # output
