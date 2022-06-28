package §_-TG§
{
   import §_-Ga§.§_-2w§;
   import §_-Ga§.§_-bm§;
   import §_-JK§.§_-S2§;
   import §_-by§.§_-CE§;
   
   public class §_-pD§
   {
      
      public static const §_-S7§:Number = 50;
      
      public static var §_-0-M§:Number = 0;
      
      public static const §_-UG§:Number = 0.5;
      
      public static const §_-0Do§:Number = 0;
       
      
      public var §_-07b§:Number;
      
      public var §_-01a§:Number;
      
      public var §_-4R§:Number;
      
      public var §_-GV§:Number;
      
      public var §_-O2§:Number;
      
      public var §_-6A§:§_-00u§;
      
      public function §_-pD§(param1:§_-00u§, param2:§_-bm§)
      {
         var _loc5_:§_-2w§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§_-CE§ = null;
         super();
         this.§_-6A§ = param1;
         this.§_-07b§ = int.MAX_VALUE;
         this.§_-01a§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§_-aj§)
         {
            _loc5_ = param2.§_-jQ§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §_-00u§.§_-F1§ * 4 * §_-00u§.§_-lY§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-07b§)
            {
               this.§_-07b§ = _loc7_;
            }
            if(_loc8_ > this.§_-01a§)
            {
               this.§_-01a§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§_-uM§)
         {
            if((_loc9_ = param2.§_-086§(_loc3_)).x < this.§_-07b§)
            {
               this.§_-07b§ = _loc9_.x;
            }
            if(_loc9_.x > this.§_-01a§)
            {
               this.§_-01a§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §_-00u§.§_-F1§ * §_-00u§.§_-lY§;
         this.§_-07b§ -= _loc4_;
         this.§_-01a§ += _loc4_;
         this.§_-O2§ = §_-00u§.§_-F1§ * §_-00u§.§_-lY§ / (this.§_-01a§ - this.§_-07b§);
         this.§_-O2§ = Math.max(this.§_-O2§,§_-S2§.§_-7-§);
         this.§_-GV§ = §_-0Do§;
         this.§_-4R§ = this.§_-GV§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-h3§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-4R§ || param2 > this.§_-GV§ + 50 || param1 < this.§_-07b§ || param1 > this.§_-01a§)
         {
            return true;
         }
         return false;
      }
   }
}
