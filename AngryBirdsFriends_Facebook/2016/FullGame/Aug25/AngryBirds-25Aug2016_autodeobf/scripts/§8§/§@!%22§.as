package §8§#7
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §@!"§ extends EventDispatcher
   {
      
      public static const §2$&§:String = "onSoundEnded";
      
      private static const §1O§:int = 500;
       
      
      private var §2"g§:SoundChannel;
      
      private var mId:String;
      
      private var §>!B§:Number;
      
      private var §,0§:Boolean;
      
      private var §,$8§:Number = 0.0;
      
      private var §8#s§:Number = 0;
      
      private var §>";§:int = 0;
      
      private var §'#o§:int;
      
      public function §@!"§(param1:SoundChannel, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this.§2"g§ = param1;
         this.mId = param2;
         this.§2"g§.addEventListener(Event.SOUND_COMPLETE,this.§5!^§);
         this.§>!B§ = param1.soundTransform.volume;
         this.§,0§ = false;
         this.§,$8§ = param3;
         this.§8#s§ = getTimer();
         this.§>";§ = param4;
         this.§'#o§ = -1;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§>!B§ = param1;
         if(!this.§,0§)
         {
            this.§&!8§(this.§>!B§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§>!B§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §-"T§() : int
      {
         return this.§>";§;
      }
      
      public function get §+b§() : int
      {
         return this.§'#o§;
      }
      
      public function get §]#Q§() : Number
      {
         if(!this.§2"g§)
         {
            return this.§ Q§;
         }
         var _loc1_:Number = this.§2"g§.position;
         var _loc2_:int = getTimer() - this.§8#s§;
         if(_loc1_ < _loc2_ - §1O§)
         {
            _loc1_ = _loc2_ - §1O§;
         }
         return _loc1_;
      }
      
      public function get § Q§() : Number
      {
         return this.§,$8§;
      }
      
      public function get §&"e§() : Number
      {
         return this.§ Q§ - this.§]#Q§;
      }
      
      private function §5!^§(param1:Event, param2:Boolean = false) : void
      {
         ++this.§'#o§;
         if(param2)
         {
            this.§'#o§ = this.§>";§;
         }
         if(this.§2"g§)
         {
            this.§2"g§.removeEventListener(Event.SOUND_COMPLETE,this.§5!^§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!param2)
         {
            dispatchEvent(new Event(§2$&§));
         }
      }
      
      private function §&!8§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§2"g§.soundTransform;
         _loc2_.volume = param1;
         this.§2"g§.soundTransform = _loc2_;
      }
      
      public function §+Z§() : void
      {
         this.stop();
         this.§5!^§(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.§2"g§)
         {
            this.§2"g§.stop();
         }
      }
      
      public function pause() : §@#=§
      {
         var _loc1_:§@#=§ = new §@#=§(this.id,this.§>";§,this.§>!B§,this.§2"g§.position);
         this.§+Z§();
         return _loc1_;
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§2"g§.removeEventListener(Event.SOUND_COMPLETE,this.§5!^§);
         this.§2"g§ = null;
      }
      
      public function §0$2§() : void
      {
         if(this.§2"g§)
         {
            this.§&!8§(0);
            this.§,0§ = true;
         }
      }
      
      public function §+!g§() : void
      {
         if(this.§2"g§)
         {
            this.§&!8§(this.§>!B§);
            this.§,0§ = false;
         }
      }
   }
}
