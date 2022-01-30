package §5!V§
{
   import §"v§.§4^§;
   import §"v§.§9"§;
   import §3"5§.§5!q§;
   import §=!#§.§`"=§;
   
   public class §?!b§
   {
      
      public static const §1!§:Number = 50;
      
      public static var §-_§:Number = 0;
      
      public static const §<m§:Number = 0.5;
      
      public static const §'"$§:Number = 0;
       
      
      public var §4"$§:Number;
      
      public var §>D§:Number;
      
      public var §!!2§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §-g§:Number;
      
      public var §9q§:§!w§;
      
      public function §?!b§(param1:§!w§, param2:§9"§)
      {
         var _loc5_:§4^§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§5!q§ = null;
         super();
         this.§9q§ = param1;
         this.§4"$§ = int.MAX_VALUE;
         this.§>D§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§[l§)
         {
            _loc5_ = param2.§5!0§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §!w§.§[!c§ * 4 * §!w§.§4!-§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§4"$§)
            {
               this.§4"$§ = _loc7_;
            }
            if(_loc8_ > this.§>D§)
            {
               this.§>D§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§'O§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§4"$§)
            {
               this.§4"$§ = _loc9_.x;
            }
            if(_loc9_.x > this.§>D§)
            {
               this.§>D§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §!w§.§[!c§ * §!w§.§4!-§;
         this.§4"$§ -= _loc4_;
         this.§>D§ += _loc4_;
         this.§-g§ = §!w§.§[!c§ * §!w§.§4!-§ / (this.§>D§ - this.§4"$§);
         this.§-g§ = Math.max(this.§-g§,§`"=§.§@a§);
         this.mBorderGround_B2 = §'"$§;
         this.§!!2§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §@h§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§!!2§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§4"$§ || param1 > this.§>D§)
         {
            return true;
         }
         return false;
      }
   }
}
