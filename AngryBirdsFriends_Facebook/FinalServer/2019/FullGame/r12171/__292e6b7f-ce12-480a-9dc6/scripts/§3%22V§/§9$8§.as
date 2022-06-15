package §3"V§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §9$8§ extends EventDispatcher
   {
      
      public static const §8# §:String = "onSoundEnded";
      
      private static const §'F§:int = 500;
       
      
      private var §7!+§:SoundChannel;
      
      private var mId:String;
      
      private var §;I§:Number;
      
      private var §5$$§:Boolean;
      
      private var §,# §:Number = 0.0;
      
      private var §="5§:Number = 0;
      
      private var §&!<§:int = 0;
      
      private var §%#6§:int;
      
      public function §9$8§(param1:SoundChannel, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this.§7!+§ = param1;
         this.mId = param2;
         this.§7!+§.addEventListener(Event.SOUND_COMPLETE,this.§,!J§);
         this.§;I§ = param1.soundTransform.volume;
         this.§5$$§ = false;
         this.§,# § = param3;
         this.§="5§ = getTimer();
         this.§&!<§ = param4;
         this.§%#6§ = -1;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§;I§ = param1;
         if(!this.§5$$§)
         {
            this.§;"K§(this.§;I§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§;I§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §?"§() : int
      {
         return this.§&!<§;
      }
      
      public function get §;"l§() : int
      {
         return this.§%#6§;
      }
      
      public function get §="@§() : Number
      {
         if(!this.§7!+§)
         {
            return this.§##8§;
         }
         var _loc1_:Number = this.§7!+§.position;
         var _loc2_:int = getTimer() - this.§="5§;
         if(_loc1_ < _loc2_ - §'F§)
         {
            _loc1_ = _loc2_ - §'F§;
         }
         return _loc1_;
      }
      
      public function get §##8§() : Number
      {
         return this.§,# §;
      }
      
      public function get §[!l§() : Number
      {
         return this.§##8§ - this.§="@§;
      }
      
      private function §,!J§(param1:Event, param2:Boolean = false) : void
      {
         ++this.§%#6§;
         if(param2)
         {
            this.§%#6§ = this.§&!<§;
         }
         if(this.§7!+§)
         {
            this.§7!+§.removeEventListener(Event.SOUND_COMPLETE,this.§,!J§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!param2)
         {
            dispatchEvent(new Event(§8# §));
         }
      }
      
      private function §;"K§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§7!+§.soundTransform;
         _loc2_.volume = param1;
         this.§7!+§.soundTransform = _loc2_;
      }
      
      public function §[!p§() : void
      {
         this.stop();
         this.§,!J§(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.§7!+§)
         {
            this.§7!+§.stop();
         }
      }
      
      public function pause() : §3w§
      {
         var _loc1_:§3w§ = new §3w§(this.id,this.§&!<§,this.§;I§,this.§7!+§.position);
         this.§[!p§();
         return _loc1_;
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§7!+§.removeEventListener(Event.SOUND_COMPLETE,this.§,!J§);
         this.§7!+§ = null;
      }
      
      public function §^!V§() : void
      {
         if(this.§7!+§)
         {
            this.§;"K§(0);
            this.§5$$§ = true;
         }
      }
      
      public function §+"W§() : void
      {
         if(this.§7!+§)
         {
            this.§;"K§(this.§;I§);
            this.§5$$§ = false;
         }
      }
   }
}
