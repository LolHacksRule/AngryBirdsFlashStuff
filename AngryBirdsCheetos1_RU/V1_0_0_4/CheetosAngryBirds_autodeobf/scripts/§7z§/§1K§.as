package §7z§
{
   import §#!H§.§7V§;
   import §+!U§.§]q§;
   import §=q§.§+! §;
   import §=q§.§?X§;
   
   public class §1K§
   {
      
      public static const §<Z§:Number = 50;
      
      public static var §='§:Number = 0;
      
      public static const §3!T§:Number = 0.5;
      
      public static const §`N§:Number = 0;
       
      
      public var §^!K§:Number;
      
      public var §7B§:Number;
      
      public var §"-§:Number;
      
      public var §-q§:Number;
      
      public var §%T§:Number;
      
      public var §^'§:§]!-§;
      
      public function §1K§(param1:§]!-§, param2:§?X§)
      {
         var _loc5_:§+! § = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§]q§ = null;
         super();
         this.§^'§ = param1;
         this.§^!K§ = int.MAX_VALUE;
         this.§7B§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§9"§)
         {
            _loc5_ = param2.§@!U§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §]!-§.§&!1§ * 4 * §]!-§.§>C§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§^!K§)
            {
               this.§^!K§ = _loc7_;
            }
            if(_loc8_ > this.§7B§)
            {
               this.§7B§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§`_§)
         {
            if((_loc9_ = param2.§7X§(_loc3_)).x < this.§^!K§)
            {
               this.§^!K§ = _loc9_.x;
            }
            if(_loc9_.x > this.§7B§)
            {
               this.§7B§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §]!-§.§&!1§ * §]!-§.§>C§;
         this.§^!K§ -= _loc4_;
         this.§7B§ += _loc4_;
         this.§%T§ = §]!-§.§&!1§ * §]!-§.§>C§ / (this.§7B§ - this.§^!K§);
         this.§%T§ = Math.max(this.§%T§,§7V§.§#p§);
         this.§-q§ = §`N§;
         this.§"-§ = this.§-q§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §%!§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§"-§ || param2 > this.§-q§ + 50 || param1 < this.§^!K§ || param1 > this.§7B§)
         {
            return true;
         }
         return false;
      }
   }
}
