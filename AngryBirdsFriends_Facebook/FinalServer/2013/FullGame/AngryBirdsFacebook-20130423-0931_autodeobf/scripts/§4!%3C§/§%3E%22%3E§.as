package §4!<§
{
   import §!!=§.§"l§;
   import §9!n§.§0"T§;
   import §9!n§.§1S§;
   import §super§.§>y§;
   
   public class §>">§
   {
      
      public static const § m§:Number = 50;
      
      public static var §]"V§:Number = 0;
      
      public static const §@!0§:Number = 0.5;
      
      public static const §5!X§:Number = 0;
       
      
      public var §;'§:Number;
      
      public var §;!4§:Number;
      
      public var §0!f§:Number;
      
      public var §]2§:Number;
      
      public var §,!1§:Number;
      
      public var mLevelMain:§'!S§;
      
      public function §>">§(param1:§'!S§, param2:§0"T§)
      {
         var _loc5_:§1S§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§>y§ = null;
         super();
         this.mLevelMain = param1;
         this.§;'§ = int.MAX_VALUE;
         this.§;!4§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§ H§)
         {
            _loc5_ = param2.§8!D§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §'!S§.§<!@§ * 4 * §'!S§.§2"<§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§;'§)
            {
               this.§;'§ = _loc7_;
            }
            if(_loc8_ > this.§;!4§)
            {
               this.§;!4§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§-;§)
         {
            if((_loc9_ = param2.§,!§(_loc3_)).x < this.§;'§)
            {
               this.§;'§ = _loc9_.x;
            }
            if(_loc9_.x > this.§;!4§)
            {
               this.§;!4§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §'!S§.§<!@§ * §'!S§.§2"<§;
         this.§;'§ -= _loc4_;
         this.§;!4§ += _loc4_;
         this.§,!1§ = §'!S§.§<!@§ * §'!S§.§2"<§ / (this.§;!4§ - this.§;'§);
         this.§,!1§ = Math.max(this.§,!1§,§"l§.§[!M§);
         this.§]2§ = §5!X§;
         this.§0!f§ = this.§]2§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §#D§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§0!f§ || param2 > this.§]2§ + 50 || param1 < this.§;'§ || param1 > this.§;!4§)
         {
            return true;
         }
         return false;
      }
   }
}
