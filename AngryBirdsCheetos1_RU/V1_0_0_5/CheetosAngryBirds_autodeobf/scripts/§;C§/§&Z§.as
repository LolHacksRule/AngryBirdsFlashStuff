package §;C§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&Z§
   {
       
      
      public var mName:String;
      
      public var §8!6§:int;
      
      public var §#! §:Number = 1;
      
      private var §37§:Vector.<§"!D§>;
      
      private var §0m§:Number;
      
      public function §&Z§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§8!6§ = param2;
         this.§#! § = param3;
         this.§0m§ = this.§#! §;
         this.§37§ = new Vector.<§"!D§>();
      }
      
      public function §4z§() : Boolean
      {
         return this.§37§.length < this.§8!6§;
      }
      
      public function §-q§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §"!D§
      {
         if(param4 < 0)
         {
            param4 = this.§0m§;
         }
         var _loc6_:SoundTransform = new SoundTransform(param4);
         var _loc7_:SoundChannel;
         if((_loc7_ = param1.play(param5,param3,_loc6_)) == null)
         {
            return null;
         }
         var _loc8_:§"!D§;
         (_loc8_ = new §"!D§(_loc7_,param2)).addEventListener(Event.SOUND_COMPLETE,this.§6!4§);
         if(this.§#! § == 0)
         {
            _loc8_.§]V§();
         }
         this.§37§.push(_loc8_);
         return _loc8_;
      }
      
      private function §6!4§(param1:Event) : void
      {
         var _loc3_:Vector.<§"!D§> = null;
         var _loc4_:§"!D§ = null;
         var _loc2_:§"!D§ = §"!D§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§6!4§);
         if(this.§37§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§37§.splice(this.§37§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§'s§();
            _loc4_ = null;
            _loc3_ = null;
         }
      }
      
      public function §6!3§() : Boolean
      {
         return this.§37§.length > 0;
      }
      
      public function § for§() : void
      {
         var _loc1_:§"!D§ = null;
         while(this.§37§.length > 0)
         {
            _loc1_ = this.§37§[0];
            _loc1_.stop();
            _loc1_.§^!U§();
         }
      }
      
      public function §7!D§() : void
      {
         var _loc1_:§"!D§ = null;
         this.§#! § = 0;
         for each(_loc1_ in this.§37§)
         {
            _loc1_.§]V§();
         }
      }
      
      public function §`8§() : void
      {
         var _loc1_:§"!D§ = null;
         this.§#! § = this.§0m§;
         for each(_loc1_ in this.§37§)
         {
            _loc1_.§9!$§();
         }
      }
      
      public function §>!0§(param1:String) : §"!D§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§37§.length)
         {
            if(§"!D§(this.§37§[_loc2_]).id == param1)
            {
               return §"!D§(this.§37§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
