package §#;§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §?!,§ extends EventDispatcher
   {
       
      
      private var §3d§:SoundChannel;
      
      private var §!1§:String;
      
      private var §-r§:Number;
      
      private var §6Z§:Boolean;
      
      public function §?!,§(param1:SoundChannel, param2:String)
      {
         super();
         this.§3d§ = param1;
         this.§!1§ = param2;
         this.§3d§.addEventListener(Event.SOUND_COMPLETE,this.§ O§);
         this.§-r§ = param1.soundTransform.volume;
         this.§6Z§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§-r§ = param1;
         if(!this.§6Z§)
         {
            this.§[Z§(this.§-r§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§-r§;
      }
      
      public function get id() : String
      {
         return this.§!1§;
      }
      
      public function get position() : Number
      {
         return this.§3d§.position;
      }
      
      private function § O§(param1:Event) : void
      {
         this.§3d§.removeEventListener(Event.SOUND_COMPLETE,this.§ O§);
         dispatchEvent(param1);
      }
      
      private function §[Z§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§3d§.soundTransform;
         _loc2_.volume = param1;
         this.§3d§.soundTransform = _loc2_;
      }
      
      public function § set§() : void
      {
         this.stop();
         this.§ O§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§3d§)
         {
            this.§3d§.stop();
         }
      }
      
      public function §2!K§() : void
      {
         this.stop();
         this.§3d§.removeEventListener(Event.SOUND_COMPLETE,this.§ O§);
         this.§3d§ = null;
      }
      
      public function §9!N§() : void
      {
         if(this.§3d§)
         {
            this.§[Z§(0);
            this.§6Z§ = true;
         }
      }
      
      public function §&j§() : void
      {
         if(this.§3d§)
         {
            this.§[Z§(this.§-r§);
            this.§6Z§ = false;
         }
      }
   }
}
