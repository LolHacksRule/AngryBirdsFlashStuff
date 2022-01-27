package §,7§
{
   import §'!&§.Sprite;
   import §8o§.§""4§;
   import §8o§.§5"%§;
   
   public class §?L§
   {
      
      public static const §2!b§:int = 0;
      
      public static const §!S§:int = 1;
      
      public static const §7!B§:int = 2;
      
      public static const §`"6§:int = 3;
      
      public static const §]5§:int = 4;
       
      
      private var §!"B§:Vector.<§,"$§>;
      
      private var §13§:§""4§;
      
      private var §3'§:§5"%§;
      
      public function §?L§(param1:§""4§, param2:§5"%§)
      {
         super();
         this.§13§ = param1;
         this.§3'§ = param2;
         this.§!"B§ = new Vector.<§,"$§>();
         var _loc3_:int = 0;
         while(_loc3_ < §]5§)
         {
            this.§!"B§[_loc3_] = new §,"$§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §""4§
      {
         return this.§13§;
      }
      
      public function get textureManager() : §5"%§
      {
         return this.§3'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,"$§ = null;
         if(this.§!"B§)
         {
            while(this.§!"B§.length)
            {
               _loc1_ = this.§!"B§.pop();
               _loc1_.dispose();
            }
         }
         this.§!"B§ = null;
      }
      
      public function §=J§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §9!v§
      {
         var _loc16_:§9!v§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§,"$§;
         if(_loc17_ = this.§8!Q§(param2))
         {
            _loc17_.§=J§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §9!v§
      {
         return new §9!v§(this.§13§,this.§3'§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"B§.length)
         {
            this.§8!Q§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §<"!§(param1:int) : void
      {
         var _loc2_:§,"$§ = this.§8!Q§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §8w§(param1:int) : Sprite
      {
         return this.§8!Q§(param1).sprite;
      }
      
      public function §8!Q§(param1:Number) : §,"$§
      {
         if(this.§!"B§ != null)
         {
            return this.§!"B§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§<"!§(§2!b§);
         var _loc1_:§,"$§ = this.§8!Q§(§!S§);
         var _loc2_:§,"$§ = this.§8!Q§(§2!b§);
         _loc1_.§4!G§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §%!2§(param1:Number, param2:Number) : void
      {
         var _loc3_:§,"$§ = null;
         for each(_loc3_ in this.§!"B§)
         {
            _loc3_.§#O§(param1,param2);
         }
      }
   }
}
