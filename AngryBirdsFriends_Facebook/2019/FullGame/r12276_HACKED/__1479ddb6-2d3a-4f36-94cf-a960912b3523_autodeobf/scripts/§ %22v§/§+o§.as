package § "v§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §+o§ extends EventDispatcher
   {
      
      public static const §>]§:String = "onSoundEnded";
      
      private static const §,"H§:int = 500;
       
      
      private var §[#r§:SoundChannel;
      
      private var mId:String;
      
      private var §6!g§:Number;
      
      private var §+"u§:Boolean;
      
      private var §6G§:Number = 0.0;
      
      private var §%"V§:Number = 0;
      
      private var §9y§:int = 0;
      
      private var §]"2§:int;
      
      public function §+o§(param1:SoundChannel, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this.§[#r§ = param1;
         this.mId = param2;
         this.§[#r§.addEventListener(Event.SOUND_COMPLETE,this.§;!D§);
         this.§6!g§ = param1.soundTransform.volume;
         this.§+"u§ = false;
         this.§6G§ = param3;
         this.§%"V§ = getTimer();
         this.§9y§ = param4;
         this.§]"2§ = -1;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§6!g§ = param1;
         if(!this.§+"u§)
         {
            this.§>#7§(this.§6!g§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§6!g§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §5V§() : int
      {
         return this.§9y§;
      }
      
      public function get §^%§() : int
      {
         return this.§]"2§;
      }
      
      public function get §6#=§() : Number
      {
         if(!this.§[#r§)
         {
            return this.§&$!§;
         }
         var _loc1_:Number = this.§[#r§.position;
         var _loc2_:int = getTimer() - this.§%"V§;
         if(_loc1_ < _loc2_ - §,"H§)
         {
            _loc1_ = _loc2_ - §,"H§;
         }
         return _loc1_;
      }
      
      public function get §&$!§() : Number
      {
         return this.§6G§;
      }
      
      public function get §%!,§() : Number
      {
         return this.§&$!§ - this.§6#=§;
      }
      
      private function §;!D§(param1:Event, param2:Boolean = false) : void
      {
         ++this.§]"2§;
         if(param2)
         {
            this.§]"2§ = this.§9y§;
         }
         if(this.§[#r§)
         {
            this.§[#r§.removeEventListener(Event.SOUND_COMPLETE,this.§;!D§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!param2)
         {
            dispatchEvent(new Event(§>]§));
         }
      }
      
      private function §>#7§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§[#r§.soundTransform;
         _loc2_.volume = param1;
         this.§[#r§.soundTransform = _loc2_;
      }
      
      public function §%'§() : void
      {
         this.stop();
         this.§;!D§(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.§[#r§)
         {
            this.§[#r§.stop();
         }
      }
      
      public function pause() : §%f§
      {
         var _loc1_:§%f§ = new §%f§(this.id,this.§9y§,this.§6!g§,this.§[#r§.position);
         this.§%'§();
         return _loc1_;
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§[#r§.removeEventListener(Event.SOUND_COMPLETE,this.§;!D§);
         this.§[#r§ = null;
      }
      
      public function §'#6§() : void
      {
         if(this.§[#r§)
         {
            this.§>#7§(0);
            this.§+"u§ = true;
         }
      }
      
      public function §;"D§() : void
      {
         if(this.§[#r§)
         {
            this.§>#7§(this.§6!g§);
            this.§+"u§ = false;
         }
      }
   }
}
