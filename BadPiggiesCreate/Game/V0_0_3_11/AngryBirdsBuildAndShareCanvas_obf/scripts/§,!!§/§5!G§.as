package §,!!§
{
   import §1!Y§.Sprite;
   import §[_§.§2!B§;
   import §[_§.§6G§;
   
   public class §5!G§
   {
      
      public static const §]!x§:int = 0;
      
      public static const §8N§:int = 1;
      
      public static const §2r§:int = 2;
      
      public static const §5N§:int = 3;
      
      public static const §,f§:int = 4;
      
      public static const § !M§:int = 5;
       
      
      private var §&%§:Vector.<§0!B§>;
      
      private var §,!A§:§6G§;
      
      private var §3!W§:§2!B§;
      
      public function §5!G§(param1:§6G§, param2:§2!B§)
      {
         super();
         this.§,!A§ = param1;
         this.§3!W§ = param2;
         this.§&%§ = new Vector.<§0!B§>();
         var _loc3_:int = 0;
         while(_loc3_ < § !M§)
         {
            this.§&%§[_loc3_] = new §0!B§();
            _loc3_++;
         }
      }
      
      public function get §%w§() : §6G§
      {
         return this.§,!A§;
      }
      
      public function get §while§() : §2!B§
      {
         return this.§3!W§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!B§ = null;
         if(this.§&%§)
         {
            while(this.§&%§.length)
            {
               _loc1_ = this.§&%§.pop();
               _loc1_.dispose();
            }
         }
         this.§&%§ = null;
      }
      
      public function §-!n§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§-]§ = new §-]§(this.§,!A§,this.§3!W§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§0!B§;
         if(_loc18_ = this.§3[§(param3))
         {
            _loc18_.§,D§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §,D§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §>!]§
      {
         var _loc16_:§>!]§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§0!B§;
         if(_loc17_ = this.§3[§(param2))
         {
            _loc17_.§,D§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §>!]§
      {
         return new §>!]§(this.§,!A§,this.§3!W§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&%§.length)
         {
            this.§3[§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §+$§(param1:int) : void
      {
         var _loc2_:§0!B§ = this.§3[§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §+9§(param1:int) : Sprite
      {
         return this.§3[§(param1).sprite;
      }
      
      public function §3[§(param1:Number) : §0!B§
      {
         if(this.§&%§ != null)
         {
            return this.§&%§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§+$§(§]!x§);
         var _loc1_:§0!B§ = this.§3[§(§8N§);
         var _loc2_:§0!B§ = this.§3[§(§]!x§);
         _loc1_.§1!z§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §@G§(param1:Number, param2:Number) : void
      {
         var _loc3_:§0!B§ = null;
         for each(_loc3_ in this.§&%§)
         {
            _loc3_.§7!]§(param1,param2);
         }
      }
   }
}
