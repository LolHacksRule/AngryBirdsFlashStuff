package §4!-§
{
   import §&K§.§&!A§;
   import §1E§.§5T§;
   import §1E§.§`_§;
   import §6h§.§?!I§;
   
   public class §4`§
   {
      
      public static const §@!#§:Number = 50;
      
      public static var §'a§:Number = 0;
      
      public static const § `§:Number = 0.5;
      
      public static const §@N§:Number = 0;
       
      
      public var §8V§:Number;
      
      public var §7T§:Number;
      
      public var §1!8§:Number;
      
      public var §,!2§:Number;
      
      public var §[§:Number;
      
      public var §'!8§:§%o§;
      
      public function §4`§(param1:§%o§, param2:§5T§)
      {
         var _loc5_:§`_§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§&!A§ = null;
         super();
         this.§'!8§ = param1;
         this.§8V§ = int.MAX_VALUE;
         this.§7T§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§8!!§)
         {
            _loc5_ = param2.§-Q§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §%o§.§3V§ * 4 * §%o§.§]!?§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§8V§)
            {
               this.§8V§ = _loc7_;
            }
            if(_loc8_ > this.§7T§)
            {
               this.§7T§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§`7§)
         {
            if((_loc9_ = param2.§1!1§(_loc3_)).x < this.§8V§)
            {
               this.§8V§ = _loc9_.x;
            }
            if(_loc9_.x > this.§7T§)
            {
               this.§7T§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §%o§.§3V§ * §%o§.§]!?§;
         this.§8V§ -= _loc4_;
         this.§7T§ += _loc4_;
         this.§[§ = §%o§.§3V§ * §%o§.§]!?§ / (this.§7T§ - this.§8V§);
         this.§[§ = Math.max(this.§[§,§?!I§.§&!>§);
         this.§,!2§ = §@N§;
         this.§1!8§ = this.§,!2§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §-+§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§1!8§ || param2 > this.§,!2§ + 50 || param1 < this.§8V§ || param1 > this.§7T§)
         {
            return true;
         }
         return false;
      }
   }
}
