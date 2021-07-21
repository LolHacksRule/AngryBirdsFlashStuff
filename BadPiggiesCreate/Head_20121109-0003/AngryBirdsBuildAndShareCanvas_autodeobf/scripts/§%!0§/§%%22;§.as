package §%!0§
{
   import §,!g§.§"!P§;
   import §<i§.§'!e§;
   import §<i§.§+!S§;
   import §[!P§.§"0§;
   
   public class §%";§
   {
      
      public static const §]!6§:Number = 50;
      
      public static var §2!6§:Number = 0;
      
      public static const §7u§:Number = 0.5;
      
      public static const §+"4§:Number = 0;
       
      
      public var §0!X§:Number;
      
      public var §2-§:Number;
      
      public var §?a§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §]"-§:Number;
      
      public var §`!G§:§,4§;
      
      public function §%";§(param1:§,4§, param2:§'!e§)
      {
         var _loc5_:§+!S§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§"0§ = null;
         super();
         this.§`!G§ = param1;
         this.§0!X§ = int.MAX_VALUE;
         this.§2-§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§+!L§)
         {
            _loc5_ = param2.§6!§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §,4§.§!,§ * 4 * §,4§.§,^§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§0!X§)
            {
               this.§0!X§ = _loc7_;
            }
            if(_loc8_ > this.§2-§)
            {
               this.§2-§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§8!Y§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§0!X§)
            {
               this.§0!X§ = _loc9_.x;
            }
            if(_loc9_.x > this.§2-§)
            {
               this.§2-§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §,4§.§!,§ * §,4§.§,^§;
         this.§0!X§ -= _loc4_;
         this.§2-§ += _loc4_;
         this.§]"-§ = §,4§.§!,§ * §,4§.§,^§ / (this.§2-§ - this.§0!X§);
         this.§]"-§ = Math.max(this.§]"-§,§"!P§.§@!f§);
         this.mBorderGround_B2 = §+"4§;
         this.§?a§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §5"!§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§?a§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§0!X§ || param1 > this.§2-§)
         {
            return true;
         }
         return false;
      }
   }
}
