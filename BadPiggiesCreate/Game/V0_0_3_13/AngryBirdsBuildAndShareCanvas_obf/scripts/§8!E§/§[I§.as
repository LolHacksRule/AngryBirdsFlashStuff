package §8!E§
{
   import §0I§.§continue§;
   import §0s§.§8!e§;
   import §0s§.§];§;
   import §2b§.§"" §;
   
   public class §[I§
   {
      
      public static const §7!+§:Number = 50;
      
      public static var §6l§:Number = 0;
      
      public static const §<8§:Number = 0.5;
      
      public static const § !K§:Number = 0;
       
      
      public var §""9§:Number;
      
      public var §3!0§:Number;
      
      public var §"C§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §'"=§:Number;
      
      public var §7!;§:§?!X§;
      
      public function §[I§(param1:§?!X§, param2:§];§)
      {
         var _loc5_:§8!e§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§continue§ = null;
         super();
         this.§7!;§ = param1;
         this.§""9§ = int.MAX_VALUE;
         this.§3!0§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§0!x§)
         {
            _loc5_ = param2.§1!B§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §?!X§.§4J§ * 4 * §?!X§.§57§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§""9§)
            {
               this.§""9§ = _loc7_;
            }
            if(_loc8_ > this.§3!0§)
            {
               this.§3!0§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§1"8§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§""9§)
            {
               this.§""9§ = _loc9_.x;
            }
            if(_loc9_.x > this.§3!0§)
            {
               this.§3!0§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §?!X§.§4J§ * §?!X§.§57§;
         this.§""9§ -= _loc4_;
         this.§3!0§ += _loc4_;
         this.§'"=§ = §?!X§.§4J§ * §?!X§.§57§ / (this.§3!0§ - this.§""9§);
         this.§'"=§ = Math.max(this.§'"=§,§"" §.§%j§);
         this.mBorderGround_B2 = § !K§;
         this.§"C§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §@",§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§"C§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§""9§ || param1 > this.§3!0§)
         {
            return true;
         }
         return false;
      }
   }
}
