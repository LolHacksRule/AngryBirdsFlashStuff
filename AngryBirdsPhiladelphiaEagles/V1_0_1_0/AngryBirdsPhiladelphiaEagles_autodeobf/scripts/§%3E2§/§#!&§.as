package §>2§
{
   import §5=§.§8G§;
   import §5=§.§@!§;
   import §^I§.§7Z§;
   import §^Q§.§<a§;
   
   public class §#!&§
   {
      
      public static const §]s§:Number = 50;
      
      public static var §8t§:Number = 0;
      
      public static const §`2§:Number = 0.5;
      
      public static const §`!5§:Number = 0;
       
      
      public var §8!<§:Number;
      
      public var §&G§:Number;
      
      public var § c§:Number;
      
      public var § h§:Number;
      
      public var §]@§:Number;
      
      public var §@k§:§4h§;
      
      public function §#!&§(param1:§4h§, param2:§8G§)
      {
         var _loc5_:§@!§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§7Z§ = null;
         super();
         this.§@k§ = param1;
         this.§8!<§ = int.MAX_VALUE;
         this.§&G§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§8b§)
         {
            _loc5_ = param2.§^w§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §4h§.§^v§ * 4 * §4h§.§-9§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§8!<§)
            {
               this.§8!<§ = _loc7_;
            }
            if(_loc8_ > this.§&G§)
            {
               this.§&G§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§^F§)
         {
            if((_loc9_ = param2.§8!F§(_loc3_)).x < this.§8!<§)
            {
               this.§8!<§ = _loc9_.x;
            }
            if(_loc9_.x > this.§&G§)
            {
               this.§&G§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §4h§.§^v§ * §4h§.§-9§;
         this.§8!<§ -= _loc4_;
         this.§&G§ += _loc4_;
         this.§]@§ = §4h§.§^v§ * §4h§.§-9§ / (this.§&G§ - this.§8!<§);
         this.§]@§ = Math.max(this.§]@§,§<a§.§0!+§);
         this.§ h§ = §`!5§;
         this.§ c§ = this.§ h§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §#!@§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§ c§ || param2 > this.§ h§ + 50 || param1 < this.§8!<§ || param1 > this.§&G§)
         {
            return true;
         }
         return false;
      }
   }
}
