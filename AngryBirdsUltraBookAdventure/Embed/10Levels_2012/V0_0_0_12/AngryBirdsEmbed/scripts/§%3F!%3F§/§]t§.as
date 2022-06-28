package §?!?§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]t§
   {
       
      
      private var §"K§:SoundChannel;
      
      private var §!l§:Function;
      
      private var §1!@§:Function;
      
      private var §6_§:Number;
      
      public function §]t§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§"K§ = param1;
         this.§!l§ = param2;
         this.§1!@§ = param3;
         this.§"K§.addEventListener(Event.SOUND_COMPLETE,this.§>^§);
         this.§6_§ = param1.soundTransform.volume;
      }
      
      private function §>^§(param1:Event) : void
      {
         this.§"K§.removeEventListener(Event.SOUND_COMPLETE,this.§>^§);
         if(this.§1!@§ != null)
         {
            this.§1!@§.call();
            this.§1!@§ = null;
         }
         if(this.§!l§ != null)
         {
            this.§!l§.call(null,this);
            this.§!l§ = null;
         }
      }
      
      public function §<e§() : void
      {
         this.§>^§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§"K§)
         {
            this.§"K§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§"K§.removeEventListener(Event.SOUND_COMPLETE,this.§>^§);
         this.§"K§ = null;
      }
      
      public function §var §() : void
      {
         if(this.§"K§)
         {
            this.§"K§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function § 2§() : void
      {
         if(this.§"K§)
         {
            this.§"K§.soundTransform = new SoundTransform(this.§6_§);
         }
      }
   }
}
