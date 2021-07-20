package §8#K§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §-!o§ extends EventDispatcher
   {
      
      public static const §8#<§:String = "onSoundEnded";
      
      private static const §;7§:int = 500;
       
      
      private var §0c§:SoundChannel;
      
      private var mId:String;
      
      private var §>!N§:Number;
      
      private var §8!^§:Boolean;
      
      private var §+"J§:Number = 0.0;
      
      private var §&!<§:Number = 0;
      
      private var §7,§:int = 0;
      
      private var §!!]§:int;
      
      public function §-!o§(param1:SoundChannel, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this.§0c§ = param1;
         this.mId = param2;
         this.§0c§.addEventListener(Event.SOUND_COMPLETE,this.§super§);
         this.§>!N§ = param1.soundTransform.volume;
         this.§8!^§ = false;
         this.§+"J§ = param3;
         this.§&!<§ = getTimer();
         this.§7,§ = param4;
         this.§!!]§ = -1;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§>!N§ = param1;
         if(!this.§8!^§)
         {
            this.§ "<§(this.§>!N§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§>!N§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get § !$§() : int
      {
         return this.§7,§;
      }
      
      public function get §!"-§() : int
      {
         return this.§!!]§;
      }
      
      public function get § !n§() : Number
      {
         if(!this.§0c§)
         {
            return this.§^#5§;
         }
         var _loc1_:Number = this.§0c§.position;
         var _loc2_:int = getTimer() - this.§&!<§;
         if(_loc1_ < _loc2_ - §;7§)
         {
            _loc1_ = _loc2_ - §;7§;
         }
         return _loc1_;
      }
      
      public function get §^#5§() : Number
      {
         return this.§+"J§;
      }
      
      public function get §,F§() : Number
      {
         return this.§^#5§ - this.§ !n§;
      }
      
      private function §super§(param1:Event, param2:Boolean = false) : void
      {
         ++this.§!!]§;
         if(param2)
         {
            this.§!!]§ = this.§7,§;
         }
         if(this.§0c§)
         {
            this.§0c§.removeEventListener(Event.SOUND_COMPLETE,this.§super§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!param2)
         {
            dispatchEvent(new Event(§8#<§));
         }
      }
      
      private function § "<§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§0c§.soundTransform;
         _loc2_.volume = param1;
         this.§0c§.soundTransform = _loc2_;
      }
      
      public function §9#b§() : void
      {
         this.stop();
         this.§super§(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.§0c§)
         {
            this.§0c§.stop();
         }
      }
      
      public function pause() : §["k§
      {
         var _loc1_:§["k§ = new §["k§(this.id,this.§7,§,this.§>!N§,this.§0c§.position);
         this.§9#b§();
         return _loc1_;
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§0c§.removeEventListener(Event.SOUND_COMPLETE,this.§super§);
         this.§0c§ = null;
      }
      
      public function §!P§() : void
      {
         if(this.§0c§)
         {
            this.§ "<§(0);
            this.§8!^§ = true;
         }
      }
      
      public function §9"6§() : void
      {
         if(this.§0c§)
         {
            this.§ "<§(this.§>!N§);
            this.§8!^§ = false;
         }
      }
   }
}
