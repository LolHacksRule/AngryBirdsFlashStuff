package §8!`§
{
   import §"!P§.§8!N§;
   import §0H§.§0!&§;
   import §0H§.§1+§;
   import §@!?§.§9Z§;
   
   public class §5!C§
   {
      
      public static const §3%§:Number = 50;
      
      public static var §!"§:Number = 0;
      
      public static const §5N§:Number = 0.5;
      
      public static const § J§:Number = 0;
       
      
      public var §;!#§:Number;
      
      public var §3§:Number;
      
      public var §<N§:Number;
      
      public var §,!3§:Number;
      
      public var §#O§:Number;
      
      public var §'N§:§4J§;
      
      public function §5!C§(param1:§4J§, param2:§0!&§)
      {
         var _loc5_:§1+§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§8!N§ = null;
         super();
         this.§'N§ = param1;
         this.§;!#§ = int.MAX_VALUE;
         this.§3§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§0c§)
         {
            _loc5_ = param2.§=A§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §4J§.§7G§ * 4 * §4J§.§<W§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§;!#§)
            {
               this.§;!#§ = _loc7_;
            }
            if(_loc8_ > this.§3§)
            {
               this.§3§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§1c§)
         {
            if((_loc9_ = param2.§,S§(_loc3_)).x < this.§;!#§)
            {
               this.§;!#§ = _loc9_.x;
            }
            if(_loc9_.x > this.§3§)
            {
               this.§3§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §4J§.§7G§ * §4J§.§<W§;
         this.§;!#§ -= _loc4_;
         this.§3§ += _loc4_;
         this.§#O§ = §4J§.§7G§ * §4J§.§<W§ / (this.§3§ - this.§;!#§);
         this.§#O§ = Math.max(this.§#O§,§9Z§.§7!K§);
         this.§,!3§ = § J§;
         this.§<N§ = this.§,!3§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §'>§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§<N§ || param2 > this.§,!3§ + 50 || param1 < this.§;!#§ || param1 > this.§3§)
         {
            return true;
         }
         return false;
      }
   }
}
