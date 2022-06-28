package §3G§
{
   import §3c§.§^z§;
   import §=!B§.§<!-§;
   import §=!B§.§^!9§;
   import §`6§.§7=§;
   
   public class §-s§
   {
      
      public static const §5!!§:Number = 50;
      
      public static var §3s§:Number = 0;
      
      public static const §?!9§:Number = 0.5;
      
      public static const §;[§:Number = 0;
       
      
      public var §!D§:Number;
      
      public var §%3§:Number;
      
      public var §7F§:Number;
      
      public var §-F§:Number;
      
      public var §"!@§:Number;
      
      public var §33§:§!E§;
      
      public function §-s§(param1:§!E§, param2:§^!9§)
      {
         var _loc5_:§<!-§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§7=§ = null;
         super();
         this.§33§ = param1;
         this.§!D§ = int.MAX_VALUE;
         this.§%3§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§9u§)
         {
            _loc5_ = param2.§&W§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §!E§.§2C§ * 4 * §!E§.§#N§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§!D§)
            {
               this.§!D§ = _loc7_;
            }
            if(_loc8_ > this.§%3§)
            {
               this.§%3§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§4,§)
         {
            if((_loc9_ = param2.§6!"§(_loc3_)).x < this.§!D§)
            {
               this.§!D§ = _loc9_.x;
            }
            if(_loc9_.x > this.§%3§)
            {
               this.§%3§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §!E§.§2C§ * §!E§.§#N§;
         this.§!D§ -= _loc4_;
         this.§%3§ += _loc4_;
         this.§"!@§ = §!E§.§2C§ * §!E§.§#N§ / (this.§%3§ - this.§!D§);
         this.§"!@§ = Math.max(this.§"!@§,§^z§.§5?§);
         this.§-F§ = §;[§;
         this.§7F§ = this.§-F§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §+!H§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§7F§ || param2 > this.§-F§ + 50 || param1 < this.§!D§ || param1 > this.§%3§)
         {
            return true;
         }
         return false;
      }
   }
}
