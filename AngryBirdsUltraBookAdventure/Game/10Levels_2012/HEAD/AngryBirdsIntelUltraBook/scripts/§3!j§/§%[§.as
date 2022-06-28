package §3!j§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%[§
   {
       
      
      private var §,!W§:SoundChannel;
      
      private var §?#§:Function;
      
      private var §8L§:Function;
      
      private var §'!!§:Number;
      
      public function §%[§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§,!W§ = param1;
         this.§?#§ = param2;
         this.§8L§ = param3;
         this.§,!W§.addEventListener(Event.SOUND_COMPLETE,this.§@q§);
         this.§'!!§ = param1.soundTransform.volume;
      }
      
      private function §@q§(param1:Event) : void
      {
         this.§,!W§.removeEventListener(Event.SOUND_COMPLETE,this.§@q§);
         if(this.§8L§ != null)
         {
            this.§8L§.call();
            this.§8L§ = null;
         }
         if(this.§?#§ != null)
         {
            this.§?#§.call(null,this);
            this.§?#§ = null;
         }
      }
      
      public function §;Y§() : void
      {
         this.§@q§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§,!W§)
         {
            this.§,!W§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§,!W§.removeEventListener(Event.SOUND_COMPLETE,this.§@q§);
         this.§,!W§ = null;
      }
      
      public function §@!"§() : void
      {
         if(this.§,!W§)
         {
            this.§,!W§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §6!f§() : void
      {
         if(this.§,!W§)
         {
            this.§,!W§.soundTransform = new SoundTransform(this.§'!!§);
         }
      }
   }
}
