package §&F§
{
   import §%!^§.§"!7§;
   import §%!^§.§0!L§;
   import §%i§.§%!_§;
   import §&!'§.§'!f§;
   
   public class §4]§
   {
      
      public static const §"!A§:Number = 50;
      
      public static var §=>§:Number = 0;
      
      public static const §2T§:Number = 0.5;
      
      public static const §`1§:Number = 0;
       
      
      public var §`!c§:Number;
      
      public var §5b§:Number;
      
      public var §#!0§:Number;
      
      public var §]![§:Number;
      
      public var §%C§:Number;
      
      public var mLevelMain:§>!2§;
      
      public function §4]§(param1:§>!2§, param2:§"!7§)
      {
         var _loc5_:§0!L§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§%!_§ = null;
         super();
         this.mLevelMain = param1;
         this.§`!c§ = int.MAX_VALUE;
         this.§5b§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§]!U§)
         {
            _loc5_ = param2.§=!]§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §>!2§.§1M§ * 4 * §>!2§.§9d§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§`!c§)
            {
               this.§`!c§ = _loc7_;
            }
            if(_loc8_ > this.§5b§)
            {
               this.§5b§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§2![§)
         {
            if((_loc9_ = param2.§#z§(_loc3_)).x < this.§`!c§)
            {
               this.§`!c§ = _loc9_.x;
            }
            if(_loc9_.x > this.§5b§)
            {
               this.§5b§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §>!2§.§1M§ * §>!2§.§9d§;
         this.§`!c§ -= _loc4_;
         this.§5b§ += _loc4_;
         this.§%C§ = §>!2§.§1M§ * §>!2§.§9d§ / (this.§5b§ - this.§`!c§);
         this.§%C§ = Math.max(this.§%C§,§'!f§.§5!I§);
         this.§]![§ = §`1§;
         this.§#!0§ = this.§]![§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §79§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§#!0§ || param2 > this.§]![§ + 50 || param1 < this.§`!c§ || param1 > this.§5b§)
         {
            return true;
         }
         return false;
      }
   }
}
