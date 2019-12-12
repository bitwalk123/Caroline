using Gtk;
using Gee;
using Cairo;

//

public void main (string[] args) {

  //Setting up the GTK window
  Gtk.init (ref args);
  var window = new Gtk.Window ();
  window.set_position (Gtk.WindowPosition.CENTER);
  window.set_default_size(500,500);

  //Building grid to put the widget into
  Gtk.Grid mainGrid = new Gtk.Grid ();
  mainGrid.orientation = Gtk.Orientation.VERTICAL;

  //Simply set Caroline to a variable
  var widget = new Caroline ();

  //Give some data to Caroline
  widget.DATA = {59,78,43,42,71,41,12,55,26,40,18,57,32,42,85,19,83,100,89,3};

  for (int i = 0; i < widget.DATA.length+1; i++){

    widget.labelXList.add(i.to_string().concat(widget.dataTypeX));

  }

  //Add the Caroline widget tp the grid
  mainGrid.attach (widget, 0, 0, 1, 1);
  mainGrid.set_row_homogeneous(true);
  mainGrid.set_column_homogeneous(true);

  window.add(mainGrid);
  window.destroy.connect (Gtk.main_quit);
  window.show_all ();

  Gtk.main ();

}
