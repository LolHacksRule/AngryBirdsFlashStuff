package §>F§
{
   import §-!0§.§'!3§;
   import §-!0§.§`Q§;
   import §?^§.Sprite;
   
   public class §5b§
   {
      
      public static const §do§:int = 0;
      
      public static const §[M§:int = 1;
      
      public static const §3!!§:int = 2;
      
      public static const §?D§:int = 3;
      
      public static const §%Z§:int = 4;
      
      public static const §-d§:int = 5;
       
      
      private var §&!=§:Vector.<§=n§>;
      
      private var § 3§:§`Q§;
      
      private var § 7§:§'!3§;
      
      public function §5b§(param1:§`Q§, param2:§'!3§)
      {
         super();
         this.§ 3§ = param1;
         this.§ 7§ = param2;
         this.§&!=§ = new Vector.<§=n§>();
         var _loc3_:int = 0;
         while(_loc3_ < §-d§)
         {
            this.§&!=§[_loc3_] = new §=n§();
            _loc3_++;
         }
      }
      
      public function get §+!!§() : §`Q§
      {
         return this.§ 3§;
      }
      
      public function get textureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=n§ = null;
         if(this.§&!=§)
         {
            while(this.§&!=§.length)
            {
               _loc1_ = this.§&!=§.pop();
               _loc1_.dispose();
            }
         }
         this.§&!=§ = null;
      }
      
      public function §9!§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§!x§ = new §!x§(this.§ 3§,this.§ 7§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§=n§;
         if(_loc18_ = this.§?N§(param3))
         {
            _loc18_.§ t§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function § t§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2S§
      {
         var _loc16_:§2S§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§=n§;
         if(_loc17_ = this.§?N§(param2))
         {
            _loc17_.§ t§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2S§
      {
         return new §2S§(this.§ 3§,this.§ 7§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!=§.length)
         {
            this.§?N§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §9!=§(param1:int) : void
      {
         var _loc2_:§=n§ = this.§?N§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §;!6§(param1:int) : Sprite
      {
         return this.§?N§(param1).sprite;
      }
      
      public function §?N§(param1:Number) : §=n§
      {
         if(this.§&!=§ != null)
         {
            return this.§&!=§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§9!=§(§do§);
         var _loc1_:§=n§ = this.§?N§(§[M§);
         var _loc2_:§=n§ = this.§?N§(§do§);
         _loc1_.§;q§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         var _loc3_:§=n§ = null;
         for each(_loc3_ in this.§&!=§)
         {
            _loc3_.§>8§(param1,param2);
         }
      }
   }
}
