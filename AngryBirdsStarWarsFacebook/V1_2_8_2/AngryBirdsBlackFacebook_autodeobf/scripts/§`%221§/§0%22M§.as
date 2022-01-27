package §`"1§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §0"M§ extends EventDispatcher
   {
      
      private static const §?"w§:int = 500;
       
      
      private var §%!N§:SoundChannel;
      
      private var §]!R§:String;
      
      private var §]l§:Number;
      
      private var §&"k§:Boolean;
      
      private var §'j§:Number = 0.0;
      
      private var §8V§:Number = 0;
      
      public function §0"M§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§%!N§ = param1;
         this.§]!R§ = param2;
         this.§%!N§.addEventListener(Event.SOUND_COMPLETE,this.§=!M§);
         this.§]l§ = param1.soundTransform.volume;
         this.§&"k§ = false;
         this.§'j§ = param3;
         this.§8V§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§]l§ = param1;
         if(!this.§&"k§)
         {
            this.§1!]§(this.§]l§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§]l§;
      }
      
      public function get id() : String
      {
         return this.§]!R§;
      }
      
      public function get §8!p§() : Number
      {
         var _loc1_:Number = this.§%!N§.position;
         var _loc2_:int = getTimer() - this.§8V§;
         if(_loc1_ < _loc2_ - §?"w§)
         {
            _loc1_ = _loc2_ - §?"w§;
         }
         return _loc1_;
      }
      
      public function get §3Z§() : Number
      {
         return this.§'j§;
      }
      
      public function get §=!Z§() : Number
      {
         return this.§3Z§ - this.§8!p§;
      }
      
      private function §=!M§(param1:Event) : void
      {
         if(this.§%!N§)
         {
            this.§%!N§.removeEventListener(Event.SOUND_COMPLETE,this.§=!M§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §1!]§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§%!N§.soundTransform;
         _loc2_.volume = param1;
         this.§%!N§.soundTransform = _loc2_;
      }
      
      public function § "R§() : void
      {
         this.stop();
         this.§=!M§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§%!N§)
         {
            this.§%!N§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§%!N§.removeEventListener(Event.SOUND_COMPLETE,this.§=!M§);
         this.§%!N§ = null;
      }
      
      public function §`!x§() : void
      {
         if(this.§%!N§)
         {
            this.§1!]§(0);
            this.§&"k§ = true;
         }
      }
      
      public function §7"j§() : void
      {
         if(this.§%!N§)
         {
            this.§1!]§(this.§]l§);
            this.§&"k§ = false;
         }
      }
   }
}
