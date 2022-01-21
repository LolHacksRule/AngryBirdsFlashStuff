package §'a§
{
   import §+-§.§,K§;
   import §+-§.§^D§;
   import §[_§.§2D§;
   import §`!C§.§?0§;
   
   public class §;!'§
   {
      
      public static const §;!=§:Number = 50;
      
      public static var §9!V§:Number = 0;
      
      public static const §&§:Number = 0.5;
      
      public static const §]%§:Number = 0;
       
      
      public var §8!9§:Number;
      
      public var §^!$§:Number;
      
      public var §-!4§:Number;
      
      public var §8!R§:Number;
      
      public var §[!C§:Number;
      
      public var mLevelMain:§0!f§;
      
      public function §;!'§(param1:§0!f§, param2:§,K§)
      {
         var _loc5_:§^D§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§?0§ = null;
         super();
         this.mLevelMain = param1;
         this.§8!9§ = int.MAX_VALUE;
         this.§^!$§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§2y§)
         {
            _loc5_ = param2.§-R§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §0!f§.§"i§ * 4 * §0!f§.§<C§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§8!9§)
            {
               this.§8!9§ = _loc7_;
            }
            if(_loc8_ > this.§^!$§)
            {
               this.§^!$§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§2!E§)
         {
            if((_loc9_ = param2.§6!e§(_loc3_)).x < this.§8!9§)
            {
               this.§8!9§ = _loc9_.x;
            }
            if(_loc9_.x > this.§^!$§)
            {
               this.§^!$§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §0!f§.§"i§ * §0!f§.§<C§;
         this.§8!9§ -= _loc4_;
         this.§^!$§ += _loc4_;
         this.§[!C§ = §0!f§.§"i§ * §0!f§.§<C§ / (this.§^!$§ - this.§8!9§);
         this.§[!C§ = Math.max(this.§[!C§,§2D§.§5!F§);
         this.§8!R§ = §]%§;
         this.§-!4§ = this.§8!R§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §'!K§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§-!4§ || param2 > this.§8!R§ + 50 || param1 < this.§8!9§ || param1 > this.§^!$§)
         {
            return true;
         }
         return false;
      }
   }
}
