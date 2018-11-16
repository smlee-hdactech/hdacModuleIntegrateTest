#include <iostream>
#include <rpccaller.h>
#include <hashes.h>
#include <cif_rpccall.h>

using namespace std;
using namespace json_spirit;

void testCalcSHA256()
{
    using namespace std::placeholders;
    //obtainHash("This is test message", displayHashValue);
    // data from https://passwordsgenerator.net/sha256-hash-generator/
    auto compareHash = bind(compareHashValue, _1, "DDDBDC2845C9D80DC288710D9B2CF2D6C4F613D0DC4C048A9EA0E8674C2C5E73");
    obtainHash("This is test message", compareHash);
//    auto compareHash1 = bind(compareHashValue, _1, "CDDBDC2845C9D80DC288710D9B2CF2D6C4F613D0DC4C048A9EA0E8674C2C5E73");
//    obtainHash("This is test message", compareHash1);
}

int main()
{
    cout << "1. test sha256 of \"This is test message\"" << endl;
    testCalcSHA256();

    cout << "2. test sha256 of file, video1.mp4" << endl;
    hashFromFile("video1.mp4");

    cout << "3. test fo rpc call" << endl;
    Array params;
    ShowResultWithRPC("getinfo", params);

    cout << "4. temp test" << endl;
    getinfo();

    return 0;
}
