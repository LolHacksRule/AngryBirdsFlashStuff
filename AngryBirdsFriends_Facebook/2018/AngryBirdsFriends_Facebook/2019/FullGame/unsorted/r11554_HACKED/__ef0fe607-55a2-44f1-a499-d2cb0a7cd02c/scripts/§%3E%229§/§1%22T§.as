package §>"9§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §1"T§ extends EventDispatcher
   {
      
      public static const §&!j§:String = "onSoundEnded";
      
      private static const §!B§:int = 500;
       
      
      private var §4f§:SoundChannel;
      
      private var mId:String;
      
      private var §6"]§:Number;
      
      private var §-1§:Boolean;
      
      private var §@"@§:Number = 0.0;
      
      private var §]$7§:Number = 0;
      
      private var §9#T§:int = 0;
      
      private var §+#d§:int;
      
      public function §1"T§(param1:SoundChannel, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this.§4f§ = param1;
         this.mId = param2;
         this.§4f§.addEventListener(Event.SOUND_COMPLETE,this.§,$C§);
         this.§6"]§ = param1.soundTransform.volume;
         this.§-1§ = false;
         this.§@"@§ = param3;
         this.§]$7§ = getTimer();
         this.§9#T§ = param4;
         this.§+#d§ = -1;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§6"]§ = param1;
         if(!this.§-1§)
         {
            this.§<+§(this.§6"]§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§6"]§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §[#?§() : int
      {
         return this.§9#T§;
      }
      
      public function get §=#]§() : int
      {
         return this.§+#d§;
      }
      
      public function get §?!b§() : Number
      {
         if(!this.§4f§)
         {
            return this.§6!a§;
         }
         var _loc1_:Number = this.§4f§.position;
         var _loc2_:int = getTimer() - this.§]$7§;
         if(_loc1_ < _loc2_ - §!B§)
         {
            _loc1_ = _loc2_ - §!B§;
         }
         return _loc1_;
      }
      
      public function get §6!a§() : Number
      {
         return this.§@"@§;
      }
      
      public function get §2#e§() : Number
      {
         return this.§6!a§ - this.§?!b§;
      }
      
      private function §,$C§(param1:Event, param2:Boolean = false) : void
      {
         ++this.§+#d§;
         if(param2)
         {
            this.§+#d§ = this.§9#T§;
         }
         if(this.§4f§)
         {
            this.§4f§.removeEventListener(Event.SOUND_COMPLETE,this.§,$C§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!param2)
         {
            dispatchEvent(new Event(§&!j§));
         }
      }
      
      private function §<+§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§4f§.soundTransform;
         _loc2_.volume = param1;
         this.§4f§.soundTransform = _loc2_;
      }
      
      public function §<"^§() : void
      {
         this.stop();
         this.§,$C§(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.§4f§)
         {
            this.§4f§.stop();
         }
      }
      
      public function pause() : §'#C§
      {
         var _loc1_:§'#C§ = new §'#C§(this.id,this.§9#T§,this.§6"]§,this.§4f§.position);
         this.§<"^§();
         return _loc1_;
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§4f§.removeEventListener(Event.SOUND_COMPLETE,this.§,$C§);
         this.§4f§ = null;
      }
      
      public function §6r§() : void
      {
         if(this.§4f§)
         {
            this.§<+§(0);
            this.§-1§ = true;
         }
      }
      
      public function §;A§() : void
      {
         if(this.§4f§)
         {
            this.§<+§(this.§6"]§);
            this.§-1§ = false;
         }
      }
   }
}
