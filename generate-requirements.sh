#!/bin/bash
set -eu

cat > requirements.txt << EOF
compel
cupy-cuda12x
fairscale
joblib
lark
pilgram
pygit2
python-ffmpeg
regex
torchdiffeq
torchmetrics
EOF

array=(
https://raw.githubusercontent.com/comfyanonymous/ComfyUI/master/requirements.txt
https://raw.githubusercontent.com/city96/ComfyUI-GGUF/main/requirements.txt
https://raw.githubusercontent.com/crystian/ComfyUI-Crystools/main/requirements.txt
https://raw.githubusercontent.com/cubiq/ComfyUI_essentials/main/requirements.txt
https://raw.githubusercontent.com/cubiq/ComfyUI_FaceAnalysis/main/requirements.txt
https://raw.githubusercontent.com/cubiq/ComfyUI_IPAdapter_plus/main/requirements.txt
https://raw.githubusercontent.com/Fannovel16/ComfyUI-Frame-Interpolation/main/requirements-with-cupy.txt
https://raw.githubusercontent.com/FizzleDorf/ComfyUI_FizzNodes/main/requirements.txt
https://raw.githubusercontent.com/huchenlei/ComfyUI-layerdiffuse/main/requirements.txt
https://raw.githubusercontent.com/kijai/ComfyUI-segment-anything-2/main/requirements.txt
https://raw.githubusercontent.com/Kosinkadink/ComfyUI-VideoHelperSuite/main/requirements.txt
https://raw.githubusercontent.com/Kosinkadink/ComfyUI-Advanced-ControlNet/main/requirements.txt
https://raw.githubusercontent.com/ltdrdata/ComfyUI-Impact-Subpack/main/requirements.txt
https://raw.githubusercontent.com/ltdrdata/ComfyUI-Manager/main/requirements.txt
https://raw.githubusercontent.com/melMass/comfy_mtb/main/requirements.txt
https://raw.githubusercontent.com/MrForExample/ComfyUI-3D-Pack/main/requirements.txt
https://raw.githubusercontent.com/ZHO-ZHO-ZHO/ComfyUI-InstantID/main/requirements.txt
https://raw.githubusercontent.com/alexopus/ComfyUI-Image-Saver//main/requirements.txt
https://raw.githubusercontent.com/pythongosssss/ComfyUI-WD14-Tagger/main/requirements.txt
https://raw.githubusercontent.com/Acly/comfyui-tooling-nodes/main/requirements.txt
https://raw.githubusercontent.com/WASasquatch/was-node-suite-comfyui/main/requirements.txt
https://raw.githubusercontent.com/LarryJane491/Lora-Training-in-Comfy/main/requirements.txt
https://raw.githubusercontent.com/pythongosssss/ComfyUI-WD14-Tagger/main/requirements.txt
https://raw.githubusercontent.com/alexopus/ComfyUI-Image-Saver/main/requirements.txt
https://raw.githubusercontent.com/cubiq/ComfyUI_InstantID/main/requirements.txt
https://raw.githubusercontent.com/Acly/comfyui-tooling-nodes.git/main/requirements.txt
https://raw.githubusercontent.com/cubiq/ComfyUI_IPAdapter_plus/main/requirements.txt
https://raw.githubusercontent.com/huchenlei/ComfyUI-layerdiffuse/main/requirements.txt
https://raw.githubusercontent.com/alexopus/ComfyUI-Image-Saver/main/requirements.txt
https://raw.githubusercontent.com/city96/ComfyUI-GGUF/main/requirements.txt
https://raw.githubusercontent.com/WASasquatch/was-node-suite-comfyui/main/requirements.txt
https://raw.githubusercontent.com/kijai/ComfyUI-segment-anything-2/main/requirements.txt
https://raw.githubusercontent.com/jags111/efficiency-nodes-comfyui/main/requirements.txt
https://raw.githubusercontent.com/rgthree/rgthree-comfy/main/requirements.txt
https://raw.githubusercontent.com/cubiq/ComfyUI_FaceAnalysis/main/requirements.txt
https://raw.githubusercontent.com/ltdrdata/ComfyUI-Inspire-Pack/main/requirements.txt
https://raw.githubusercontent.com/11cafe/comfyui-workspace-manager/main/requirements.txt
https://raw.githubusercontent.com/Fannovel16/comfyui_controlnet_aux/main/requirements.txt
https://raw.githubusercontent.com/ltdrdata/ComfyUI-Manager/main/requirements.txt
https://raw.githubusercontent.com/kijai/ComfyUI-KJNodes/main/requirements.txt
https://raw.githubusercontent.com/comfyanonymous/ComfyUI_bitsandbytes_NF4/main/requirements.txt
https://raw.githubusercontent.com/un-seen/comfyui-tensorops/main/requirements.txt
https://raw.githubusercontent.com/Gourieff/comfyui-reactor-node/main/requirements.txt
https://raw.githubusercontent.com/storyicon/comfyui_segment_anything/main/requirements.txt
https://raw.githubusercontent.com/crystian/ComfyUI-Crystools/main/requirements.txt
https://raw.githubusercontent.com/alisson-anjos/ComfyUI-Ollama-Describer/main/requirements.txt
https://raw.githubusercontent.com/kijai/ComfyUI-Florence2/main/requirements.txt
https://raw.githubusercontent.com/ltdrdata/ComfyUI-Impact-Pack/main/requirements.txt
https://raw.githubusercontent.com/yolain/ComfyUI-Easy-Use/main/requirements.txt
https://raw.githubusercontent.com/FizzleDorf/ComfyUI_FizzNodes/main/requirements.txt
https://raw.githubusercontent.com/WASasquatch/was-node-suite-comfyui/main/requirements.txt
https://raw.githubusercontent.com/MushroomFleet/DJZ-Nodes/main/requirements.txt
https://raw.githubusercontent.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved/main/requirements.txt
https://raw.githubusercontent.com/Fannovel16/ComfyUI-Frame-Interpolation/main/requirements.txt
https://raw.githubusercontent.com/Kosinkadink/ComfyUI-VideoHelperSuite/main/requirements.txt
https://raw.githubusercontent.com/MrForExample/ComfyUI-AnimateAnyone-Evolved/main/requirements.txt

)

for line in "${array[@]}";
    do curl -w "\n" "${line}" >> requirements.txt
done

sed -i '/^#/d' requirements.txt
sed -i 's/[[:space:]]*$//' requirements.txt
sed -i 's/>=.*$//' requirements.txt
sed -i 's/_/-/g' requirements.txt

sort -uo requirements.txt requirements.txt


echo "<requirements.txt> generated. Check before use."
