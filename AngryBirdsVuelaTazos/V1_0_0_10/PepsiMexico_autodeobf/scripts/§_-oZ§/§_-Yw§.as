package §_-oZ§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class §_-Yw§
   {
       
      
      private var §_-il§:SoundChannel;
      
      private var §_-rQ§:String;
      
      private var §_-H1§:Sound;
      
      private var §_-bo§:Function;
      
      public function §_-Yw§(param1:String, param2:SoundChannel, param3:Sound, param4:Function = null)
      {
         super();
         this.§_-il§ = param2;
         this.§_-H1§ = param3;
         this.§_-bo§ = param4;
         this.§_-rQ§ = param1;
         this.§_-il§.addEventListener(Event.SOUND_COMPLETE,this.§_-br§);
      }
      
      private function §_-br§(param1:Event) : void
      {
         this.§_-il§.removeEventListener(Event.SOUND_COMPLETE,this.§_-br§);
         if(this.§_-bo§ != null)
         {
            this.§_-bo§.call(null,this);
         }
      }
      
      public function §_-LQ§() : void
      {
         this.§_-br§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function get §_-2A§() : String
      {
         return this.§_-rQ§;
      }
      
      public function get sound() : Sound
      {
         return this.§_-H1§;
      }
      
      public function get §_-cY§() : SoundChannel
      {
         return this.§_-il§;
      }
      
      public function §_-wT§() : void
      {
         this.§_-il§.removeEventListener(Event.SOUND_COMPLETE,this.§_-br§);
         this.§_-H1§ = null;
         this.§_-il§ = null;
         this.§_-rQ§ = null;
      }
   }
}
