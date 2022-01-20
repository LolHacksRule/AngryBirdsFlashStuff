package § !J§
{
   import §,4§.§0B§;
   import §,4§.§<f§;
   import §=!9§.§?4§;
   import §?!d§.§-E§;
   
   public class §0!!§
   {
      
      public static const § !%§:Number = 50;
      
      public static var §39§:Number = 0;
      
      public static const §-@§:Number = 0.5;
      
      public static const §8Y§:Number = 0;
       
      
      public var §&8§:Number;
      
      public var §!!K§:Number;
      
      public var §3U§:Number;
      
      public var §[! §:Number;
      
      public var §<U§:Number;
      
      public var mLevelMain:§%M§;
      
      public function §0!!§(param1:§%M§, param2:§0B§)
      {
         var _loc5_:§<f§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§?4§ = null;
         super();
         this.mLevelMain = param1;
         this.§&8§ = int.MAX_VALUE;
         this.§!!K§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§0?§)
         {
            _loc5_ = param2.§=+§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §%M§.§"t§ * 4 * §%M§.§'!Y§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§&8§)
            {
               this.§&8§ = _loc7_;
            }
            if(_loc8_ > this.§!!K§)
            {
               this.§!!K§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§%b§)
         {
            if((_loc9_ = param2.§=!&§(_loc3_)).x < this.§&8§)
            {
               this.§&8§ = _loc9_.x;
            }
            if(_loc9_.x > this.§!!K§)
            {
               this.§!!K§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §%M§.§"t§ * §%M§.§'!Y§;
         this.§&8§ -= _loc4_;
         this.§!!K§ += _loc4_;
         this.§<U§ = §%M§.§"t§ * §%M§.§'!Y§ / (this.§!!K§ - this.§&8§);
         this.§<U§ = Math.max(this.§<U§,§-E§.§,!h§);
         this.§[! § = §8Y§;
         this.§3U§ = this.§[! § - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §9h§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§3U§ || param2 > this.§[! § + 50 || param1 < this.§&8§ || param1 > this.§!!K§)
         {
            return true;
         }
         return false;
      }
   }
}
