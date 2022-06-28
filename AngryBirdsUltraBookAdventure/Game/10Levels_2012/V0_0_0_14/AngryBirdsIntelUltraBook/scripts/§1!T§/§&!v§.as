package §1!T§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&!v§
   {
       
      
      private var §"!r§:SoundChannel;
      
      private var §??§:Function;
      
      private var §@!x§:Function;
      
      private var §^j§:Number;
      
      public function §&!v§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§"!r§ = param1;
         this.§??§ = param2;
         this.§@!x§ = param3;
         this.§"!r§.addEventListener(Event.SOUND_COMPLETE,this.§&+§);
         this.§^j§ = param1.soundTransform.volume;
      }
      
      private function §&+§(param1:Event) : void
      {
         this.§"!r§.removeEventListener(Event.SOUND_COMPLETE,this.§&+§);
         if(this.§@!x§ != null)
         {
            this.§@!x§.call();
            this.§@!x§ = null;
         }
         if(this.§??§ != null)
         {
            this.§??§.call(null,this);
            this.§??§ = null;
         }
      }
      
      public function §0!P§() : void
      {
         this.§&+§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§"!r§)
         {
            this.§"!r§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§"!r§.removeEventListener(Event.SOUND_COMPLETE,this.§&+§);
         this.§"!r§ = null;
      }
      
      public function §0$§() : void
      {
         if(this.§"!r§)
         {
            this.§"!r§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §%!v§() : void
      {
         if(this.§"!r§)
         {
            this.§"!r§.soundTransform = new SoundTransform(this.§^j§);
         }
      }
   }
}
