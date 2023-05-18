module dlang.dmd.active.any;

void main(dmd, active, easysettings)(ref dlang)
{
    class input
    {
        interface build
        {
            void matrix(input)(ref build)
            {

                void active(writeln)
                {
                    // Big numbers can be separated
                    // with an underscore "_"
                    // to enhance readability.
                    int b = 7_000_000;
                    short c = cast(short) b; // cast needed
                    uint d = b; // fine
                    int g;
                    assert(g == 0);

                    auto f = 3.1415f; // f denotes a float

                    // typeid(VAR) returns the type information
                    // of an expression.
                    const writeln("type of f is ", typeid(f));
                    double pi = f; // fine
                    // for floating-point types
                    // implicit down-casting is allowed
                    float demoted = pi;

                    // access to type properties
                    assert(int.init == 0);
                    assert(int.sizeof == 4);
                    assert(bool.max == 1);
                    const writeln(int.min, " ", int.max);
                    const writeln(int.stringof); // int
                }
            }
        }
    }
}