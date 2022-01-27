package §,!1§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §"?§ extends EventDispatcher
   {
       
      
      private var §>O§:SoundChannel;
      
      private var §&#§:String;
      
      private var § 8§:Number;
      
      private var §"&§:Boolean;
      
      public function §"?§(param1:SoundChannel, param2:String)
      {
         super();
         this.§>O§ = param1;
         this.§&#§ = param2;
         this.§>O§.addEventListener(Event.SOUND_COMPLETE,this.§%!;§);
         this.§ 8§ = param1.soundTransform.volume;
         this.§"&§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§ 8§ = param1;
         if(!this.§"&§)
         {
            this.§@n§(this.§ 8§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§ 8§;
      }
      
      public function get id() : String
      {
         return this.§&#§;
      }
      
      public function get position() : Number
      {
         return this.§>O§.position;
      }
      
      private function §%!;§(param1:Event) : void
      {
         this.§>O§.removeEventListener(Event.SOUND_COMPLETE,this.§%!;§);
         dispatchEvent(param1);
      }
      
      private function §@n§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§>O§.soundTransform;
         _loc2_.volume = param1;
         this.§>O§.soundTransform = _loc2_;
      }
      
      public function §7"§() : void
      {
         this.stop();
         this.§%!;§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§>O§)
         {
            this.§>O§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§>O§.removeEventListener(Event.SOUND_COMPLETE,this.§%!;§);
         this.§>O§ = null;
      }
      
      public function §=§() : void
      {
         if(this.§>O§)
         {
            this.§@n§(0);
            this.§"&§ = true;
         }
      }
      
      public function §-S§() : void
      {
         if(this.§>O§)
         {
            this.§@n§(this.§ 8§);
            this.§"&§ = false;
         }
      }
   }
}
