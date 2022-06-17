package §%$0§
{
   import §#Z§.Sprite;
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   
   public class §2#Z§
   {
      
      public static const §3#2§:int = 0;
      
      public static const §,!]§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §'!3§:int = 4;
      
      public static const PARTICLE_GROUP_FOREGROUND_EFFECTS:int = 5;
      
      public static const §2e§:int = 6;
       
      
      private var §<!`§:Vector.<§`#H§>;
      
      private var §]!g§:§!!]§;
      
      private var §]#o§:§%"=§;
      
      public function §2#Z§(param1:§!!]§, param2:§%"=§)
      {
         super();
         this.§]!g§ = param1;
         this.§]#o§ = param2;
         this.§<!`§ = new Vector.<§`#H§>();
         var _loc3_:int = 0;
         while(_loc3_ < §2e§)
         {
            this.§<!`§[_loc3_] = new §`#H§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §!!]§
      {
         return this.§]!g§;
      }
      
      public function get textureManager() : §%"=§
      {
         return this.§]#o§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`#H§ = null;
         if(this.§<!`§)
         {
            while(this.§<!`§.length)
            {
               _loc1_ = this.§<!`§.pop();
               _loc1_.dispose();
            }
         }
         this.§<!`§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false, param16:String = null) : §`#I§
      {
         var _loc17_:§`#I§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         var _loc18_:§`#H§;
         if(_loc18_ = this.§1"O§(param2))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
         return _loc17_;
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:Number = -1, param16:Boolean = false) : void
      {
         var _loc17_:§'T§ = new §'T§(this.§]!g§,this.§]#o§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§`#H§;
         if(_loc18_ = this.§1"O§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §7!`§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§2!A§ = new §2!A§(this.§]!g§,this.§]#o§,param2,param3,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param1,param4);
         var _loc17_:§`#H§;
         if(_loc17_ = this.§1"O§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = null) : §`#I§
      {
         return new §`#I§(this.§]!g§,this.§]#o§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!`§.length)
         {
            this.§1"O§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §`!<§(param1:int) : void
      {
         var _loc2_:§`#H§ = this.§1"O§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §?B§(param1:int) : Sprite
      {
         return this.§1"O§(param1).sprite;
      }
      
      public function §1"O§(param1:Number) : §`#H§
      {
         if(this.§<!`§ != null)
         {
            return this.§<!`§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§`!<§(§3#2§);
         var _loc1_:§`#H§ = this.§1"O§(§,!]§);
         var _loc2_:§`#H§ = this.§1"O§(§3#2§);
         _loc1_.§##5§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§`#H§ = null;
         for each(_loc3_ in this.§<!`§)
         {
            _loc3_.§0>§(param1,param2);
         }
      }
   }
}
