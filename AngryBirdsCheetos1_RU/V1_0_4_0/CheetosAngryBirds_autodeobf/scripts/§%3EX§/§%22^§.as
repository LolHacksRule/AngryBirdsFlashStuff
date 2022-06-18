package §>X§
{
   import §3§.Sprite;
   import §`n§.§#H§;
   import §`n§.§2!"§;
   
   public class §"^§
   {
      
      public static const §4<§:int = 0;
      
      public static const § $§:int = 1;
      
      public static const §4H§:int = 2;
      
      public static const §<!L§:int = 3;
      
      public static const §<!H§:int = 4;
      
      public static const §[!#§:int = 5;
       
      
      private var §8!D§:Vector.<§@!L§>;
      
      private var § D§:§2!"§;
      
      private var §4=§:§#H§;
      
      public function §"^§(param1:§2!"§, param2:§#H§)
      {
         super();
         this.§ D§ = param1;
         this.§4=§ = param2;
         this.§8!D§ = new Vector.<§@!L§>();
         var _loc3_:int = 0;
         while(_loc3_ < §[!#§)
         {
            this.§8!D§[_loc3_] = new §@!L§();
            _loc3_++;
         }
      }
      
      public function get §2!N§() : §2!"§
      {
         return this.§ D§;
      }
      
      public function get §1S§() : §#H§
      {
         return this.§4=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@!L§ = null;
         if(this.§8!D§)
         {
            while(this.§8!D§.length)
            {
               _loc1_ = this.§8!D§.pop();
               _loc1_.dispose();
            }
         }
         this.§8!D§ = null;
      }
      
      public function §<w§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§+C§ = new §+C§(this.§ D§,this.§4=§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§@!L§;
         if(_loc18_ = this.§,P§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7!%§
      {
         var _loc16_:§7!%§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§@!L§;
         if(_loc17_ = this.§,P§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7!%§
      {
         return new §7!%§(this.§ D§,this.§4=§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!D§.length)
         {
            this.§,P§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §<!C§(param1:int) : void
      {
         var _loc2_:§@!L§ = this.§,P§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §,!0§(param1:int) : Sprite
      {
         return this.§,P§(param1).sprite;
      }
      
      public function §,P§(param1:Number) : §@!L§
      {
         if(this.§8!D§ != null)
         {
            return this.§8!D§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§<!C§(§4<§);
         var _loc1_:§@!L§ = this.§,P§(§ $§);
         var _loc2_:§@!L§ = this.§,P§(§4<§);
         _loc1_.§ !H§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §0F§(param1:Number, param2:Number) : void
      {
         var _loc3_:§@!L§ = null;
         for each(_loc3_ in this.§8!D§)
         {
            _loc3_.§-!6§(param1,param2);
         }
      }
   }
}
