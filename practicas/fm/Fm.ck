public class Fm
{
  20 => int modulatorFreq;
  1000 => int modulatorGain;
  0.5 => float ratio;

  public void fmSynth(Osc modulator, Osc carrier, float ratio)
  {
    2 => carrier.sync; //debe ser dos para que se monte una sobre la otra
    modulatorGain => modulator.gain;
    modulatorFreq * ratio => modulator.freq;
    modulator => carrier => dac;
  }

  public int changeModulatorFreq(int freq)
  {
      freq => modulatorFreq;
      return freq;
  }

}
// test
// Fm fm;
// SinOsc s,r;
// fm.fmSynth(s,r);
// 1::day => now;
