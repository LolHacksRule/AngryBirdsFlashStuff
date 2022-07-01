package §<!<§
{
   import §-!0§.§!!s§;
   import §-!0§.§2! §;
   import §@_§.§[!k§;
   import §`a§.§ !U§;
   
   public class §8!t§
   {
      
      public static const §-!-§:Number = 50;
      
      public static var §5-§:Number = 0;
      
      public static const § S§:Number = 0.5;
      
      public static const §1!G§:Number = 0;
       
      
      public var §'U§:Number;
      
      public var §<`§:Number;
      
      public var §=!,§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §4w§:Number;
      
      public var §-n§:§7E§;
      
      public function §8!t§(param1:§7E§, param2:§2! §)
      {
         var _loc5_:§!!s§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§[!k§ = null;
         super();
         this.§-n§ = param1;
         this.§'U§ = int.MAX_VALUE;
         this.§<`§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§"T§)
         {
            _loc5_ = param2.getCamera(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §7E§.§#!U§ * 4 * §7E§.§8!'§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§'U§)
            {
               this.§'U§ = _loc7_;
            }
            if(_loc8_ > this.§<`§)
            {
               this.§<`§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§0'§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§'U§)
            {
               this.§'U§ = _loc9_.x;
            }
            if(_loc9_.x > this.§<`§)
            {
               this.§<`§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §7E§.§#!U§ * §7E§.§8!'§;
         this.§'U§ -= _loc4_;
         this.§<`§ += _loc4_;
         this.§4w§ = §7E§.§#!U§ * §7E§.§8!'§ / (this.§<`§ - this.§'U§);
         this.§4w§ = Math.max(this.§4w§,§ !U§.§-`§);
         this.mBorderGround_B2 = §1!G§;
         this.§=!,§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §&!L§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§=!,§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§'U§ || param1 > this.§<`§)
         {
            return true;
         }
         return false;
      }
   }
}
