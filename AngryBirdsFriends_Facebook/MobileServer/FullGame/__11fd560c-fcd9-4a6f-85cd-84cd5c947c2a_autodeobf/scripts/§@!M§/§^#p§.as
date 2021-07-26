package §@!M§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §^#p§ extends EventDispatcher
   {
      
      public static const §3#<§:String = "onSoundEnded";
      
      private static const § ">§:int = 500;
       
      
      private var §8#S§:SoundChannel;
      
      private var mId:String;
      
      private var §0#x§:Number;
      
      private var §<<§:Boolean;
      
      private var §'!u§:Number = 0.0;
      
      private var §<-§:Number = 0;
      
      private var §6"&§:int = 0;
      
      private var §^Y§:int;
      
      public function §^#p§(param1:SoundChannel, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this.§8#S§ = param1;
         this.mId = param2;
         this.§8#S§.addEventListener(Event.SOUND_COMPLETE,this.§+K§);
         this.§0#x§ = param1.soundTransform.volume;
         this.§<<§ = false;
         this.§'!u§ = param3;
         this.§<-§ = getTimer();
         this.§6"&§ = param4;
         this.§^Y§ = -1;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§0#x§ = param1;
         if(!this.§<<§)
         {
            this.§'!Z§(this.§0#x§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§0#x§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §`#%§() : int
      {
         return this.§6"&§;
      }
      
      public function get § "X§() : int
      {
         return this.§^Y§;
      }
      
      public function get §5$<§() : Number
      {
         if(!this.§8#S§)
         {
            return this.§3N§;
         }
         var _loc1_:Number = this.§8#S§.position;
         var _loc2_:int = getTimer() - this.§<-§;
         if(_loc1_ < _loc2_ - § ">§)
         {
            _loc1_ = _loc2_ - § ">§;
         }
         return _loc1_;
      }
      
      public function get §3N§() : Number
      {
         return this.§'!u§;
      }
      
      public function get §2#n§() : Number
      {
         return this.§3N§ - this.§5$<§;
      }
      
      private function §+K§(param1:Event, param2:Boolean = false) : void
      {
         ++this.§^Y§;
         if(param2)
         {
            this.§^Y§ = this.§6"&§;
         }
         if(this.§8#S§)
         {
            this.§8#S§.removeEventListener(Event.SOUND_COMPLETE,this.§+K§);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!param2)
         {
            dispatchEvent(new Event(§3#<§));
         }
      }
      
      private function §'!Z§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§8#S§.soundTransform;
         _loc2_.volume = param1;
         this.§8#S§.soundTransform = _loc2_;
      }
      
      public function §;#C§() : void
      {
         this.stop();
         this.§+K§(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.§8#S§)
         {
            this.§8#S§.stop();
         }
      }
      
      public function pause() : §`!6§
      {
         var _loc1_:§`!6§ = new §`!6§(this.id,this.§6"&§,this.§0#x§,this.§8#S§.position);
         this.§;#C§();
         return _loc1_;
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§8#S§.removeEventListener(Event.SOUND_COMPLETE,this.§+K§);
         this.§8#S§ = null;
      }
      
      public function §=#L§() : void
      {
         if(this.§8#S§)
         {
            this.§'!Z§(0);
            this.§<<§ = true;
         }
      }
      
      public function §+"^§() : void
      {
         if(this.§8#S§)
         {
            this.§'!Z§(this.§0#x§);
            this.§<<§ = false;
         }
      }
   }
}
