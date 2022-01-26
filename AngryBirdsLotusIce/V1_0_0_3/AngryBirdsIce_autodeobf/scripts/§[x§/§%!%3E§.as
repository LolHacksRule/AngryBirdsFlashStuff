package §[x§
{
   import §3"§.§8+§;
   import §3"§.§?!&§;
   import §5!@§.§=!3§;
   import §[K§.§2!1§;
   
   public class §%!>§
   {
      
      public static const § if§:Number = 50;
      
      public static var §]"§:Number = 0;
      
      public static const §&!;§:Number = 0.5;
      
      public static const §?'§:Number = 0;
       
      
      public var §<!7§:Number;
      
      public var §-S§:Number;
      
      public var §<?§:Number;
      
      public var §&p§:Number;
      
      public var §,!B§:Number;
      
      public var §1! §:§2^§;
      
      public function §%!>§(param1:§2^§, param2:§8+§)
      {
         var _loc5_:§?!&§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§=!3§ = null;
         super();
         this.§1! § = param1;
         this.§<!7§ = int.MAX_VALUE;
         this.§-S§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§6k§)
         {
            _loc5_ = param2.§;m§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §2^§.§!s§ * 4 * §2^§.§,]§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§<!7§)
            {
               this.§<!7§ = _loc7_;
            }
            if(_loc8_ > this.§-S§)
            {
               this.§-S§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§?c§)
         {
            if((_loc9_ = param2.§!§(_loc3_)).x < this.§<!7§)
            {
               this.§<!7§ = _loc9_.x;
            }
            if(_loc9_.x > this.§-S§)
            {
               this.§-S§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §2^§.§!s§ * §2^§.§,]§;
         this.§<!7§ -= _loc4_;
         this.§-S§ += _loc4_;
         this.§,!B§ = §2^§.§!s§ * §2^§.§,]§ / (this.§-S§ - this.§<!7§);
         this.§,!B§ = Math.max(this.§,!B§,§2!1§.§6Z§);
         this.§&p§ = §?'§;
         this.§<?§ = this.§&p§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §'r§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§<?§ || param2 > this.§&p§ + 50 || param1 < this.§<!7§ || param1 > this.§-S§)
         {
            return true;
         }
         return false;
      }
   }
}
