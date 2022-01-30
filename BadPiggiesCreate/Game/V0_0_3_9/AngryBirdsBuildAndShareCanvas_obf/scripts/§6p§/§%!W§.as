package §6p§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%!W§ extends EventDispatcher
   {
       
      
      private var §;C§:SoundChannel;
      
      private var §]!Q§:String;
      
      private var §,!M§:Number;
      
      private var §`!%§:Boolean;
      
      public function §%!W§(param1:SoundChannel, param2:String)
      {
         super();
         this.§;C§ = param1;
         this.§]!Q§ = param2;
         this.§;C§.addEventListener(Event.SOUND_COMPLETE,this.§3"&§);
         this.§,!M§ = param1.soundTransform.volume;
         this.§`!%§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§,!M§ = param1;
         if(!this.§`!%§)
         {
            this.§?U§(this.§,!M§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§,!M§;
      }
      
      public function get id() : String
      {
         return this.§]!Q§;
      }
      
      public function get position() : Number
      {
         return this.§;C§.position;
      }
      
      private function §3"&§(param1:Event) : void
      {
         this.§;C§.removeEventListener(Event.SOUND_COMPLETE,this.§3"&§);
         dispatchEvent(param1);
      }
      
      private function §?U§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§;C§.soundTransform;
         _loc2_.volume = param1;
         this.§;C§.soundTransform = _loc2_;
      }
      
      public function §=%§() : void
      {
         this.stop();
         this.§3"&§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§;C§)
         {
            this.§;C§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§;C§.removeEventListener(Event.SOUND_COMPLETE,this.§3"&§);
         this.§;C§ = null;
      }
      
      public function §5" §() : void
      {
         if(this.§;C§)
         {
            this.§?U§(0);
            this.§`!%§ = true;
         }
      }
      
      public function §%"4§() : void
      {
         if(this.§;C§)
         {
            this.§?U§(this.§,!M§);
            this.§`!%§ = false;
         }
      }
   }
}
