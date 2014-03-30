class Keyboard_input

  def with_unbuffered_input
    old_attrs = Termios.tcgetattr(STDOUT)

    new_attrs = old_attrs.dup

    new_attrs.lflag &= ~Termios::ECHO
    new_attrs.lflag &= ~Termios::ICANON

    Termios::tcsetattr(STDOUT, Termios::TCSANOW, new_attrs)

    yield
  ensure
    Termios::tcsetattr(STDOUT, Termios::TCSANOW, old_attrs)
  end

end
