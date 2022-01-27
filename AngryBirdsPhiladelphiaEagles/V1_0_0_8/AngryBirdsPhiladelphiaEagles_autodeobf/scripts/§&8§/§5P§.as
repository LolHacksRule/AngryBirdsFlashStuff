package §&8§
{
   import §-!'§.Sprite;
   import §<A§.§'K§;
   import §<A§.§'n§;
   
   public class §5P§
   {
      
      public static const §-A§:int = 0;
      
      public static const §]!H§:int = 1;
      
      public static const §,C§:int = 2;
      
      public static const §=!L§:int = 3;
      
      public static const §^!7§:int = 4;
      
      public static const §`a§:int = 5;
       
      
      private var §6;§:Vector.<§`D§>;
      
      private var §7[§:§'n§;
      
      private var §@!8§:§'K§;
      
      public function §5P§(param1:§'n§, param2:§'K§)
      {
         super();
         this.§7[§ = param1;
         this.§@!8§ = param2;
         this.§6;§ = new Vector.<§`D§>();
         var _loc3_:int = 0;
         while(_loc3_ < §`a§)
         {
            this.§6;§[_loc3_] = new §`D§();
            _loc3_++;
         }
      }
      
      public function get §,F§() : §'n§
      {
         return this.§7[§;
      }
      
      public function get textureManager() : §'K§
      {
         return this.§@!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`D§ = null;
         if(this.§6;§)
         {
            while(this.§6;§.length)
            {
               _loc1_ = this.§6;§.pop();
               _loc1_.dispose();
            }
         }
         this.§6;§ = null;
      }
      
      public function §`W§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§3!F§ = new §3!F§(this.§7[§,this.§@!8§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§`D§;
         if(_loc18_ = this.§<4§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5Z§
      {
         var _loc16_:§5Z§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§`D§;
         if(_loc17_ = this.§<4§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5Z§
      {
         return new §5Z§(this.§7[§,this.§@!8§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6;§.length)
         {
            this.§<4§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §%!§(param1:int) : void
      {
         var _loc2_:§`D§ = this.§<4§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §7M§(param1:int) : Sprite
      {
         return this.§<4§(param1).sprite;
      }
      
      public function §<4§(param1:Number) : §`D§
      {
         if(this.§6;§ != null)
         {
            return this.§6;§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§%!§(§-A§);
         var _loc1_:§`D§ = this.§<4§(§]!H§);
         var _loc2_:§`D§ = this.§<4§(§-A§);
         _loc1_.§#!6§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §>>§(param1:Number, param2:Number) : void
      {
         var _loc3_:§`D§ = null;
         for each(_loc3_ in this.§6;§)
         {
            _loc3_.§-'§(param1,param2);
         }
      }
   }
}
