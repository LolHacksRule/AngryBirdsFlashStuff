package §=!7§
{
   import §9$§.Sprite;
   import §@"§.§&!=§;
   import §@"§.§]!-§;
   
   public class §5"6§
   {
      
      public static const §&#I§:int = 0;
      
      public static const §5"B§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §<"n§:int = 4;
      
      public static const §4"8§:int = 5;
      
      public static const §^w§:int = 6;
       
      
      private var §5b§:Vector.<§`"@§>;
      
      private var §@">§:§]!-§;
      
      private var §5!H§:§&!=§;
      
      public function §5"6§(param1:§]!-§, param2:§&!=§)
      {
         super();
         this.§@">§ = param1;
         this.§5!H§ = param2;
         this.§5b§ = new Vector.<§`"@§>();
         var _loc3_:int = 0;
         while(_loc3_ < §^w§)
         {
            this.§5b§[_loc3_] = new §`"@§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §]!-§
      {
         return this.§@">§;
      }
      
      public function get textureManager() : §&!=§
      {
         return this.§5!H§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`"@§ = null;
         if(this.§5b§)
         {
            while(this.§5b§.length)
            {
               _loc1_ = this.§5b§.pop();
               _loc1_.dispose();
            }
         }
         this.§5b§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §=$4§
      {
         var _loc16_:§=$4§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§`"@§;
         if(_loc17_ = this.§+!9§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:Number = -1, param16:Boolean = false) : void
      {
         var _loc17_:§,"?§ = new §,"?§(this.§@">§,this.§5!H§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§`"@§;
         if(_loc18_ = this.§+!9§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §"!=§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§4[§ = new §4[§(this.§@">§,this.§5!H§,param2,param3,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param1,param4);
         var _loc17_:§`"@§;
         if(_loc17_ = this.§+!9§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false) : §=$4§
      {
         return new §=$4§(this.§@">§,this.§5!H§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5b§.length)
         {
            this.§+!9§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §,!K§(param1:int) : void
      {
         var _loc2_:§`"@§ = this.§+!9§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §2# §(param1:int) : Sprite
      {
         return this.§+!9§(param1).sprite;
      }
      
      public function §+!9§(param1:Number) : §`"@§
      {
         if(this.§5b§ != null)
         {
            return this.§5b§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§,!K§(§&#I§);
         var _loc1_:§`"@§ = this.§+!9§(§5"B§);
         var _loc2_:§`"@§ = this.§+!9§(§&#I§);
         _loc1_.§4U§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§`"@§ = null;
         for each(_loc3_ in this.§5b§)
         {
            _loc3_.§;f§(param1,param2);
         }
      }
   }
}
