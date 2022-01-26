package §2!Q§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §@!-§
   {
       
      
      private var §@!H§:SoundChannel;
      
      private var § !M§:Function;
      
      private var §5![§:Function;
      
      private var §6!'§:Number;
      
      public function §@!-§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§@!H§ = param1;
         this.§ !M§ = param2;
         this.§5![§ = param3;
         this.§@!H§.addEventListener(Event.SOUND_COMPLETE,this.§8J§);
         this.§6!'§ = param1.soundTransform.volume;
      }
      
      private function §8J§(param1:Event) : void
      {
         this.§@!H§.removeEventListener(Event.SOUND_COMPLETE,this.§8J§);
         if(this.§5![§ != null)
         {
            this.§5![§.call();
            this.§5![§ = null;
         }
         if(this.§ !M§ != null)
         {
            this.§ !M§.call(null,this);
            this.§ !M§ = null;
         }
      }
      
      public function §`!G§() : void
      {
         this.§8J§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§@!H§)
         {
            this.§@!H§.stop();
         }
      }
      
      public function §`X§() : void
      {
         this.§@!H§.removeEventListener(Event.SOUND_COMPLETE,this.§8J§);
         this.§@!H§ = null;
      }
      
      public function §2!7§() : void
      {
         if(this.§@!H§)
         {
            this.§@!H§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §?!S§() : void
      {
         if(this.§@!H§)
         {
            this.§@!H§.soundTransform = new SoundTransform(this.§6!'§);
         }
      }
   }
}
