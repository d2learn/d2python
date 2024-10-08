target("hellopylings")
    set_kind("phony")
    add_files("tests/helloworld.py")
    on_run(function (target)
        import("common")
        common.xlings_python(os.scriptdir() .. "/tests/helloworld.py")
    end)

target("pylings-demo")
    set_kind("phony")
    add_files("exercises/pylings.py")
    add_files("tests/pylings-demo.py")
    on_run(function (target)
        import("common")
        common.xlings_python(os.scriptdir() .. "/tests/pylings-demo.py")
    end)
