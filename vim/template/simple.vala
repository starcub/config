/*
 * compile with
 *     valac -X '-DGETTEXT_PACKAGE="simple"' --pkg gtk+-2.0 --save-temps simple.vala
 */

public class MainWindow : Gtk.Window {
    public MainWindow () {
        title = _("Main Window");
        set_default_size (300, 50);
        position = Gtk.WindowPosition.CENTER;
        create_widgets ();
    }

    public void create_widgets () {
        destroy += Gtk.main_quit;

        var button = new Gtk.Button.with_label (_("Click me!"));
        button.clicked += ((source) => {
            source.label = _("Thank you");
        });

        add (button);
    }

    static int main (string[] args) {
        Gtk.init (ref args);

        var mainwindow = new MainWindow ();
        mainwindow.show_all ();

        Gtk.main ();
        return 0;
    }
}



