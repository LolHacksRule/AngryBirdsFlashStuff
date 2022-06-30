package §%i§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8!A§ extends EventDispatcher
   {
       
      
      private var §>Q§:SoundChannel;
      
      private var §switch§:String;
      
      private var §-P§:Number;
      
      private var §-q§:Boolean;
      
      public function §8!A§(param1:SoundChannel, param2:String)
      {
         super();
         this.§>Q§ = param1;
         this.§switch§ = param2;
         this.§>Q§.addEventListener(Event.SOUND_COMPLETE,this.§'#§);
         this.§-P§ = param1.soundTransform.volume;
         this.§-q§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§-P§ = param1;
         if(!this.§-q§)
         {
            this.§>j§(this.§-P§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§-P§;
      }
      
      public function get id() : String
      {
         return this.§switch§;
      }
      
      public function get position() : Number
      {
         return this.§>Q§.position;
      }
      
      private function §'#§(param1:Event) : void
      {
         this.§>Q§.removeEventListener(Event.SOUND_COMPLETE,this.§'#§);
         dispatchEvent(param1);
      }
      
      private function §>j§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§>Q§.soundTransform;
         _loc2_.volume = param1;
         this.§>Q§.soundTransform = _loc2_;
      }
      
      public function §=t§() : void
      {
         this.stop();
         this.§'#§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§>Q§)
         {
            this.§>Q§.stop();
         }
      }
      
      public function §5!H§() : void
      {
         this.stop();
         this.§>Q§.removeEventListener(Event.SOUND_COMPLETE,this.§'#§);
         this.§>Q§ = null;
      }
      
      public function §^j§() : void
      {
         if(this.§>Q§)
         {
            this.§>j§(0);
            this.§-q§ = true;
         }
      }
      
      public function §5"§() : void
      {
         if(this.§>Q§)
         {
            this.§>j§(this.§-P§);
            this.§-q§ = false;
         }
      }
   }
}
