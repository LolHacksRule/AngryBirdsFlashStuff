package §5!?§
{
   import §!!a§.§8=§;
   import §!!a§.§]>§;
   import §,N§.§@! §;
   import §3!W§.§5!Q§;
   
   public class §2!K§
   {
      
      public static const §='§:Number = 50;
      
      public static var §1!Y§:Number = 0;
      
      public static const §-K§:Number = 0.5;
      
      public static const §55§:Number = 0;
       
      
      public var §]!U§:Number;
      
      public var §+!d§:Number;
      
      public var §@!W§:Number;
      
      public var §09§:Number;
      
      public var §7!U§:Number;
      
      public var mLevelMain:§>"§;
      
      public function §2!K§(param1:§>"§, param2:§8=§)
      {
         var _loc5_:§]>§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§@! § = null;
         super();
         this.mLevelMain = param1;
         this.§]!U§ = int.MAX_VALUE;
         this.§+!d§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§=j§)
         {
            _loc5_ = param2.§=![§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §>"§.§8!H§ * 4 * §>"§.§'!S§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§]!U§)
            {
               this.§]!U§ = _loc7_;
            }
            if(_loc8_ > this.§+!d§)
            {
               this.§+!d§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§+!^§)
         {
            if((_loc9_ = param2.§2T§(_loc3_)).x < this.§]!U§)
            {
               this.§]!U§ = _loc9_.x;
            }
            if(_loc9_.x > this.§+!d§)
            {
               this.§+!d§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §>"§.§8!H§ * §>"§.§'!S§;
         this.§]!U§ -= _loc4_;
         this.§+!d§ += _loc4_;
         this.§7!U§ = §>"§.§8!H§ * §>"§.§'!S§ / (this.§+!d§ - this.§]!U§);
         this.§7!U§ = Math.max(this.§7!U§,§5!Q§.§&!_§);
         this.§09§ = §55§;
         this.§@!W§ = this.§09§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §!!E§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§@!W§ || param2 > this.§09§ + 50 || param1 < this.§]!U§ || param1 > this.§+!d§)
         {
            return true;
         }
         return false;
      }
   }
}
