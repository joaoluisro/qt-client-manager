#include <QtTest>

// add necessary includes here

class ClientTest : public QObject
{
    Q_OBJECT

public:
    ClientTest();
    ~ClientTest();

private slots:
    void test_case1();

};

ClientTest::ClientTest()
{

}

ClientTest::~ClientTest()
{

}

void ClientTest::test_case1()
{

}

QTEST_APPLESS_MAIN(ClientTest)

#include "tst_clienttest.moc"
