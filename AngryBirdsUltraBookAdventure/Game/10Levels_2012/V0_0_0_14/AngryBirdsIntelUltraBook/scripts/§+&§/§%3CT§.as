package §+&§
{
   import §!!§.§->§;
   import §!!§.§>4§;
   import §!!X§.§&!E§;
   import §=!7§.§,F§;
   
   public class §<T§
   {
      
      public static const §`!U§:Number = 50;
      
      public static var §+b§:Number = 0;
      
      public static const §^!§:Number = 0.5;
      
      public static const §]5§:Number = 0;
       
      
      public var §&!7§:Number;
      
      public var §=!i§:Number;
      
      public var §0>§:Number;
      
      public var §;2§:Number;
      
      public var §7!_§:Number;
      
      public var §+!X§:§-!7§;
      
      public function §<T§(param1:§-!7§, param2:§>4§)
      {
         var _loc5_:§->§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§,F§ = null;
         super();
         this.§+!X§ = param1;
         this.§&!7§ = int.MAX_VALUE;
         this.§=!i§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§5d§)
         {
            _loc5_ = param2.§?!H§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §-!7§.§!l§ * 4 * §-!7§.§8!r§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§&!7§)
            {
               this.§&!7§ = _loc7_;
            }
            if(_loc8_ > this.§=!i§)
            {
               this.§=!i§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§"X§)
         {
            if((_loc9_ = param2.§^k§(_loc3_)).x < this.§&!7§)
            {
               this.§&!7§ = _loc9_.x;
            }
            if(_loc9_.x > this.§=!i§)
            {
               this.§=!i§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §-!7§.§!l§ * §-!7§.§8!r§;
         this.§&!7§ -= _loc4_;
         this.§=!i§ += _loc4_;
         this.§7!_§ = §-!7§.§!l§ * §-!7§.§8!r§ / (this.§=!i§ - this.§&!7§);
         this.§7!_§ = Math.max(this.§7!_§,§&!E§.§,!1§);
         this.§;2§ = §]5§;
         this.§0>§ = this.§;2§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §+n§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§0>§ || param2 > this.§;2§ + 50 || param1 < this.§&!7§ || param1 > this.§=!i§)
         {
            return true;
         }
         return false;
      }
   }
}
