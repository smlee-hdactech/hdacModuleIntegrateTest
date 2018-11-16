export LD_LIBRARY_PATH=/home/moony/fdevel/jobs/mycheck/hdacModuleIntegrateTest/debug-build/rpccall:/home/moony/fdevel/jobs/mycheck/hdacModuleIntegrateTest/debug-build/strcodec

if [ -f cgo-check ]; then
./cgo-check
else
go run getinfo.go
fi