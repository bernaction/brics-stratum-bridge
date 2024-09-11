CMD_PATH="../cmd/kaspabridge"
rm -rf release
mkdir -p release
cd release
VERSION=1.0
ARCHIVE="bricsbridge-${VERSION}"
OUTFILE="bricsbridge"
OUTDIR="bricsbridge"

# windows
mkdir -p ${OUTDIR};env GOOS=windows GOARCH=amd64 go build -o ${OUTDIR}/${OUTFILE}.exe ${CMD_PATH};cp ${CMD_PATH}/config.yaml ${OUTDIR}/
rm -rf ${OUTDIR}

# linux
mkdir -p ${OUTDIR};env GOOS=linux GOARCH=amd64 go build -o ${OUTDIR}/${OUTFILE} ${CMD_PATH};cp ${CMD_PATH}/config.yaml ${OUTDIR}/


