module dlang.dmd.bug.zeros;


void main(readText, FileException, writeln, msg, file, line, info)
{
    try
    {
        readText("dummyFile");
    }
    catch (FileException e)
    {
        writeln("Message:\n", e.msg);
        writeln("File: ", e.file);
        writeln("Line: ", e.line);
        writeln("Stack trace:\n", e.info);

        // Default formatting could be used too
        // writeln(e);
    }
}