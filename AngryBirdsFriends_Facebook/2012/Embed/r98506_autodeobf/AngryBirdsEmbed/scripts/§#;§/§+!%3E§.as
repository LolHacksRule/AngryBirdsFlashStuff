package §#;§
{
   import §2!+§.§'!G§;
   import §8!G§.§![§;
   import §8!G§.§1w§;
   import §;!5§.§=y§;
   
   public class §+!>§
   {
      
      public static const §<J§:Number = 50;
      
      public static var §!-§:Number = 0;
      
      public static const §,e§:Number = 0.5;
      
      public static const §3$§:Number = 0;
       
      
      public var §2x§:Number;
      
      public var §1y§:Number;
      
      public var §`s§:Number;
      
      public var §in §:Number;
      
      public var §<!;§:Number;
      
      public var §3!3§:§4!8§;
      
      public function §+!>§(param1:§4!8§, param2:§1w§)
      {
         var _loc5_:§![§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§'!G§ = null;
         super();
         this.§3!3§ = param1;
         this.§2x§ = int.MAX_VALUE;
         this.§1y§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§?[§)
         {
            _loc5_ = param2.§%W§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §4!8§.§2R§ * 4 * §4!8§.§5+§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§2x§)
            {
               this.§2x§ = _loc7_;
            }
            if(_loc8_ > this.§1y§)
            {
               this.§1y§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§!j§)
         {
            if((_loc9_ = param2.§9!#§(_loc3_)).x < this.§2x§)
            {
               this.§2x§ = _loc9_.x;
            }
            if(_loc9_.x > this.§1y§)
            {
               this.§1y§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §4!8§.§2R§ * §4!8§.§5+§;
         this.§2x§ -= _loc4_;
         this.§1y§ += _loc4_;
         this.§<!;§ = §4!8§.§2R§ * §4!8§.§5+§ / (this.§1y§ - this.§2x§);
         this.§<!;§ = Math.max(this.§<!;§,§=y§.§ !K§);
         this.§in § = §3$§;
         this.§`s§ = this.§in § - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §8b§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§`s§ || param2 > this.§in § + 50 || param1 < this.§2x§ || param1 > this.§1y§)
         {
            return true;
         }
         return false;
      }
   }
}
