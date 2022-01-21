package §55§
{
   import §-!F§.§;!?§;
   import §-!F§.§`+§;
   import §4!,§.§+f§;
   import §`i§.§[!n§;
   
   public class §^!O§
   {
      
      public static const §;3§:Number = 50;
      
      public static var § !#§:Number = 0;
      
      public static const §7!^§:Number = 0.5;
      
      public static const §!&§:Number = 0;
       
      
      public var §0M§:Number;
      
      public var §8!+§:Number;
      
      public var §3"§:Number;
      
      public var §,!Y§:Number;
      
      public var §9e§:Number;
      
      public var mLevelMain:§>![§;
      
      public function §^!O§(param1:§>![§, param2:§`+§)
      {
         var _loc5_:§;!?§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§[!n§ = null;
         super();
         this.mLevelMain = param1;
         this.§0M§ = int.MAX_VALUE;
         this.§8!+§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§'v§)
         {
            _loc5_ = param2.§]5§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §>![§.§<d§ * 4 * §>![§.§%!k§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§0M§)
            {
               this.§0M§ = _loc7_;
            }
            if(_loc8_ > this.§8!+§)
            {
               this.§8!+§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§?v§)
         {
            if((_loc9_ = param2.§3$§(_loc3_)).x < this.§0M§)
            {
               this.§0M§ = _loc9_.x;
            }
            if(_loc9_.x > this.§8!+§)
            {
               this.§8!+§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §>![§.§<d§ * §>![§.§%!k§;
         this.§0M§ -= _loc4_;
         this.§8!+§ += _loc4_;
         this.§9e§ = §>![§.§<d§ * §>![§.§%!k§ / (this.§8!+§ - this.§0M§);
         this.§9e§ = Math.max(this.§9e§,§+f§.§0!>§);
         this.§,!Y§ = §!&§;
         this.§3"§ = this.§,!Y§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §[T§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§3"§ || param2 > this.§,!Y§ + 50 || param1 < this.§0M§ || param1 > this.§8!+§)
         {
            return true;
         }
         return false;
      }
   }
}
