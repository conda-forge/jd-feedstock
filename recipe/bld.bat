@echo on

go build -buildmode=pie -trimpath -ldflags "-w -X main.revision=conda-forge" -v -o %LIBRARY_PREFIX%\bin\jd.exe
go-licenses save . --save_path .\library_licenses
