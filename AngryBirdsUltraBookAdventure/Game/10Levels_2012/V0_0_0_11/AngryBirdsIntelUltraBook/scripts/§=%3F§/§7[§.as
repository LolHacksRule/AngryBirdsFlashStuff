package §=?§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7[§
   {
       
      
      private var §9!I§:SoundChannel;
      
      private var §^V§:Function;
      
      private var §]o§:Function;
      
      private var §0[§:Number;
      
      public function §7[§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§9!I§ = param1;
         this.§^V§ = param2;
         this.§]o§ = param3;
         this.§9!I§.addEventListener(Event.SOUND_COMPLETE,this.§^#§);
         this.§0[§ = param1.soundTransform.volume;
      }
      
      private function §^#§(param1:Event) : void
      {
         this.§9!I§.removeEventListener(Event.SOUND_COMPLETE,this.§^#§);
         if(this.§]o§ != null)
         {
            this.§]o§.call();
            this.§]o§ = null;
         }
         if(this.§^V§ != null)
         {
            this.§^V§.call(null,this);
            this.§^V§ = null;
         }
      }
      
      public function §case §() : void
      {
         this.§^#§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§9!I§)
         {
            this.§9!I§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§9!I§.removeEventListener(Event.SOUND_COMPLETE,this.§^#§);
         this.§9!I§ = null;
      }
      
      public function §<!`§() : void
      {
         if(this.§9!I§)
         {
            this.§9!I§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §0z§() : void
      {
         if(this.§9!I§)
         {
            this.§9!I§.soundTransform = new SoundTransform(this.§0[§);
         }
      }
   }
}
