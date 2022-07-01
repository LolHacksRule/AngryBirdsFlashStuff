package §!m§
{
   import §0!_§.§!!G§;
   import §0!_§.§7!3§;
   import §`!B§.Sprite;
   
   public class §2!k§
   {
      
      public static const §-E§:int = 0;
      
      public static const §`]§:int = 1;
      
      public static const §5o§:int = 2;
      
      public static const § g§:int = 3;
      
      public static const §@a§:int = 4;
      
      public static const §9V§:int = 5;
      
      public static const §2O§:int = 6;
       
      
      private var § ![§:Vector.<§'5§>;
      
      private var §,W§:§7!3§;
      
      private var §=!Q§:§!!G§;
      
      public function §2!k§(param1:§7!3§, param2:§!!G§)
      {
         super();
         this.§,W§ = param1;
         this.§=!Q§ = param2;
         this.§ ![§ = new Vector.<§'5§>();
         var _loc3_:int = 0;
         while(_loc3_ < §2O§)
         {
            this.§ ![§[_loc3_] = new §'5§();
            _loc3_++;
         }
      }
      
      public function get §%!E§() : §7!3§
      {
         return this.§,W§;
      }
      
      public function get §^!§() : §!!G§
      {
         return this.§=!Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'5§ = null;
         if(this.§ ![§)
         {
            while(this.§ ![§.length)
            {
               _loc1_ = this.§ ![§.pop();
               _loc1_.dispose();
            }
         }
         this.§ ![§ = null;
      }
      
      public function §+<§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §'!P§
      {
         var _loc16_:§'!P§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§'5§;
         if(_loc17_ = this.§9!%§(param2))
         {
            _loc17_.§+<§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §>D§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§`U§ = new §`U§(this.§,W§,this.§=!Q§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§'5§;
         if(_loc18_ = this.§9!%§(param3))
         {
            _loc18_.§+<§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §'!P§
      {
         return new §'!P§(this.§,W§,this.§=!Q§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ ![§.length)
         {
            this.§9!%§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §"n§(param1:int) : void
      {
         var _loc2_:§'5§ = this.§9!%§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §0#§(param1:int) : Sprite
      {
         return this.§9!%§(param1).sprite;
      }
      
      public function §9!%§(param1:Number) : §'5§
      {
         if(this.§ ![§ != null)
         {
            return this.§ ![§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§"n§(§-E§);
         var _loc1_:§'5§ = this.§9!%§(§`]§);
         var _loc2_:§'5§ = this.§9!%§(§-E§);
         _loc1_.§]"1§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §#X§(param1:Number, param2:Number) : void
      {
         var _loc3_:§'5§ = null;
         for each(_loc3_ in this.§ ![§)
         {
            _loc3_.§]R§(param1,param2);
         }
      }
   }
}
