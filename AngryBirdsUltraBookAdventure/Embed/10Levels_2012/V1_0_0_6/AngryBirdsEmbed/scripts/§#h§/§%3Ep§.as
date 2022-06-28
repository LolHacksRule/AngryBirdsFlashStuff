package §#h§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §>p§
   {
       
      
      public var mName:String;
      
      public var §4c§:int;
      
      public var §&x§:Number = 1;
      
      private var §5l§:Vector.<§@b§>;
      
      private var §]k§:Number;
      
      public function §>p§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§4c§ = param2;
         this.§&x§ = param3;
         this.§]k§ = this.§&x§;
         this.§5l§ = new Vector.<§@b§>();
      }
      
      public function §]!%§() : Boolean
      {
         return this.§5l§.length < this.§4c§;
      }
      
      public function § !%§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §@b§
      {
         if(param4 < 0)
         {
            param4 = this.§]k§;
         }
         var _loc6_:SoundTransform = new SoundTransform(param4);
         var _loc7_:SoundChannel;
         if((_loc7_ = param1.play(param5,param3,_loc6_)) == null)
         {
            return null;
         }
         var _loc8_:§@b§;
         (_loc8_ = new §@b§(_loc7_,param2)).addEventListener(Event.SOUND_COMPLETE,this.§-k§);
         if(this.§&x§ == 0)
         {
            _loc8_.§5!H§();
         }
         this.§5l§.push(_loc8_);
         return _loc8_;
      }
      
      private function §-k§(param1:Event) : void
      {
         var _loc3_:Vector.<§@b§> = null;
         var _loc4_:§@b§ = null;
         var _loc2_:§@b§ = §@b§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§-k§);
         if(this.§5l§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§5l§.splice(this.§5l§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
         }
      }
      
      public function §'I§() : Boolean
      {
         return this.§5l§.length > 0;
      }
      
      public function §[!<§() : void
      {
         var _loc1_:§@b§ = null;
         while(this.§5l§.length > 0)
         {
            _loc1_ = this.§5l§[0];
            _loc1_.stop();
            _loc1_.§`C§();
         }
      }
      
      public function § !$§() : void
      {
         var _loc1_:§@b§ = null;
         this.§&x§ = 0;
         for each(_loc1_ in this.§5l§)
         {
            _loc1_.§5!H§();
         }
      }
      
      public function §+h§() : void
      {
         var _loc1_:§@b§ = null;
         this.§&x§ = this.§]k§;
         for each(_loc1_ in this.§5l§)
         {
            _loc1_.§6c§();
         }
      }
      
      public function §8V§(param1:String) : §@b§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5l§.length)
         {
            if(§@b§(this.§5l§[_loc2_]).id == param1)
            {
               return §@b§(this.§5l§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
