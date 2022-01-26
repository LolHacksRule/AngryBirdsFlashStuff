package §4A§
{
   import §-X§.§5!F§;
   import §-X§.§8m§;
   import §1q§.§2W§;
   import §2o§.§2!Z§;
   
   public class §0!!§
   {
      
      public static const §9M§:Number = 50;
      
      public static var §0![§:Number = 0;
      
      public static const §2!2§:Number = 0.5;
      
      public static const §]G§:Number = 0;
       
      
      public var §!O§:Number;
      
      public var §`i§:Number;
      
      public var § !&§:Number;
      
      public var §?!K§:Number;
      
      public var §`z§:Number;
      
      public var mLevelMain:§&_§;
      
      public function §0!!§(param1:§&_§, param2:§5!F§)
      {
         var _loc5_:§8m§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§2!Z§ = null;
         super();
         this.mLevelMain = param1;
         this.§!O§ = int.MAX_VALUE;
         this.§`i§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§-H§)
         {
            _loc5_ = param2.§8`§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §&_§.§ !>§ * 4 * §&_§.§5-§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§!O§)
            {
               this.§!O§ = _loc7_;
            }
            if(_loc8_ > this.§`i§)
            {
               this.§`i§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§0V§)
         {
            if((_loc9_ = param2.§2!-§(_loc3_)).x < this.§!O§)
            {
               this.§!O§ = _loc9_.x;
            }
            if(_loc9_.x > this.§`i§)
            {
               this.§`i§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §&_§.§ !>§ * §&_§.§5-§;
         this.§!O§ -= _loc4_;
         this.§`i§ += _loc4_;
         this.§`z§ = §&_§.§ !>§ * §&_§.§5-§ / (this.§`i§ - this.§!O§);
         this.§`z§ = Math.max(this.§`z§,§2W§.§=I§);
         this.§?!K§ = §]G§;
         this.§ !&§ = this.§?!K§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §%6§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§ !&§ || param2 > this.§?!K§ + 50 || param1 < this.§!O§ || param1 > this.§`i§)
         {
            return true;
         }
         return false;
      }
   }
}
