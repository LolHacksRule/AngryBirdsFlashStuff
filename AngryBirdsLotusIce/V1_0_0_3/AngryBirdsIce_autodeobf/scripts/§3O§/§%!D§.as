package §3O§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%!D§
   {
       
      
      private var §9!4§:SoundChannel;
      
      private var § S§:Function;
      
      private var §2!"§:Number;
      
      public function §%!D§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§9!4§ = param1;
         this.§ S§ = param2;
         this.§9!4§.addEventListener(Event.SOUND_COMPLETE,this.§0!2§);
         this.§2!"§ = param1.soundTransform.volume;
      }
      
      private function §0!2§(param1:Event) : void
      {
         this.§9!4§.removeEventListener(Event.SOUND_COMPLETE,this.§0!2§);
         if(this.§ S§ != null)
         {
            this.§ S§.call(null,this);
            this.§ S§ = null;
         }
      }
      
      public function §=!0§() : void
      {
         this.§0!2§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§9!4§)
         {
            this.§9!4§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§9!4§.removeEventListener(Event.SOUND_COMPLETE,this.§0!2§);
         this.§9!4§ = null;
      }
      
      public function §[=§() : void
      {
         if(this.§9!4§)
         {
            this.§9!4§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §=D§() : void
      {
         if(this.§9!4§)
         {
            this.§9!4§.soundTransform = new SoundTransform(this.§2!"§);
         }
      }
   }
}
