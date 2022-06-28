package §6A§
{
   import §1!-§.§5>§;
   import §1!-§.§@Z§;
   import §2k§.§`n§;
   import §^G§.§;u§;
   
   public class §"6§
   {
      
      public static const §-H§:Number = 50;
      
      public static var §6!?§:Number = 0;
      
      public static const § E§:Number = 0.5;
      
      public static const §6&§:Number = 0;
       
      
      public var §3!G§:Number;
      
      public var §7r§:Number;
      
      public var §=n§:Number;
      
      public var §,j§:Number;
      
      public var §<!§:Number;
      
      public var §?V§:§ !§;
      
      public function §"6§(param1:§ !§, param2:§@Z§)
      {
         var _loc5_:§5>§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§;u§ = null;
         super();
         this.§?V§ = param1;
         this.§3!G§ = int.MAX_VALUE;
         this.§7r§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§8e§)
         {
            _loc5_ = param2.§8=§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = § !§.§,!=§ * 4 * § !§.§`J§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§3!G§)
            {
               this.§3!G§ = _loc7_;
            }
            if(_loc8_ > this.§7r§)
            {
               this.§7r§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§-'§)
         {
            if((_loc9_ = param2.§1F§(_loc3_)).x < this.§3!G§)
            {
               this.§3!G§ = _loc9_.x;
            }
            if(_loc9_.x > this.§7r§)
            {
               this.§7r§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * § !§.§,!=§ * § !§.§`J§;
         this.§3!G§ -= _loc4_;
         this.§7r§ += _loc4_;
         this.§<!§ = § !§.§,!=§ * § !§.§`J§ / (this.§7r§ - this.§3!G§);
         this.§<!§ = Math.max(this.§<!§,§`n§.§[c§);
         this.§,j§ = §6&§;
         this.§=n§ = this.§,j§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §^2§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§=n§ || param2 > this.§,j§ + 50 || param1 < this.§3!G§ || param1 > this.§7r§)
         {
            return true;
         }
         return false;
      }
   }
}
