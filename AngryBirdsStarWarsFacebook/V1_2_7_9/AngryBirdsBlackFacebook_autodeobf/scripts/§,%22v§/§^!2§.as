package §,"v§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §^!2§ extends EventDispatcher
   {
      
      private static const §=A§:int = 500;
       
      
      private var §`"W§:SoundChannel;
      
      private var §[7§:String;
      
      private var §&"7§:Number;
      
      private var §'"X§:Boolean;
      
      private var §,!5§:Number = 0.0;
      
      private var §;C§:Number = 0;
      
      public function §^!2§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§`"W§ = param1;
         this.§[7§ = param2;
         this.§`"W§.addEventListener(Event.SOUND_COMPLETE,this.§`q§);
         this.§&"7§ = param1.soundTransform.volume;
         this.§'"X§ = false;
         this.§,!5§ = param3;
         this.§;C§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§&"7§ = param1;
         if(!this.§'"X§)
         {
            this.§^R§(this.§&"7§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§&"7§;
      }
      
      public function get id() : String
      {
         return this.§[7§;
      }
      
      public function get §&!+§() : Number
      {
         var _loc1_:Number = this.§`"W§.position;
         var _loc2_:int = getTimer() - this.§;C§;
         if(_loc1_ < _loc2_ - §=A§)
         {
            _loc1_ = _loc2_ - §=A§;
         }
         return _loc1_;
      }
      
      public function get §2"u§() : Number
      {
         return this.§,!5§;
      }
      
      public function get §!!U§() : Number
      {
         return this.§2"u§ - this.§&!+§;
      }
      
      private function §`q§(param1:Event) : void
      {
         if(this.§`"W§)
         {
            this.§`"W§.removeEventListener(Event.SOUND_COMPLETE,this.§`q§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §^R§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§`"W§.soundTransform;
         _loc2_.volume = param1;
         this.§`"W§.soundTransform = _loc2_;
      }
      
      public function §-'§() : void
      {
         this.stop();
         this.§`q§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§`"W§)
         {
            this.§`"W§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§`"W§.removeEventListener(Event.SOUND_COMPLETE,this.§`q§);
         this.§`"W§ = null;
      }
      
      public function §8!C§() : void
      {
         if(this.§`"W§)
         {
            this.§^R§(0);
            this.§'"X§ = true;
         }
      }
      
      public function §7$§() : void
      {
         if(this.§`"W§)
         {
            this.§^R§(this.§&"7§);
            this.§'"X§ = false;
         }
      }
   }
}
