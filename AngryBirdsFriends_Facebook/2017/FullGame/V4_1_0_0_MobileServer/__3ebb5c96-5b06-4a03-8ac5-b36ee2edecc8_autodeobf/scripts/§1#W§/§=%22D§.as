package §1#W§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §="D§ extends EventDispatcher
   {
      
      public static const §%!r§:String = "onSoundEnded";
      
      private static const §0"M§:int = 500;
       
      
      private var §+A§:SoundChannel;
      
      private var mId:String;
      
      private var §%#3§:Number;
      
      private var §7"r§:Boolean;
      
      private var §+>§:Number = 0.0;
      
      private var §2"q§:Number = 0;
      
      private var §'c§:int = 0;
      
      private var §3"v§:int;
      
      public function §="D§(param1:SoundChannel, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this.§+A§ = param1;
         this.mId = param2;
         this.§+A§.addEventListener(Event.SOUND_COMPLETE,this.§4#N§);
         this.§%#3§ = param1.soundTransform.volume;
         this.§7"r§ = false;
         this.§+>§ = param3;
         this.§2"q§ = getTimer();
         this.§'c§ = param4;
         this.§3"v§ = -1;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§%#3§ = param1;
         if(!this.§7"r§)
         {
            this.§8!0§(this.§%#3§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§%#3§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §7R§() : int
      {
         return this.§'c§;
      }
      
      public function get §;! §() : int
      {
         return this.§3"v§;
      }
      
      public function get §^§() : Number
      {
         if(!this.§+A§)
         {
            return this.§3#T§;
         }
         var _loc1_:Number = this.§+A§.position;
         var _loc2_:int = getTimer() - this.§2"q§;
         if(_loc1_ < _loc2_ - §0"M§)
         {
            _loc1_ = _loc2_ - §0"M§;
         }
         return _loc1_;
      }
      
      public function get §3#T§() : Number
      {
         return this.§+>§;
      }
      
      public function get §8#§() : Number
      {
         return this.§3#T§ - this.§^§;
      }
      
      private function §4#N§(param1:Event, param2:Boolean = false) : void
      {
         ++this.§3"v§;
         if(param2)
         {
            this.§3"v§ = this.§'c§;
         }
         if(this.§+A§)
         {
            this.§+A§.removeEventListener(Event.SOUND_COMPLETE,this.§4#N§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!param2)
         {
            dispatchEvent(new Event(§%!r§));
         }
      }
      
      private function §8!0§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§+A§.soundTransform;
         _loc2_.volume = param1;
         this.§+A§.soundTransform = _loc2_;
      }
      
      public function §[#S§() : void
      {
         this.stop();
         this.§4#N§(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.§+A§)
         {
            this.§+A§.stop();
         }
      }
      
      public function pause() : §,"b§
      {
         var _loc1_:§,"b§ = new §,"b§(this.id,this.§'c§,this.§%#3§,this.§+A§.position);
         this.§[#S§();
         return _loc1_;
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§+A§.removeEventListener(Event.SOUND_COMPLETE,this.§4#N§);
         this.§+A§ = null;
      }
      
      public function §8"D§() : void
      {
         if(this.§+A§)
         {
            this.§8!0§(0);
            this.§7"r§ = true;
         }
      }
      
      public function §""6§() : void
      {
         if(this.§+A§)
         {
            this.§8!0§(this.§%#3§);
            this.§7"r§ = false;
         }
      }
   }
}
