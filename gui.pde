/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw4(PApplet appc, GWinData data) { //_CODE_:window1:683676:
  appc.background(230);
} //_CODE_:window1:683676:

public void slider1_change2(GSlider source, GEvent event) { //_CODE_:densityslider:897880:
  fldensity = int(densityslider.getValueF());
} //_CODE_:densityslider:897880:

public void button1_click1(GButton source, GEvent event) { //_CODE_:togglepoles:881139:
  pToggle = !pToggle;
} //_CODE_:togglepoles:881139:

public void button2_click1(GButton source, GEvent event) { //_CODE_:addmagnet:218000:
  Magnet temp = new Magnet(500,400, 200, 50);
  temp.addPole(420,400,500,1);
  temp.addPole(580,400,500,-1);
  mField.addMagnet(temp);
} //_CODE_:addmagnet:218000:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:accuracyslider:317369:
  flaccuracy = accuracyslider.getValueF();
} //_CODE_:accuracyslider:317369:

public void button1_click2(GButton source, GEvent event) { //_CODE_:toggleArrows:383952:
  tToggle = !tToggle;
} //_CODE_:toggleArrows:383952:

public void slider1_change3(GSlider source, GEvent event) { //_CODE_:strengthslider:208879:
  if (mField.clickSelected != null) {
    mField.clickSelected.setStrength(strengthslider.getValueF());
  
  }
} //_CODE_:strengthslider:208879:

public void button1_click3(GButton source, GEvent event) { //_CODE_:togglemagnets:682564:
  mToggle = !mToggle;
} //_CODE_:togglemagnets:682564:

public void slider1_change4(GSlider source, GEvent event) { //_CODE_:angleslider:226420:
  if (mField.clickSelected != null) {
    mField.clickSelected.rotatePoles(angleslider.getValueF());
  
  }
} //_CODE_:angleslider:226420:

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:colourlist:633069:
  if (mField.clickSelected != null) {
    String option = colourlist.getSelectedText().trim();
    color c = color(255);
    
    if (option.equals("Green")) {
      c = color(0,255,0);
      
    } else if (option.equals("Blue")) {
      c = color(0,0,255);
    } else if (option.equals("Purple")) {
      c = color(255,0,255);
    } else if (option.equals("Purple")) {
      c = color(255);
    } else if (option.equals("Pink")) {
      c = color(244,120,212);
    } else if (option.equals("Yellow")) {
      c = color(255,255,0);
    } else if (option.equals("Teal")) {
      c = color(50,200,255);
    }
    
    mField.clickSelected.setColour(c);
    mField.clickSelected.cName = option;
  }
} //_CODE_:colourlist:633069:

public void button1_click4(GButton source, GEvent event) { //_CODE_:removebutton:357513:
  mField.removeMagnet(mField.clickSelected);
} //_CODE_:removebutton:357513:

public void button1_click5(GButton source, GEvent event) { //_CODE_:pulsebutton:993046:
  mField.resetPulses();
} //_CODE_:pulsebutton:993046:

public void button1_click6(GButton source, GEvent event) { //_CODE_:glowbutton:956324:
  gToggle = !gToggle;
} //_CODE_:glowbutton:956324:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Magnetic Fields");
  window1 = GWindow.getWindow(this, "Settings", 0, 0, 400, 500, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw4");
  label2 = new GLabel(window1, 45, 38, 118, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Field line density");
  label2.setOpaque(false);
  densityslider = new GSlider(window1, 7, 61, 192, 55, 10.0);
  densityslider.setShowValue(true);
  densityslider.setShowLimits(true);
  densityslider.setLimits(5, 1, 20);
  densityslider.setNbrTicks(20);
  densityslider.setShowTicks(true);
  densityslider.setNumberFormat(G4P.INTEGER, 0);
  densityslider.setOpaque(false);
  densityslider.addEventHandler(this, "slider1_change2");
  togglepoles = new GButton(window1, 218, 118, 172, 49);
  togglepoles.setText("Toggle Poles");
  togglepoles.addEventHandler(this, "button1_click1");
  addmagnet = new GButton(window1, 15, 118, 177, 49);
  addmagnet.setText("Add Magnet");
  addmagnet.addEventHandler(this, "button2_click1");
  accuracyslider = new GSlider(window1, 207, 62, 185, 54, 10.0);
  accuracyslider.setShowValue(true);
  accuracyslider.setShowLimits(true);
  accuracyslider.setLimits(5.0, 1.0, 10.0);
  accuracyslider.setNbrTicks(10);
  accuracyslider.setShowTicks(true);
  accuracyslider.setNumberFormat(G4P.DECIMAL, 2);
  accuracyslider.setOpaque(false);
  accuracyslider.addEventHandler(this, "slider1_change1");
  label1 = new GLabel(window1, 237, 38, 119, 23);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Field Line Accuracy");
  label1.setOpaque(false);
  label3 = new GLabel(window1, 123, 8, 138, 26);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Global Variables");
  label3.setOpaque(false);
  toggleArrows = new GButton(window1, 15, 172, 177, 46);
  toggleArrows.setText("Toggle Arrows");
  toggleArrows.addEventHandler(this, "button1_click2");
  nothinglabel = new GLabel(window1, 129, 371, 145, 46);
  nothinglabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  nothinglabel.setText("Select a magnet to change its properties");
  nothinglabel.setOpaque(false);
  strengthslider = new GSlider(window1, 11, 342, 186, 58, 10.0);
  strengthslider.setShowValue(true);
  strengthslider.setShowLimits(true);
  strengthslider.setLimits(1.0, 1.0, 1000.0);
  strengthslider.setNumberFormat(G4P.DECIMAL, 2);
  strengthslider.setOpaque(false);
  strengthslider.addEventHandler(this, "slider1_change3");
  strengthlabel = new GLabel(window1, 74, 307, 64, 22);
  strengthlabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  strengthlabel.setText("Strength");
  strengthlabel.setOpaque(false);
  togglemagnets = new GButton(window1, 217, 172, 172, 47);
  togglemagnets.setText("Toggle Magnets");
  togglemagnets.addEventHandler(this, "button1_click3");
  label4 = new GLabel(window1, 150, 278, 103, 28);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Magnet Variables");
  label4.setOpaque(false);
  anglelabel = new GLabel(window1, 262, 311, 80, 18);
  anglelabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  anglelabel.setText("Angle");
  anglelabel.setOpaque(false);
  angleslider = new GSlider(window1, 213, 343, 180, 56, 10.0);
  angleslider.setShowValue(true);
  angleslider.setShowLimits(true);
  angleslider.setLimits(0.0, 0.0, 6.2831855);
  angleslider.setNumberFormat(G4P.DECIMAL, 2);
  angleslider.setOpaque(false);
  angleslider.addEventHandler(this, "slider1_change4");
  colourlist = new GDropList(window1, 50, 434, 92, 52, 3, 10);
  colourlist.setItems(loadStrings("list_633069"), 0);
  colourlist.addEventHandler(this, "dropList1_click1");
  colourlabel = new GLabel(window1, 56, 406, 80, 22);
  colourlabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  colourlabel.setText("Colour");
  colourlabel.setOpaque(false);
  removebutton = new GButton(window1, 215, 415, 175, 48);
  removebutton.setText("Remove Magnet");
  removebutton.addEventHandler(this, "button1_click4");
  pulsebutton = new GButton(window1, 15, 224, 174, 46);
  pulsebutton.setText("Reset Pulses");
  pulsebutton.addEventHandler(this, "button1_click5");
  glowbutton = new GButton(window1, 216, 223, 172, 47);
  glowbutton.setText("Toggle Glow");
  glowbutton.addEventHandler(this, "button1_click6");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GLabel label2; 
GSlider densityslider; 
GButton togglepoles; 
GButton addmagnet; 
GSlider accuracyslider; 
GLabel label1; 
GLabel label3; 
GButton toggleArrows; 
GLabel nothinglabel; 
GSlider strengthslider; 
GLabel strengthlabel; 
GButton togglemagnets; 
GLabel label4; 
GLabel anglelabel; 
GSlider angleslider; 
GDropList colourlist; 
GLabel colourlabel; 
GButton removebutton; 
GButton pulsebutton; 
GButton glowbutton; 
