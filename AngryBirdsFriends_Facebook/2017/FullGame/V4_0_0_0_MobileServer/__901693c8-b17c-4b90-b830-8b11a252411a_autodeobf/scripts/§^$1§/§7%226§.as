package §^$1§
{
   import §&!v§.Sprite;
   import §7!j§.§"I§;
   import §7!j§.§'0§;
   
   public class §7"6§
   {
      
      public static const §]#N§:int = 0;
      
      public static const §>C§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §"!I§:int = 4;
      
      public static const §#$4§:int = 5;
      
      public static const §0#A§:int = 6;
       
      
      private var §<L§:Vector.<§<"n§>;
      
      private var §@!u§:§"I§;
      
      private var §>!4§:§'0§;
      
      public function §7"6§(param1:§"I§, param2:§'0§)
      {
         super();
         this.§@!u§ = param1;
         this.§>!4§ = param2;
         this.§<L§ = new Vector.<§<"n§>();
         var _loc3_:int = 0;
         while(_loc3_ < §0#A§)
         {
            this.§<L§[_loc3_] = new §<"n§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §"I§
      {
         return this.§@!u§;
      }
      
      public function get textureManager() : §'0§
      {
         return this.§>!4§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<"n§ = null;
         if(this.§<L§)
         {
            while(this.§<L§.length)
            {
               _loc1_ = this.§<L§.pop();
               _loc1_.dispose();
            }
         }
         this.§<L§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false, param16:String = null) : §2"^§
      {
         var _loc17_:§2"^§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         var _loc18_:§<"n§;
         if(_loc18_ = this.§5f§(param2))
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
         var _loc17_:§88§ = new §88§(this.§@!u§,this.§>!4§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§<"n§;
         if(_loc18_ = this.§5f§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §``§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§-"p§ = new §-"p§(this.§@!u§,this.§>!4§,param2,param3,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param1,param4);
         var _loc17_:§<"n§;
         if(_loc17_ = this.§5f§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = null) : §2"^§
      {
         return new §2"^§(this.§@!u§,this.§>!4§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<L§.length)
         {
            this.§5f§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@"t§(param1:int) : void
      {
         var _loc2_:§<"n§ = this.§5f§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §?!D§(param1:int) : Sprite
      {
         return this.§5f§(param1).sprite;
      }
      
      public function §5f§(param1:Number) : §<"n§
      {
         if(this.§<L§ != null)
         {
            return this.§<L§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@"t§(§]#N§);
         var _loc1_:§<"n§ = this.§5f§(§>C§);
         var _loc2_:§<"n§ = this.§5f§(§]#N§);
         _loc1_.§^#U§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§<"n§ = null;
         for each(_loc3_ in this.§<L§)
         {
            _loc3_.§,!x§(param1,param2);
         }
      }
   }
}
