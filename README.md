hdacModuleIntegrateTest

## 필요한 개발용 라이브러리 설치 과정

### libsecpk1 설치
```bash
git clone https://github.com/bitcoin-core/secp256k1.git
cd secp256k1
./autogen.sh
./configure --enable-module-recovery
make
sudo make install
```
