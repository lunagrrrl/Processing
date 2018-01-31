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

synchronized public void controlWindow_draw(PApplet appc, GWinData data) { //_CODE_:controlwindow:698235:
  appc.background(230);
} //_CODE_:controlwindow:698235:

public void speedSlider_changed(GSlider source, GEvent event) { //_CODE_:speedSlider:827963:
  //println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
  speed = source.getValueF();
  println(speed);
} //_CODE_:speedSlider:827963:

public void scaleSlider_changed(GSlider source, GEvent event) { //_CODE_:scaleSlider:293286:
  //println("slider2 - GSlider >> GEvent." + event + " @ " + millis());
  scale = source.getValueF();
} //_CODE_:scaleSlider:293286:

public void lineGapSlider_changed(GSlider source, GEvent event) { //_CODE_:lineGapSlider:962500:
  //println("filterSlider - GSlider >> GEvent." + event + " @ " + millis());
  filter = source.getValueI();
} //_CODE_:lineGapSlider:962500:

public void thicknessSlider_changed(GSlider source, GEvent event) { //_CODE_:thicknessSlider:215607:
  //println("thicknessSlider - GSlider >> GEvent." + event + " @ " + millis());
  thickness = source.getValueI();
} //_CODE_:thicknessSlider:215607:

public void symmetryButton_clicked(GButton source, GEvent event) { //_CODE_:symmetryButton:869025:
  //println("symmetryButton - GButton >> GEvent." + event + " @ " + millis());
  enableSymmetry = !enableSymmetry;
} //_CODE_:symmetryButton:869025:

public void detailSlider_changed(GSlider source, GEvent event) { //_CODE_:detailSlider:721767:
  //println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
  noiseDetail(source.getValueI());
} //_CODE_:detailSlider:721767:

public void renderButton_clicked(GButton source, GEvent event) { //_CODE_:renderButton:833798:
  //println("renderButton - GButton >> GEvent." + event + " @ " + millis());
  render = true;
  renderBegin = frameCount;
} //_CODE_:renderButton:833798:

public void osc1freqSlider_changed(GSlider source, GEvent event) { //_CODE_:osc1freqSlider:351604:
  //println("imgoscfreqSlider - GSlider >> GEvent." + event + " @ " + millis());
  osc1Speed = source.getValueF();
} //_CODE_:osc1freqSlider:351604:

public void imagesButton_clicked(GButton source, GEvent event) { //_CODE_:imagesButton:532557:
  //println("imagesButton - GButton >> GEvent." + event + " @ " + millis());
  enableImages = !enableImages;
} //_CODE_:imagesButton:532557:

public void osc1ampSlider_changed(GSlider source, GEvent event) { //_CODE_:osc1ampSlider:981128:
  //println("osc1ampSlider - GSlider >> GEvent." + event + " @ " + millis());
  osc1Amp = source.getValueF();
} //_CODE_:osc1ampSlider:981128:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  controlwindow = GWindow.getWindow(this, "Controls", 0, 0, 500, 500, JAVA2D);
  controlwindow.noLoop();
  controlwindow.addDrawHandler(this, "controlWindow_draw");
  speedLabel = new GLabel(controlwindow, 0, 0, 70, 40);
  speedLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  speedLabel.setText("Noise Speed");
  speedLabel.setOpaque(false);
  label_scale = new GLabel(controlwindow, 0, 40, 70, 40);
  label_scale.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label_scale.setText("Noise Scale");
  label_scale.setOpaque(false);
  speedSlider = new GSlider(controlwindow, 70, 0, 221, 40, 10.0);
  speedSlider.setShowValue(true);
  speedSlider.setShowLimits(true);
  speedSlider.setLimits(0.01, 0.001, 0.1);
  speedSlider.setEasing(30.0);
  speedSlider.setNumberFormat(G4P.DECIMAL, 2);
  speedSlider.setOpaque(false);
  speedSlider.addEventHandler(this, "speedSlider_changed");
  scaleSlider = new GSlider(controlwindow, 70, 40, 220, 40, 10.0);
  scaleSlider.setShowValue(true);
  scaleSlider.setShowLimits(true);
  scaleSlider.setLimits(0.05, 0.001, 0.1);
  scaleSlider.setEasing(30.0);
  scaleSlider.setNumberFormat(G4P.DECIMAL, 2);
  scaleSlider.setOpaque(false);
  scaleSlider.addEventHandler(this, "scaleSlider_changed");
  lineGapLabel = new GLabel(controlwindow, 0, 80, 70, 40);
  lineGapLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lineGapLabel.setText("Line Gap");
  lineGapLabel.setOpaque(false);
  lineGapSlider = new GSlider(controlwindow, 70, 80, 220, 40, 10.0);
  lineGapSlider.setShowValue(true);
  lineGapSlider.setShowLimits(true);
  lineGapSlider.setLimits(128, 1, 256);
  lineGapSlider.setEasing(15.0);
  lineGapSlider.setNumberFormat(G4P.INTEGER, 0);
  lineGapSlider.setOpaque(false);
  lineGapSlider.addEventHandler(this, "lineGapSlider_changed");
  thicknessLabel = new GLabel(controlwindow, 0, 120, 70, 40);
  thicknessLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  thicknessLabel.setText("Thickness");
  thicknessLabel.setOpaque(false);
  thicknessSlider = new GSlider(controlwindow, 70, 120, 220, 40, 10.0);
  thicknessSlider.setShowValue(true);
  thicknessSlider.setShowLimits(true);
  thicknessSlider.setLimits(10.0, 1.0, 128.0);
  thicknessSlider.setEasing(15.0);
  thicknessSlider.setNumberFormat(G4P.DECIMAL, 2);
  thicknessSlider.setOpaque(false);
  thicknessSlider.addEventHandler(this, "thicknessSlider_changed");
  symmetryButton = new GButton(controlwindow, 430, 0, 70, 40);
  symmetryButton.setText("Symmetry");
  symmetryButton.setTextBold();
  symmetryButton.addEventHandler(this, "symmetryButton_clicked");
  detailSlider = new GSlider(controlwindow, 70, 160, 220, 50, 10.0);
  detailSlider.setShowValue(true);
  detailSlider.setShowLimits(true);
  detailSlider.setLimits(2, 1, 6);
  detailSlider.setNbrTicks(6);
  detailSlider.setStickToTicks(true);
  detailSlider.setShowTicks(true);
  detailSlider.setNumberFormat(G4P.INTEGER, 0);
  detailSlider.setOpaque(false);
  detailSlider.addEventHandler(this, "detailSlider_changed");
  detailLabel = new GLabel(controlwindow, 0, 160, 70, 50);
  detailLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  detailLabel.setText("Noise Detail");
  detailLabel.setOpaque(false);
  renderButton = new GButton(controlwindow, 300, 0, 60, 40);
  renderButton.setText("Render (slow!)");
  renderButton.setTextBold();
  renderButton.addEventHandler(this, "renderButton_clicked");
  imgoscfreqLabel = new GLabel(controlwindow, 0, 210, 70, 40);
  imgoscfreqLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  imgoscfreqLabel.setText("Osc 1 Freq");
  imgoscfreqLabel.setOpaque(false);
  osc1freqSlider = new GSlider(controlwindow, 70, 210, 220, 40, 10.0);
  osc1freqSlider.setShowValue(true);
  osc1freqSlider.setLimits(0.05, 0.001, 0.1);
  osc1freqSlider.setEasing(30.0);
  osc1freqSlider.setNumberFormat(G4P.DECIMAL, 2);
  osc1freqSlider.setOpaque(false);
  osc1freqSlider.addEventHandler(this, "osc1freqSlider_changed");
  imagesButton = new GButton(controlwindow, 360, 0, 70, 40);
  imagesButton.setText("Images");
  imagesButton.setTextBold();
  imagesButton.addEventHandler(this, "imagesButton_clicked");
  osc1ampLabel = new GLabel(controlwindow, 0, 250, 70, 40);
  osc1ampLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  osc1ampLabel.setText("Osc 1 Amp");
  osc1ampLabel.setOpaque(false);
  osc1ampSlider = new GSlider(controlwindow, 70, 250, 220, 40, 10.0);
  osc1ampSlider.setLimits(32.0, 1.0, 128.0);
  osc1ampSlider.setNumberFormat(G4P.DECIMAL, 2);
  osc1ampSlider.setOpaque(false);
  osc1ampSlider.addEventHandler(this, "osc1ampSlider_changed");
  controlwindow.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow controlwindow;
GLabel speedLabel; 
GLabel label_scale; 
GSlider speedSlider; 
GSlider scaleSlider; 
GLabel lineGapLabel; 
GSlider lineGapSlider; 
GLabel thicknessLabel; 
GSlider thicknessSlider; 
GButton symmetryButton; 
GSlider detailSlider; 
GLabel detailLabel; 
GButton renderButton; 
GLabel imgoscfreqLabel; 
GSlider osc1freqSlider; 
GButton imagesButton; 
GLabel osc1ampLabel; 
GSlider osc1ampSlider; 