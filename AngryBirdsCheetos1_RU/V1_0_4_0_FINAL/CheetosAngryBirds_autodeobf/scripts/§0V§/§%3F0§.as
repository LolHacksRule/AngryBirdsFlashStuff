package §0V§
{
   import §39§.§2e§;
   import §39§.§=R§;
   import §8-§.§,!P§;
   import §=?§.§>?§;
   
   public class §?0§
   {
      
      public static const § !X§:Number = 50;
      
      public static var §0!]§:Number = 0;
      
      public static const §[w§:Number = 0.5;
      
      public static const §@!Y§:Number = 0;
       
      
      public var §=V§:Number;
      
      public var §;R§:Number;
      
      public var §!-§:Number;
      
      public var §+!Z§:Number;
      
      public var §5X§:Number;
      
      public var §!q§:§`!O§;
      
      public function §?0§(param1:§`!O§, param2:§=R§)
      {
         var _loc5_:§2e§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§>?§ = null;
         super();
         this.§!q§ = param1;
         this.§=V§ = int.MAX_VALUE;
         this.§;R§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§ V§)
         {
            _loc5_ = param2.§3!_§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §`!O§.§<M§ * 4 * §`!O§.§?!O§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§=V§)
            {
               this.§=V§ = _loc7_;
            }
            if(_loc8_ > this.§;R§)
            {
               this.§;R§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§-5§)
         {
            if((_loc9_ = param2.§^i§(_loc3_)).x < this.§=V§)
            {
               this.§=V§ = _loc9_.x;
            }
            if(_loc9_.x > this.§;R§)
            {
               this.§;R§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §`!O§.§<M§ * §`!O§.§?!O§;
         this.§=V§ -= _loc4_;
         this.§;R§ += _loc4_;
         this.§5X§ = §`!O§.§<M§ * §`!O§.§?!O§ / (this.§;R§ - this.§=V§);
         this.§5X§ = Math.max(this.§5X§,§,!P§.§%;§);
         this.§+!Z§ = §@!Y§;
         this.§!-§ = this.§+!Z§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §3r§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§!-§ || param2 > this.§+!Z§ + 50 || param1 < this.§=V§ || param1 > this.§;R§)
         {
            return true;
         }
         return false;
      }
   }
}
