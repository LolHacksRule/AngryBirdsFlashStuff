package §["8§
{
   import §`"2§.§6!,§;
   import §`"2§.§><§;
   import §`L§.Sprite;
   
   public class § !>§
   {
      
      public static const §9l§:int = 0;
      
      public static const §?!T§:int = 1;
      
      public static const §^!g§:int = 2;
      
      public static const §!!]§:int = 3;
      
      public static const §^!t§:int = 4;
      
      public static const § V§:int = 5;
       
      
      private var §3!<§:Vector.<§"@§>;
      
      private var §>!=§:§><§;
      
      private var §>!t§:§6!,§;
      
      public function § !>§(param1:§><§, param2:§6!,§)
      {
         super();
         this.§>!=§ = param1;
         this.§>!t§ = param2;
         this.§3!<§ = new Vector.<§"@§>();
         var _loc3_:int = 0;
         while(_loc3_ < § V§)
         {
            this.§3!<§[_loc3_] = new §"@§();
            _loc3_++;
         }
      }
      
      public function get §1!,§() : §><§
      {
         return this.§>!=§;
      }
      
      public function get §4F§() : §6!,§
      {
         return this.§>!t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"@§ = null;
         if(this.§3!<§)
         {
            while(this.§3!<§.length)
            {
               _loc1_ = this.§3!<§.pop();
               _loc1_.dispose();
            }
         }
         this.§3!<§ = null;
      }
      
      public function §9!?§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§44§ = new §44§(this.§>!=§,this.§>!t§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§"@§;
         if(_loc18_ = this.§'!E§(param3))
         {
            _loc18_.§-?§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §-?§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §=!i§
      {
         var _loc16_:§=!i§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§"@§;
         if(_loc17_ = this.§'!E§(param2))
         {
            _loc17_.§-?§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §=!i§
      {
         return new §=!i§(this.§>!=§,this.§>!t§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!<§.length)
         {
            this.§'!E§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §7!F§(param1:int) : void
      {
         var _loc2_:§"@§ = this.§'!E§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §"W§(param1:int) : Sprite
      {
         return this.§'!E§(param1).sprite;
      }
      
      public function §'!E§(param1:Number) : §"@§
      {
         if(this.§3!<§ != null)
         {
            return this.§3!<§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§7!F§(§9l§);
         var _loc1_:§"@§ = this.§'!E§(§?!T§);
         var _loc2_:§"@§ = this.§'!E§(§9l§);
         _loc1_.§@9§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §=!0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§"@§ = null;
         for each(_loc3_ in this.§3!<§)
         {
            _loc3_.§<=§(param1,param2);
         }
      }
   }
}
