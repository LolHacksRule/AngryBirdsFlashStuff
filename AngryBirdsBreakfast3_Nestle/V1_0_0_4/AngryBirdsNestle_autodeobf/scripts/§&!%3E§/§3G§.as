package §&!>§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §3G§ extends EventDispatcher
   {
      
      private static const §!!-§:int = 500;
       
      
      private var §,E§:SoundChannel;
      
      private var §[![§:String;
      
      private var §;m§:Number;
      
      private var §3v§:Boolean;
      
      private var §1!L§:Number = 0.0;
      
      private var §^p§:Number = 0;
      
      public function §3G§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§,E§ = param1;
         this.§[![§ = param2;
         this.§,E§.addEventListener(Event.SOUND_COMPLETE,this.§="#§);
         this.§;m§ = param1.soundTransform.volume;
         this.§3v§ = false;
         this.§1!L§ = param3;
         this.§^p§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§;m§ = param1;
         if(!this.§3v§)
         {
            this.§0!r§(this.§;m§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§;m§;
      }
      
      public function get id() : String
      {
         return this.§[![§;
      }
      
      public function get §5R§() : Number
      {
         var _loc1_:Number = this.§,E§.position;
         var _loc2_:int = getTimer() - this.§^p§;
         if(_loc1_ < _loc2_ - §!!-§)
         {
            _loc1_ = _loc2_ - §!!-§;
         }
         return _loc1_;
      }
      
      public function get §%"0§() : Number
      {
         return this.§1!L§;
      }
      
      public function get §<!E§() : Number
      {
         return this.§%"0§ - this.§5R§;
      }
      
      private function §="#§(param1:Event) : void
      {
         if(this.§,E§)
         {
            this.§,E§.removeEventListener(Event.SOUND_COMPLETE,this.§="#§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §0!r§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§,E§.soundTransform;
         _loc2_.volume = param1;
         this.§,E§.soundTransform = _loc2_;
      }
      
      public function §3!3§() : void
      {
         this.stop();
         this.§="#§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§,E§)
         {
            this.§,E§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§,E§.removeEventListener(Event.SOUND_COMPLETE,this.§="#§);
         this.§,E§ = null;
      }
      
      public function §4!]§() : void
      {
         if(this.§,E§)
         {
            this.§0!r§(0);
            this.§3v§ = true;
         }
      }
      
      public function §^",§() : void
      {
         if(this.§,E§)
         {
            this.§0!r§(this.§;m§);
            this.§3v§ = false;
         }
      }
   }
}
