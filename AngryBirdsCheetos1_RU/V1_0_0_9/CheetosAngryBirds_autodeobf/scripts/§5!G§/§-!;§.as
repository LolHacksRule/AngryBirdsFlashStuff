package §5!G§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §-!;§ extends EventDispatcher
   {
       
      
      private var §"!%§:SoundChannel;
      
      private var §>^§:String;
      
      private var §>!K§:Number;
      
      private var §=b§:Boolean;
      
      public function §-!;§(param1:SoundChannel, param2:String)
      {
         super();
         this.§"!%§ = param1;
         this.§>^§ = param2;
         this.§"!%§.addEventListener(Event.SOUND_COMPLETE,this.§4!F§);
         this.§>!K§ = param1.soundTransform.volume;
         this.§=b§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§>!K§ = param1;
         if(!this.§=b§)
         {
            this.§"!!§(this.§>!K§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§>!K§;
      }
      
      public function get id() : String
      {
         return this.§>^§;
      }
      
      public function get position() : Number
      {
         return this.§"!%§.position;
      }
      
      private function §4!F§(param1:Event) : void
      {
         this.§"!%§.removeEventListener(Event.SOUND_COMPLETE,this.§4!F§);
         dispatchEvent(param1);
      }
      
      private function §"!!§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§"!%§.soundTransform;
         _loc2_.volume = param1;
         this.§"!%§.soundTransform = _loc2_;
      }
      
      public function §"!0§() : void
      {
         this.§4!F§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§"!%§)
         {
            this.§"!%§.stop();
         }
      }
      
      public function §>!P§() : void
      {
         this.stop();
         this.§"!%§.removeEventListener(Event.SOUND_COMPLETE,this.§4!F§);
         this.§"!%§ = null;
      }
      
      public function §;2§() : void
      {
         if(this.§"!%§)
         {
            this.§"!!§(0);
            this.§=b§ = true;
         }
      }
      
      public function §=!;§() : void
      {
         if(this.§"!%§)
         {
            this.§"!!§(this.§>!K§);
            this.§=b§ = false;
         }
      }
   }
}
