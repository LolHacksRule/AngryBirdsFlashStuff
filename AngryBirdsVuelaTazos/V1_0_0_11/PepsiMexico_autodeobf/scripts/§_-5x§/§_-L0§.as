package §_-5x§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class §_-L0§
   {
       
      
      private var §_-T7§:SoundChannel;
      
      private var §_-Xo§:String;
      
      private var §_-Rr§:Sound;
      
      private var §_-vE§:Function;
      
      public function §_-L0§(param1:String, param2:SoundChannel, param3:Sound, param4:Function = null)
      {
         super();
         this.§_-T7§ = param2;
         this.§_-Rr§ = param3;
         this.§_-vE§ = param4;
         this.§_-Xo§ = param1;
         this.§_-T7§.addEventListener(Event.SOUND_COMPLETE,this.§_-sI§);
      }
      
      private function §_-sI§(param1:Event) : void
      {
         this.§_-T7§.removeEventListener(Event.SOUND_COMPLETE,this.§_-sI§);
         if(this.§_-vE§ != null)
         {
            this.§_-vE§.call(null,this);
         }
      }
      
      public function §_-Ow§() : void
      {
         this.§_-sI§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function get §_-kV§() : String
      {
         return this.§_-Xo§;
      }
      
      public function get sound() : Sound
      {
         return this.§_-Rr§;
      }
      
      public function get §_-5q§() : SoundChannel
      {
         return this.§_-T7§;
      }
      
      public function §_-Q7§() : void
      {
         this.§_-T7§.removeEventListener(Event.SOUND_COMPLETE,this.§_-sI§);
         this.§_-Rr§ = null;
         this.§_-T7§ = null;
         this.§_-Xo§ = null;
      }
   }
}
