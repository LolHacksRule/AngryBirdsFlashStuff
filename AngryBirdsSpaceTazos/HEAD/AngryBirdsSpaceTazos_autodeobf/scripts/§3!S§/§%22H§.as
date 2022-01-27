package §3!S§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §"H§ extends EventDispatcher
   {
      
      private static const §9"2§:int = 500;
       
      
      private var §<!f§:SoundChannel;
      
      private var §""§:String;
      
      private var §3§:Number;
      
      private var §0"'§:Boolean;
      
      private var §<&§:Number = 0.0;
      
      private var §66§:Number = 0;
      
      public function §"H§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§<!f§ = param1;
         this.§""§ = param2;
         this.§<!f§.addEventListener(Event.SOUND_COMPLETE,this.§6!a§);
         this.§3§ = param1.soundTransform.volume;
         this.§0"'§ = false;
         this.§<&§ = param3;
         this.§66§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§3§ = param1;
         if(!this.§0"'§)
         {
            this.§%1§(this.§3§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§3§;
      }
      
      public function get id() : String
      {
         return this.§""§;
      }
      
      public function get §&!P§() : Number
      {
         var _loc1_:Number = this.§<!f§.position;
         var _loc2_:int = getTimer() - this.§66§;
         if(_loc1_ < _loc2_ - §9"2§)
         {
            _loc1_ = _loc2_ - §9"2§;
         }
         return _loc1_;
      }
      
      public function get §?"0§() : Number
      {
         return this.§<&§;
      }
      
      public function get §2!e§() : Number
      {
         return this.§?"0§ - this.§&!P§;
      }
      
      private function §6!a§(param1:Event) : void
      {
         this.§<!f§.removeEventListener(Event.SOUND_COMPLETE,this.§6!a§);
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §%1§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§<!f§.soundTransform;
         _loc2_.volume = param1;
         this.§<!f§.soundTransform = _loc2_;
      }
      
      public function §^§() : void
      {
         this.stop();
         this.§6!a§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§<!f§)
         {
            this.§<!f§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§<!f§.removeEventListener(Event.SOUND_COMPLETE,this.§6!a§);
         this.§<!f§ = null;
      }
      
      public function §0t§() : void
      {
         if(this.§<!f§)
         {
            this.§%1§(0);
            this.§0"'§ = true;
         }
      }
      
      public function §;"G§() : void
      {
         if(this.§<!f§)
         {
            this.§%1§(this.§3§);
            this.§0"'§ = false;
         }
      }
   }
}
