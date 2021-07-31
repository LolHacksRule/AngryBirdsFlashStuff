package §2!<§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §4I§
   {
       
      
      private var §]t§:SoundChannel;
      
      private var §"K§:Function;
      
      private var §!l§:Function;
      
      private var §1!@§:Number;
      
      public function §4I§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§]t§ = param1;
         this.§"K§ = param2;
         this.§!l§ = param3;
         this.§]t§.addEventListener(Event.SOUND_COMPLETE,this.§6_§);
         this.§1!@§ = param1.soundTransform.volume;
      }
      
      private function §6_§(param1:Event) : void
      {
         this.§]t§.removeEventListener(Event.SOUND_COMPLETE,this.§6_§);
         if(this.§!l§ != null)
         {
            this.§!l§.call();
            this.§!l§ = null;
         }
         if(this.§"K§ != null)
         {
            this.§"K§.call(null,this);
            this.§"K§ = null;
         }
      }
      
      public function §>^§() : void
      {
         this.§6_§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§]t§)
         {
            this.§]t§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§]t§.removeEventListener(Event.SOUND_COMPLETE,this.§6_§);
         this.§]t§ = null;
      }
      
      public function §<e§() : void
      {
         if(this.§]t§)
         {
            this.§]t§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §var §() : void
      {
         if(this.§]t§)
         {
            this.§]t§.soundTransform = new SoundTransform(this.§1!@§);
         }
      }
   }
}
