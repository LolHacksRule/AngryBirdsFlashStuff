package §0! §
{
   import § `§.§2w§;
   import § `§.§5L§;
   import §]@§.Sprite;
   
   public class §<2§
   {
      
      public static const §`!J§:int = 0;
      
      public static const §&!H§:int = 1;
      
      public static const §^#§:int = 2;
      
      public static const §]!X§:int = 3;
      
      public static const §<X§:int = 4;
      
      public static const §^!K§:int = 5;
       
      
      private var §1Q§:Vector.<§"!0§>;
      
      private var §>n§:§5L§;
      
      private var §8!M§:§2w§;
      
      public function §<2§(param1:§5L§, param2:§2w§)
      {
         super();
         this.§>n§ = param1;
         this.§8!M§ = param2;
         this.§1Q§ = new Vector.<§"!0§>();
         var _loc3_:int = 0;
         while(_loc3_ < §^!K§)
         {
            this.§1Q§[_loc3_] = new §"!0§();
            _loc3_++;
         }
      }
      
      public function get §true§() : §5L§
      {
         return this.§>n§;
      }
      
      public function get §=]§() : §2w§
      {
         return this.§8!M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"!0§ = null;
         if(this.§1Q§)
         {
            while(this.§1Q§.length)
            {
               _loc1_ = this.§1Q§.pop();
               _loc1_.dispose();
            }
         }
         this.§1Q§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7o§
      {
         var _loc16_:§7o§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§"!0§;
         if(_loc17_ = this.§1x§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7o§
      {
         return new §7o§(this.§>n§,this.§8!M§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1Q§.length)
         {
            this.§1x§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §-!9§(param1:int) : void
      {
         var _loc2_:§"!0§ = this.§1x§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §`Q§(param1:int) : Sprite
      {
         return this.§1x§(param1).sprite;
      }
      
      public function §1x§(param1:Number) : §"!0§
      {
         if(this.§1Q§ != null)
         {
            return this.§1Q§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§-!9§(§`!J§);
         var _loc1_:§"!0§ = this.§1x§(§&!H§);
         var _loc2_:§"!0§ = this.§1x§(§`!J§);
         _loc1_.§"!6§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:§"!0§ = null;
         for each(_loc3_ in this.§1Q§)
         {
            _loc3_.§;!H§(param1,param2);
         }
      }
   }
}
