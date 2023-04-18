# Copyright (c) Meta Platforms, Inc. and affiliates.
# This software may be used and distributed according to the terms of the GNU General Public License version 3.

PRESIGNED_URL="https://dobf1k6cxlizq.cloudfront.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kb2JmMWs2Y3hsaXpxLmNsb3VkZnJvbnQubmV0LyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODE4OTM3OTJ9fX1dfQ__&Signature=ucIlwL8T486Bfv-a4e5QeGF0W255zMob7xJc4zjxcBfmiso-m5ymU~SXoFT8QjxiwnWFhysjcYFdHDYoNzijEsWTjghxw48DE~rbx8j8Q9npiyCieKvWAWaufMcbl75Xx6Gzm8wRC2SlT9gqTChIpKjds4IvAgf3PEA~XsKUZMOK7oMSZhCoTBa1tg4qHiSjU0JKQZXWuzs88UJTskZY5kvo5GzmPOb5LLUmI9TO2uZKLQuDvW7K1PPqO35OhIXDJra5FqZWiGFfHWDZxoove87jU3NIt0YtP2dJwQpNQ8FLQ3aD4fz-pzy-A0pu4vuTxpQRNOdNpZ11JkeXLhNC-w__&Key-Pair-Id=K231VYXPC1TA1R"
# replace with presigned url from email
MODEL_SIZE="7B,13B,30B,65B"  # edit this list with the model sizes you wish to download
TARGET_FOLDER="/mnt/d/llama_weights"             # where all files should end up

(cd ${TARGET_FOLDER} && md5sum -c tokenizer_checklist.chk)

for i in ${MODEL_SIZE//,/ }
do
    echo "Checking checksums"
    (cd ${TARGET_FOLDER}"/${i}" && md5sum -c checklist.chk)
done
