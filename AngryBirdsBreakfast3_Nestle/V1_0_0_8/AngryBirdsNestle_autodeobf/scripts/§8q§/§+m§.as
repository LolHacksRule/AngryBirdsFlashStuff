package §8q§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §+m§ extends EventDispatcher
   {
      
      private static const §3!a§:int = 500;
       
      
      private var §+>§:SoundChannel;
      
      private var §3!J§:String;
      
      private var §0e§:Number;
      
      private var §!6§:Boolean;
      
      private var §?k§:Number = 0.0;
      
      private var §6!R§:Number = 0;
      
      public function §+m§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§+>§ = param1;
         this.§3!J§ = param2;
         this.§+>§.addEventListener(Event.SOUND_COMPLETE,this.§-!y§);
         this.§0e§ = param1.soundTransform.volume;
         this.§!6§ = false;
         this.§?k§ = param3;
         this.§6!R§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§0e§ = param1;
         if(!this.§!6§)
         {
            this.§7=§(this.§0e§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§0e§;
      }
      
      public function get id() : String
      {
         return this.§3!J§;
      }
      
      public function get §&!8§() : Number
      {
         var _loc1_:Number = this.§+>§.position;
         var _loc2_:int = getTimer() - this.§6!R§;
         if(_loc1_ < _loc2_ - §3!a§)
         {
            _loc1_ = _loc2_ - §3!a§;
         }
         return _loc1_;
      }
      
      public function get §&"$§() : Number
      {
         return this.§?k§;
      }
      
      public function get §9§() : Number
      {
         return this.§&"$§ - this.§&!8§;
      }
      
      private function §-!y§(param1:Event) : void
      {
         if(this.§+>§)
         {
            this.§+>§.removeEventListener(Event.SOUND_COMPLETE,this.§-!y§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §7=§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§+>§.soundTransform;
         _loc2_.volume = param1;
         this.§+>§.soundTransform = _loc2_;
      }
      
      public function §7!J§() : void
      {
         this.stop();
         this.§-!y§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§+>§)
         {
            this.§+>§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§+>§.removeEventListener(Event.SOUND_COMPLETE,this.§-!y§);
         this.§+>§ = null;
      }
      
      public function §?l§() : void
      {
         if(this.§+>§)
         {
            this.§7=§(0);
            this.§!6§ = true;
         }
      }
      
      public function §"!'§() : void
      {
         if(this.§+>§)
         {
            this.§7=§(this.§0e§);
            this.§!6§ = false;
         }
      }
   }
}
