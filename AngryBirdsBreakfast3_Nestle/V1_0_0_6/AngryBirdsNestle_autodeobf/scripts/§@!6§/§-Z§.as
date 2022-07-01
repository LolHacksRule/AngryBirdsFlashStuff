package §@!6§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §-Z§ extends EventDispatcher
   {
      
      private static const §"!F§:int = 500;
       
      
      private var §;!2§:SoundChannel;
      
      private var §,p§:String;
      
      private var §&!<§:Number;
      
      private var §;-§:Boolean;
      
      private var §&x§:Number = 0.0;
      
      private var §5n§:Number = 0;
      
      public function §-Z§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§;!2§ = param1;
         this.§,p§ = param2;
         this.§;!2§.addEventListener(Event.SOUND_COMPLETE,this.§[!y§);
         this.§&!<§ = param1.soundTransform.volume;
         this.§;-§ = false;
         this.§&x§ = param3;
         this.§5n§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§&!<§ = param1;
         if(!this.§;-§)
         {
            this.§'3§(this.§&!<§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§&!<§;
      }
      
      public function get id() : String
      {
         return this.§,p§;
      }
      
      public function get §4p§() : Number
      {
         var _loc1_:Number = this.§;!2§.position;
         var _loc2_:int = getTimer() - this.§5n§;
         if(_loc1_ < _loc2_ - §"!F§)
         {
            _loc1_ = _loc2_ - §"!F§;
         }
         return _loc1_;
      }
      
      public function get §0"+§() : Number
      {
         return this.§&x§;
      }
      
      public function get §-!"§() : Number
      {
         return this.§0"+§ - this.§4p§;
      }
      
      private function §[!y§(param1:Event) : void
      {
         if(this.§;!2§)
         {
            this.§;!2§.removeEventListener(Event.SOUND_COMPLETE,this.§[!y§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §'3§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§;!2§.soundTransform;
         _loc2_.volume = param1;
         this.§;!2§.soundTransform = _loc2_;
      }
      
      public function §0!#§() : void
      {
         this.stop();
         this.§[!y§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§;!2§)
         {
            this.§;!2§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§;!2§.removeEventListener(Event.SOUND_COMPLETE,this.§[!y§);
         this.§;!2§ = null;
      }
      
      public function §3-§() : void
      {
         if(this.§;!2§)
         {
            this.§'3§(0);
            this.§;-§ = true;
         }
      }
      
      public function §<!"§() : void
      {
         if(this.§;!2§)
         {
            this.§'3§(this.§&!<§);
            this.§;-§ = false;
         }
      }
   }
}
