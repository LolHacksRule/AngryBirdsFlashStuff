package §0I§
{
   import §'<§.§;r§;
   import §'<§.§@!R§;
   import §,"%§.§?r§;
   import §>j§.§`y§;
   
   public class §0"1§
   {
      
      public static const §0C§:Number = 50;
      
      public static const §1w§:Number = 0;
       
      
      protected var §4!L§:Number;
      
      protected var §^j§:Number;
      
      protected var §%k§:Number;
      
      protected var §"!g§:Number;
      
      public var §8!j§:Number;
      
      public var §-!r§:§!!p§;
      
      public function §0"1§(param1:§!!p§, param2:§;r§)
      {
         var _loc5_:§@!R§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§?r§ = null;
         super();
         this.§-!r§ = param1;
         this.§4!L§ = int.MAX_VALUE;
         this.§^j§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§?h§)
         {
            _loc5_ = param2.§0g§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §!!p§.§+'§ * 4 * §!!p§.§6L§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§4!L§)
            {
               this.§4!L§ = _loc7_;
            }
            if(_loc8_ > this.§^j§)
            {
               this.§^j§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§4!L§)
            {
               this.§4!L§ = _loc9_.x;
            }
            if(_loc9_.x > this.§^j§)
            {
               this.§^j§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §!!p§.§+'§ * §!!p§.§6L§;
         this.§4!L§ -= _loc4_;
         this.§^j§ += _loc4_;
         this.§8!j§ = §!!p§.§+'§ * §!!p§.§6L§ / (this.§^j§ - this.§4!L§);
         this.§8!j§ = Math.max(this.§8!j§,§`y§.§;,§);
         this.§%k§ = param2.slingshotY - 160;
         this.§"!g§ = param2.slingshotY + 160;
      }
      
      public function get §`!#§() : Number
      {
         return this.§4!L§;
      }
      
      public function get §!G§() : Number
      {
         return this.§^j§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function § for§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§%k§ || param2 > this.§"!g§ || param1 < this.§4!L§ || param1 > this.§^j§)
         {
            return true;
         }
         return false;
      }
   }
}
