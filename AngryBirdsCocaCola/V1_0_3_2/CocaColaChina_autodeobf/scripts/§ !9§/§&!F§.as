package § !9§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&!F§
   {
       
      
      private var §[!@§:SoundChannel;
      
      private var §%7§:Function;
      
      private var §>2§:Number;
      
      public function §&!F§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§[!@§ = param1;
         this.§%7§ = param2;
         this.§[!@§.addEventListener(Event.SOUND_COMPLETE,this.§`!F§);
         this.§>2§ = param1.soundTransform.volume;
      }
      
      private function §`!F§(param1:Event) : void
      {
         this.§[!@§.removeEventListener(Event.SOUND_COMPLETE,this.§`!F§);
         if(this.§%7§ != null)
         {
            this.§%7§.call(null,this);
            this.§%7§ = null;
         }
      }
      
      public function §=!Q§() : void
      {
         this.§`!F§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§[!@§)
         {
            this.§[!@§.stop();
         }
      }
      
      public function §^!O§() : void
      {
         this.§[!@§.removeEventListener(Event.SOUND_COMPLETE,this.§`!F§);
         this.§[!@§ = null;
      }
      
      public function §;!_§() : void
      {
         if(this.§[!@§)
         {
            this.§[!@§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §5l§() : void
      {
         if(this.§[!@§)
         {
            this.§[!@§.soundTransform = new SoundTransform(this.§>2§);
         }
      }
   }
}
