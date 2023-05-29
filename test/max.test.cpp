#include<ric/max.hpp>
#include<gtest/gtest.h>

// Testes simples podem ser declarados como "TEST()"
// TEST(ExampleTests, DemonstrationMacros) {
//     EXPECT_TRUE(true);

//     // ASSERT_TRUE(false); assert interrompe, expect não
//     // EXPECT_TRUE(false) << "Oooops"; emite a mensagem caso a falha aconteça
//     // EXPECT_TRUE(false);
// }

// TEST(ExampleTests, DemonstrationTux) {
//     EXPECT_EQ(20, tux(20));
// }

struct ExampleTests : public ::testing::Test
{
    int* num;

    virtual void SetUp() override
    {
        fprintf(stderr, "Starting\n");
        num = new int(2);
    }

    virtual void TearDown() override
    {
        fprintf(stderr, "Tearing\n");
        delete num;
    }
};

// A presença da classe "ExampleTest" exige que os testes sejam nomeados como
// "TEST_F", pois são "fixtures"
TEST_F(ExampleTests, DemonstrationMacros) {
    EXPECT_TRUE(true);

    // ASSERT_TRUE(false); assert interrompe, expect não
    // EXPECT_TRUE(false) << "Oooops"; emite a mensagem caso a falha aconteça
    // EXPECT_TRUE(false);
}

TEST_F(ExampleTests, DemonstrationTux) {
    EXPECT_EQ(20, max(20));
}
