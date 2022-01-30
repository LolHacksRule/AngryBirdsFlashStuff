package §<f§
{
   import §%t§.§-!5§;
   import §%t§.§^!x§;
   import §^I§.Sprite;
   
   public class §3!8§
   {
      
      public static const §]!8§:int = 0;
      
      public static const §-!#§:int = 1;
      
      public static const §?"%§:int = 2;
      
      public static const §^D§:int = 3;
      
      public static const §1!E§:int = 4;
      
      public static const §@?§:int = 5;
       
      
      private var §@F§:Vector.<§%!'§>;
      
      private var §=!_§:§^!x§;
      
      private var §^o§:§-!5§;
      
      public function §3!8§(param1:§^!x§, param2:§-!5§)
      {
         super();
         this.§=!_§ = param1;
         this.§^o§ = param2;
         this.§@F§ = new Vector.<§%!'§>();
         var _loc3_:int = 0;
         while(_loc3_ < §@?§)
         {
            this.§@F§[_loc3_] = new §%!'§();
            _loc3_++;
         }
      }
      
      public function get §^d§() : §^!x§
      {
         return this.§=!_§;
      }
      
      public function get §>=§() : §-!5§
      {
         return this.§^o§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%!'§ = null;
         if(this.§@F§)
         {
            while(this.§@F§.length)
            {
               _loc1_ = this.§@F§.pop();
               _loc1_.dispose();
            }
         }
         this.§@F§ = null;
      }
      
      public function §7!7§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§6J§ = new §6J§(this.§=!_§,this.§^o§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§%!'§;
         if(_loc18_ = this.§,!x§(param3))
         {
            _loc18_.§`!N§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §`!N§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7!0§
      {
         var _loc16_:§7!0§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§%!'§;
         if(_loc17_ = this.§,!x§(param2))
         {
            _loc17_.§`!N§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7!0§
      {
         return new §7!0§(this.§=!_§,this.§^o§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@F§.length)
         {
            this.§,!x§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §-",§(param1:int) : void
      {
         var _loc2_:§%!'§ = this.§,!x§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §5!`§(param1:int) : Sprite
      {
         return this.§,!x§(param1).sprite;
      }
      
      public function §,!x§(param1:Number) : §%!'§
      {
         if(this.§@F§ != null)
         {
            return this.§@F§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§-",§(§]!8§);
         var _loc1_:§%!'§ = this.§,!x§(§-!#§);
         var _loc2_:§%!'§ = this.§,!x§(§]!8§);
         _loc1_.§0!]§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §54§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%!'§ = null;
         for each(_loc3_ in this.§@F§)
         {
            _loc3_.§9!>§(param1,param2);
         }
      }
   }
}
