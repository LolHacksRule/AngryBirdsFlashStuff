package §=b§
{
   import §1'§.§]"!§;
   import §6!&§.§0!b§;
   import §6!&§.§2!O§;
   import §@!N§.§2i§;
   
   public class §3!_§
   {
      
      public static const §%h§:Number = 50;
      
      public static var §9I§:Number = 0;
      
      public static const §>m§:Number = 0.5;
      
      public static const §"!W§:Number = 0;
       
      
      public var §8%§:Number;
      
      public var §-!Q§:Number;
      
      public var §%!"§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §`"-§:Number;
      
      public var §;!x§:§-!K§;
      
      public function §3!_§(param1:§-!K§, param2:§0!b§)
      {
         var _loc5_:§2!O§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§]"!§ = null;
         super();
         this.§;!x§ = param1;
         this.§8%§ = int.MAX_VALUE;
         this.§-!Q§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§?!%§)
         {
            _loc5_ = param2.§8!x§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §-!K§.§"C§ * 4 * §-!K§.§"!C§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§8%§)
            {
               this.§8%§ = _loc7_;
            }
            if(_loc8_ > this.§-!Q§)
            {
               this.§-!Q§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§%!2§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§8%§)
            {
               this.§8%§ = _loc9_.x;
            }
            if(_loc9_.x > this.§-!Q§)
            {
               this.§-!Q§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §-!K§.§"C§ * §-!K§.§"!C§;
         this.§8%§ -= _loc4_;
         this.§-!Q§ += _loc4_;
         this.§`"-§ = §-!K§.§"C§ * §-!K§.§"!C§ / (this.§-!Q§ - this.§8%§);
         this.§`"-§ = Math.max(this.§`"-§,§2i§.§]Z§);
         this.mBorderGround_B2 = §"!W§;
         this.§%!"§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §9=§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§%!"§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§8%§ || param1 > this.§-!Q§)
         {
            return true;
         }
         return false;
      }
   }
}
