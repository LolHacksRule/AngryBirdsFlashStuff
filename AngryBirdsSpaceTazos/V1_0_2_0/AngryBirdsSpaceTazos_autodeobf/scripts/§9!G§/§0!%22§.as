package §9!G§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §0!"§ extends EventDispatcher
   {
      
      private static const §2!z§:int = 500;
       
      
      private var §>!e§:SoundChannel;
      
      private var §1!q§:String;
      
      private var §5!Q§:Number;
      
      private var §!!R§:Boolean;
      
      private var §"Q§:Number = 0.0;
      
      private var §+"!§:Number = 0;
      
      public function §0!"§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§>!e§ = param1;
         this.§1!q§ = param2;
         this.§>!e§.addEventListener(Event.SOUND_COMPLETE,this.§&!t§);
         this.§5!Q§ = param1.soundTransform.volume;
         this.§!!R§ = false;
         this.§"Q§ = param3;
         this.§+"!§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§5!Q§ = param1;
         if(!this.§!!R§)
         {
            this.§3!@§(this.§5!Q§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§5!Q§;
      }
      
      public function get id() : String
      {
         return this.§1!q§;
      }
      
      public function get §8!C§() : Number
      {
         var _loc1_:Number = this.§>!e§.position;
         var _loc2_:int = getTimer() - this.§+"!§;
         if(_loc1_ < _loc2_ - §2!z§)
         {
            _loc1_ = _loc2_ - §2!z§;
         }
         return _loc1_;
      }
      
      public function get §4!U§() : Number
      {
         return this.§"Q§;
      }
      
      public function get §;!X§() : Number
      {
         return this.§4!U§ - this.§8!C§;
      }
      
      private function §&!t§(param1:Event) : void
      {
         this.§>!e§.removeEventListener(Event.SOUND_COMPLETE,this.§&!t§);
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §3!@§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§>!e§.soundTransform;
         _loc2_.volume = param1;
         this.§>!e§.soundTransform = _loc2_;
      }
      
      public function §3!z§() : void
      {
         this.stop();
         this.§&!t§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§>!e§)
         {
            this.§>!e§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§>!e§.removeEventListener(Event.SOUND_COMPLETE,this.§&!t§);
         this.§>!e§ = null;
      }
      
      public function §"C§() : void
      {
         if(this.§>!e§)
         {
            this.§3!@§(0);
            this.§!!R§ = true;
         }
      }
      
      public function §;n§() : void
      {
         if(this.§>!e§)
         {
            this.§3!@§(this.§5!Q§);
            this.§!!R§ = false;
         }
      }
   }
}
