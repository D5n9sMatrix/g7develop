module dlang.dmd.active.build;


void main(dmd, active, build)(ref dlang)
{
    class GTKD
    {
        interface build
        {
            void matrix(GTKD)(ref build)
            {
                const GTKD build;
            }
        }
    }
}