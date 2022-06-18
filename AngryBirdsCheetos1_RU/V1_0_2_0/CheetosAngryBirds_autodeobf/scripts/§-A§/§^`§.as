package §-A§
{
   import § m§.§ r§;
   import §#V§.§,!W§;
   import §#b§.§85§;
   import §#b§.§8j§;
   
   public class §^`§
   {
      
      public static const §^!X§:Number = 50;
      
      public static var §&F§:Number = 0;
      
      public static const §?!E§:Number = 0.5;
      
      public static const §=^§:Number = 0;
       
      
      public var §3s§:Number;
      
      public var §2!?§:Number;
      
      public var §!@§:Number;
      
      public var §>6§:Number;
      
      public var §-5§:Number;
      
      public var §return§:§%9§;
      
      public function §^`§(param1:§%9§, param2:§85§)
      {
         var _loc5_:§8j§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§ r§ = null;
         super();
         this.§return§ = param1;
         this.§3s§ = int.MAX_VALUE;
         this.§2!?§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§4!`§)
         {
            _loc5_ = param2.§"Z§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §%9§.§+!X§ * 4 * §%9§.§1[§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§3s§)
            {
               this.§3s§ = _loc7_;
            }
            if(_loc8_ > this.§2!?§)
            {
               this.§2!?§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§6!8§)
         {
            if((_loc9_ = param2.§"!B§(_loc3_)).x < this.§3s§)
            {
               this.§3s§ = _loc9_.x;
            }
            if(_loc9_.x > this.§2!?§)
            {
               this.§2!?§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §%9§.§+!X§ * §%9§.§1[§;
         this.§3s§ -= _loc4_;
         this.§2!?§ += _loc4_;
         this.§-5§ = §%9§.§+!X§ * §%9§.§1[§ / (this.§2!?§ - this.§3s§);
         this.§-5§ = Math.max(this.§-5§,§,!W§.§4!!§);
         this.§>6§ = §=^§;
         this.§!@§ = this.§>6§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §"!0§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§!@§ || param2 > this.§>6§ + 50 || param1 < this.§3s§ || param1 > this.§2!?§)
         {
            return true;
         }
         return false;
      }
   }
}
