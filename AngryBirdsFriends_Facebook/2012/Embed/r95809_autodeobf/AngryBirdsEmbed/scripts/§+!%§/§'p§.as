package §+!%§
{
   import § `§.§3F§;
   import §<!@§.§+!-§;
   import §<!@§.§@T§;
   import §finally§.§>!$§;
   
   public class §'p§
   {
      
      public static const §1!F§:Number = 50;
      
      public static var §[F§:Number = 0;
      
      public static const §^"§:Number = 0.5;
      
      public static const §=j§:Number = 0;
       
      
      public var § !D§:Number;
      
      public var §";§:Number;
      
      public var §6!?§:Number;
      
      public var §'>§:Number;
      
      public var §4%§:Number;
      
      public var §]U§:§'!"§;
      
      public function §'p§(param1:§'!"§, param2:§+!-§)
      {
         var _loc5_:§@T§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§>!$§ = null;
         super();
         this.§]U§ = param1;
         this.§ !D§ = int.MAX_VALUE;
         this.§";§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§8M§)
         {
            _loc5_ = param2.§]5§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §'!"§.§5a§ * 4 * §'!"§.§%!8§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§ !D§)
            {
               this.§ !D§ = _loc7_;
            }
            if(_loc8_ > this.§";§)
            {
               this.§";§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§ E§)
         {
            if((_loc9_ = param2.§ #§(_loc3_)).x < this.§ !D§)
            {
               this.§ !D§ = _loc9_.x;
            }
            if(_loc9_.x > this.§";§)
            {
               this.§";§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §'!"§.§5a§ * §'!"§.§%!8§;
         this.§ !D§ -= _loc4_;
         this.§";§ += _loc4_;
         this.§4%§ = §'!"§.§5a§ * §'!"§.§%!8§ / (this.§";§ - this.§ !D§);
         this.§4%§ = Math.max(this.§4%§,§3F§.§1!B§);
         this.§'>§ = §=j§;
         this.§6!?§ = this.§'>§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §#1§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§6!?§ || param2 > this.§'>§ + 50 || param1 < this.§ !D§ || param1 > this.§";§)
         {
            return true;
         }
         return false;
      }
   }
}
