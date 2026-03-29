module bootstrap/debug

pub effect dbg
  fun debug(msg: string): ()
  fun warn(msg: string): ()
  fun info(msg: string): ()
  fun error(msg: string): ()

// pub fun show/debug(t:a, ?show: a -> <dbg|e> string): <dbg, div|e> string
//   debug(t.show)


fun colour-debug(action: () -> <dbg|e> a) : <dbg|e> a
  with override
    fun debug(msg) debug("\x1b[34m[DEBUG]\x1b[0m " ++ msg)
    fun warn(msg) warn("\x1b[33m[WARN]\x1b[0m  " ++ msg)
    fun info(msg) info("\x1b[32m[INFO]\x1b[0m  " ++ msg)
    fun error(msg) error("\x1b[31m[ERROR]\x1b[0m " ++ msg)
  action()

pub fun dbg-handler(action: () -> <dbg, console|e> a) : <console|e> a
  with handler
    fun debug(msg) println(msg)
    fun warn(msg) println(msg)
    fun info(msg) println(msg)
    fun error(msg) println(msg)
  with colour-debug
  action()

pub fun dbg-none(action: () -> <dbg|e> a) : e a
  with handler
    fun debug(msg) ()
    fun warn(msg) ()
    fun info(msg) ()
    fun error(msg) ()
  action()

pub fun dbg-quiet(action: () -> <dbg|e> a) : <dbg|e> a
  with override
    fun debug(msg) ()
    fun warn(msg) warn(msg)
    fun info(msg) ()
    fun error(msg) error(msg)
  action()

fun main()
  with dbg-handler
  debug("This is a debug message")
  warn("This is a warning")
  info("This is some info")
  error("This is an error")