package §[!Z§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §`v§ extends EventDispatcher
   {
      
      private static const §0M§:int = 500;
       
      
      private var §<?§:SoundChannel;
      
      private var §?0§:String;
      
      private var §=A§:Number;
      
      private var §+!W§:Boolean;
      
      private var §`!3§:Number = 0.0;
      
      private var §#%§:Number = 0;
      
      public function §`v§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§<?§ = param1;
         this.§?0§ = param2;
         this.§<?§.addEventListener(Event.SOUND_COMPLETE,this.§true§);
         this.§=A§ = param1.soundTransform.volume;
         this.§+!W§ = false;
         this.§`!3§ = param3;
         this.§#%§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§=A§ = param1;
         if(!this.§+!W§)
         {
            this.§!!;§(this.§=A§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§=A§;
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function get §'"2§() : Number
      {
         var _loc1_:Number = this.§<?§.position;
         var _loc2_:int = getTimer() - this.§#%§;
         if(_loc1_ < _loc2_ - §0M§)
         {
            _loc1_ = _loc2_ - §0M§;
         }
         return _loc1_;
      }
      
      public function get §#!H§() : Number
      {
         return this.§`!3§;
      }
      
      public function get §%!+§() : Number
      {
         return this.§#!H§ - this.§'"2§;
      }
      
      private function §true§(param1:Event) : void
      {
         if(this.§<?§)
         {
            this.§<?§.removeEventListener(Event.SOUND_COMPLETE,this.§true§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §!!;§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§<?§.soundTransform;
         _loc2_.volume = param1;
         this.§<?§.soundTransform = _loc2_;
      }
      
      public function §,^§() : void
      {
         this.stop();
         this.§true§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§<?§)
         {
            this.§<?§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§<?§.removeEventListener(Event.SOUND_COMPLETE,this.§true§);
         this.§<?§ = null;
      }
      
      public function §?!t§() : void
      {
         if(this.§<?§)
         {
            this.§!!;§(0);
            this.§+!W§ = true;
         }
      }
      
      public function §6T§() : void
      {
         if(this.§<?§)
         {
            this.§!!;§(this.§=A§);
            this.§+!W§ = false;
         }
      }
   }
}
