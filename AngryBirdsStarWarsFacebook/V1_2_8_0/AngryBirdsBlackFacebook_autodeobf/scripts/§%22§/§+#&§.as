package §"§#0
{
   import §7§.§8[§;
   import §=G§.§9v§;
   import §null §.§ case§;
   import §null §.§>#-§;
   
   public class §+#&§
   {
      
      public static const §!"U§:Number = 50;
      
      public static const § T§:Number = 0;
       
      
      protected var §5!A§:Number;
      
      protected var §%"Z§:Number;
      
      protected var §!!X§:Number;
      
      protected var §%!X§:Number;
      
      public var §=#5§:Number;
      
      public var §+!E§:§;!E§;
      
      public function §+#&§(param1:§;!E§, param2:§>#-§)
      {
         var _loc5_:§ case§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§9v§ = null;
         super();
         this.§+!E§ = param1;
         this.§5!A§ = int.MAX_VALUE;
         this.§%"Z§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§[!%§)
         {
            _loc5_ = param2.§7"d§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §;!E§.§;#&§ * 4 * §;!E§.§0"?§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§5!A§)
            {
               this.§5!A§ = _loc7_;
            }
            if(_loc8_ > this.§%"Z§)
            {
               this.§%"Z§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§5!A§)
            {
               this.§5!A§ = _loc9_.x;
            }
            if(_loc9_.x > this.§%"Z§)
            {
               this.§%"Z§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §;!E§.§;#&§ * §;!E§.§0"?§;
         this.§5!A§ -= _loc4_;
         this.§%"Z§ += _loc4_;
         this.§=#5§ = §;!E§.§;#&§ * §;!E§.§0"?§ / (this.§%"Z§ - this.§5!A§);
         this.§=#5§ = Math.max(this.§=#5§,§8[§.§]!S§);
         this.§!!X§ = param2.slingshotY - 160;
         this.§%!X§ = param2.slingshotY + 160;
      }
      
      public function get § !<§() : Number
      {
         return this.§5!A§;
      }
      
      public function get §&"g§() : Number
      {
         return this.§%"Z§;
      }
      
      public function get §`!T§() : Number
      {
         return this.§!!X§;
      }
      
      public function get §70§() : Number
      {
         return this.§%!X§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §+"b§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§!!X§ || param2 > this.§%!X§ || param1 < this.§5!A§ || param1 > this.§%"Z§)
         {
            return true;
         }
         return false;
      }
   }
}
