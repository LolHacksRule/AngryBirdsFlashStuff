package §;X§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §&"7§ extends EventDispatcher
   {
      
      private static const §0+§:int = 500;
       
      
      private var §@[§:SoundChannel;
      
      private var §?!j§:String;
      
      private var §1!w§:Number;
      
      private var §&"'§:Boolean;
      
      private var §#f§:Number = 0.0;
      
      private var §1s§:Number = 0;
      
      public function §&"7§(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.§@[§ = param1;
         this.§?!j§ = param2;
         this.§@[§.addEventListener(Event.SOUND_COMPLETE,this.§5e§);
         this.§1!w§ = param1.soundTransform.volume;
         this.§&"'§ = false;
         this.§#f§ = param3;
         this.§1s§ = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.§1!w§ = param1;
         if(!this.§&"'§)
         {
            this.§]!k§(this.§1!w§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§1!w§;
      }
      
      public function get id() : String
      {
         return this.§?!j§;
      }
      
      public function get §>!t§() : Number
      {
         var _loc1_:Number = this.§@[§.position;
         var _loc2_:int = getTimer() - this.§1s§;
         if(_loc1_ < _loc2_ - §0+§)
         {
            _loc1_ = _loc2_ - §0+§;
         }
         return _loc1_;
      }
      
      public function get § !X§() : Number
      {
         return this.§#f§;
      }
      
      public function get §"§() : Number
      {
         return this.§ !X§ - this.§>!t§;
      }
      
      private function §5e§(param1:Event) : void
      {
         if(this.§@[§)
         {
            this.§@[§.removeEventListener(Event.SOUND_COMPLETE,this.§5e§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function §]!k§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§@[§.soundTransform;
         _loc2_.volume = param1;
         this.§@[§.soundTransform = _loc2_;
      }
      
      public function §=!2§() : void
      {
         this.stop();
         this.§5e§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§@[§)
         {
            this.§@[§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§@[§.removeEventListener(Event.SOUND_COMPLETE,this.§5e§);
         this.§@[§ = null;
      }
      
      public function §=J§() : void
      {
         if(this.§@[§)
         {
            this.§]!k§(0);
            this.§&"'§ = true;
         }
      }
      
      public function §4#§() : void
      {
         if(this.§@[§)
         {
            this.§]!k§(this.§1!w§);
            this.§&"'§ = false;
         }
      }
   }
}
