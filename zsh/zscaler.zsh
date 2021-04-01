export CERT_PATH=$(python -m certifi)
export SSL_CERT_FILE=${CERT_PATH}
export REQUESTS_CA_BUNDLE=${CERT_PATH}
export AWS_CA_BUNDLE=${CERT_PATH}

