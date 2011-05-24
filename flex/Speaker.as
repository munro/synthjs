package {
    import flash.display.Sprite;
    import flash.media.Sound;
    import flash.external.ExternalInterface;
    import flash.events.SampleDataEvent;

    public class Speaker extends Sprite {
        private var sound:Sound = new Sound();

        public function Speaker() {
            sound.addEventListener(SampleDataEvent.SAMPLE_DATA, getSampleData);
            sound.play();
        }

        public function getSampleData(event:SampleDataEvent):void {
            var buffer:Array = ExternalInterface.call('fillAudioBuffer');
            
            for (var i:int = 0; i < buffer.length; i += 1) {
                event.data.writeFloat(buffer[i]);
                event.data.writeFloat(buffer[i]);
            }
        }
    }
}

