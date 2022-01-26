package §%b§
{
   import §0C§.§+!Y§;
   import §0C§.§;!Q§;
   import §@I§.§"N§;
   import §[!Q§.§ true§;
   
   public class §,_§
   {
      
      public static const §9^§:Number = 50;
      
      public static var §6i§:Number = 0;
      
      public static const §'9§:Number = 0.5;
      
      public static const §4!@§:Number = 0;
       
      
      public var §1B§:Number;
      
      public var §^!H§:Number;
      
      public var §@2§:Number;
      
      public var §!!%§:Number;
      
      public var §+&§:Number;
      
      public var §]!8§:§0!Z§;
      
      public function §,_§(param1:§0!Z§, param2:§;!Q§)
      {
         var _loc5_:§+!Y§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§"N§ = null;
         super();
         this.§]!8§ = param1;
         this.§1B§ = int.MAX_VALUE;
         this.§^!H§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§3!=§)
         {
            _loc5_ = param2.§%3§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §0!Z§.§9M§ * 4 * §0!Z§.§+n§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§1B§)
            {
               this.§1B§ = _loc7_;
            }
            if(_loc8_ > this.§^!H§)
            {
               this.§^!H§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§8!9§)
         {
            if((_loc9_ = param2.§,`§(_loc3_)).x < this.§1B§)
            {
               this.§1B§ = _loc9_.x;
            }
            if(_loc9_.x > this.§^!H§)
            {
               this.§^!H§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §0!Z§.§9M§ * §0!Z§.§+n§;
         this.§1B§ -= _loc4_;
         this.§^!H§ += _loc4_;
         this.§+&§ = §0!Z§.§9M§ * §0!Z§.§+n§ / (this.§^!H§ - this.§1B§);
         this.§+&§ = Math.max(this.§+&§,§ true§.§;!E§);
         this.§!!%§ = §4!@§;
         this.§@2§ = this.§!!%§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §[!6§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§@2§ || param2 > this.§!!%§ + 50 || param1 < this.§1B§ || param1 > this.§^!H§)
         {
            return true;
         }
         return false;
      }
   }
}
