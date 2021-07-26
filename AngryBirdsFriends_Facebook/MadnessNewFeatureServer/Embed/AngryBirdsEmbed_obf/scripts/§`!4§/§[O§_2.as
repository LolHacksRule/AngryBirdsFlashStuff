package §`!4§
{
   import §%!E§.§-§;
   import §46§.§5!N§;
   import §?j§.§9?§;
   import §?j§.§`y§;
   
   public class §[O§
   {
      
      public static const §,!C§:Number = 50;
      
      public static var §>B§:Number = 0;
      
      public static const §-!@§:Number = 0.5;
      
      public static const §[!I§:Number = 0;
       
      
      public var §&!0§:Number;
      
      public var §2!5§:Number;
      
      public var §,w§:Number;
      
      public var §%!1§:Number;
      
      public var §7-§:Number;
      
      public var §#J§:§6l§;
      
      public function §[O§(param1:§6l§, param2:§9?§)
      {
         var _loc5_:§`y§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§5!N§ = null;
         super();
         this.§#J§ = param1;
         this.§&!0§ = int.MAX_VALUE;
         this.§2!5§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§3!E§)
         {
            _loc5_ = param2.§!X§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §6l§.§!!M§ * 4 * §6l§.§%!<§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§&!0§)
            {
               this.§&!0§ = _loc7_;
            }
            if(_loc8_ > this.§2!5§)
            {
               this.§2!5§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§`!5§)
         {
            if((_loc9_ = param2.§?!N§(_loc3_)).x < this.§&!0§)
            {
               this.§&!0§ = _loc9_.x;
            }
            if(_loc9_.x > this.§2!5§)
            {
               this.§2!5§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §6l§.§!!M§ * §6l§.§%!<§;
         this.§&!0§ -= _loc4_;
         this.§2!5§ += _loc4_;
         this.§7-§ = §6l§.§!!M§ * §6l§.§%!<§ / (this.§2!5§ - this.§&!0§);
         this.§7-§ = Math.max(this.§7-§,§-§.§#X§);
         this.§%!1§ = §[!I§;
         this.§,w§ = this.§%!1§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §^!N§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§,w§ || param2 > this.§%!1§ + 50 || param1 < this.§&!0§ || param1 > this.§2!5§)
         {
            return true;
         }
         return false;
      }
   }
}
