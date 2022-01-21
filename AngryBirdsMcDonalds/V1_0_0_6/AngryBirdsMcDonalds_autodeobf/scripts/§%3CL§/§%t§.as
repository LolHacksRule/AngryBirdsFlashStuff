package §<L§
{
   import §7_§.§>6§;
   import §7_§.§]![§;
   import §9§.§`!"§;
   import §[!_§.§8U§;
   
   public class §%t§
   {
      
      public static const §8@§:Number = 50;
      
      public static var §6s§:Number = 0;
      
      public static const §#!S§:Number = 0.5;
      
      public static const §!!j§:Number = 0;
       
      
      public var §!!J§:Number;
      
      public var §`;§:Number;
      
      public var §4b§:Number;
      
      public var §@Y§:Number;
      
      public var §-;§:Number;
      
      public var mLevelMain:§!!G§;
      
      public function §%t§(param1:§!!G§, param2:§]![§)
      {
         var _loc5_:§>6§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§`!"§ = null;
         super();
         this.mLevelMain = param1;
         this.§!!J§ = int.MAX_VALUE;
         this.§`;§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§0Z§)
         {
            _loc5_ = param2.§5`§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §!!G§.§6!c§ * 4 * §!!G§.§ !E§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§!!J§)
            {
               this.§!!J§ = _loc7_;
            }
            if(_loc8_ > this.§`;§)
            {
               this.§`;§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§8s§)
         {
            if((_loc9_ = param2.§8K§(_loc3_)).x < this.§!!J§)
            {
               this.§!!J§ = _loc9_.x;
            }
            if(_loc9_.x > this.§`;§)
            {
               this.§`;§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §!!G§.§6!c§ * §!!G§.§ !E§;
         this.§!!J§ -= _loc4_;
         this.§`;§ += _loc4_;
         this.§-;§ = §!!G§.§6!c§ * §!!G§.§ !E§ / (this.§`;§ - this.§!!J§);
         this.§-;§ = Math.max(this.§-;§,§8U§.§-K§);
         this.§@Y§ = §!!j§;
         this.§4b§ = this.§@Y§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §'!$§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§4b§ || param2 > this.§@Y§ + 50 || param1 < this.§!!J§ || param1 > this.§`;§)
         {
            return true;
         }
         return false;
      }
   }
}
