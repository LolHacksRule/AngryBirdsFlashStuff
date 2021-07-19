package §9T§
{
   import §&o§.§72§;
   import §-!O§.§?Z§;
   import §^]§.§[z§;
   import §^]§.§]X§;
   
   public class §^=§
   {
      
      public static const §8p§:Number = 50;
      
      public static var §44§:Number = 0;
      
      public static const §9s§:Number = 0.5;
      
      public static const §6B§:Number = 0;
       
      
      public var §?!G§:Number;
      
      public var §`!!§:Number;
      
      public var §-!;§:Number;
      
      public var §^!O§:Number;
      
      public var §5[§:Number;
      
      public var §;§:§1r§;
      
      public function §^=§(param1:§1r§, param2:§[z§)
      {
         var _loc5_:§]X§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§72§ = null;
         super();
         this.§;§ = param1;
         this.§?!G§ = int.MAX_VALUE;
         this.§`!!§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§9!N§)
         {
            _loc5_ = param2.§>d§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §1r§.§'6§ * 4 * §1r§.§[M§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§?!G§)
            {
               this.§?!G§ = _loc7_;
            }
            if(_loc8_ > this.§`!!§)
            {
               this.§`!!§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§;J§)
         {
            if((_loc9_ = param2.§ for§(_loc3_)).x < this.§?!G§)
            {
               this.§?!G§ = _loc9_.x;
            }
            if(_loc9_.x > this.§`!!§)
            {
               this.§`!!§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §1r§.§'6§ * §1r§.§[M§;
         this.§?!G§ -= _loc4_;
         this.§`!!§ += _loc4_;
         this.§5[§ = §1r§.§'6§ * §1r§.§[M§ / (this.§`!!§ - this.§?!G§);
         this.§5[§ = Math.max(this.§5[§,§?Z§.§"5§);
         this.§^!O§ = §6B§;
         this.§-!;§ = this.§^!O§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §>x§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§-!;§ || param2 > this.§^!O§ + 50 || param1 < this.§?!G§ || param1 > this.§`!!§)
         {
            return true;
         }
         return false;
      }
   }
}
