package §+D§
{
   import §=X§.§"!6§;
   import §=X§.§#!6§;
   import §[$§.§=K§;
   import §[d§.§]<§;
   
   public class §8T§
   {
      
      public static const §^$§:Number = 50;
      
      public static var §?C§:Number = 0;
      
      public static const §4C§:Number = 0.5;
      
      public static const §#v§:Number = 0;
       
      
      public var §4!;§:Number;
      
      public var §&s§:Number;
      
      public var §5!a§:Number;
      
      public var §6E§:Number;
      
      public var §4!1§:Number;
      
      public var §^!4§:§5!P§;
      
      public function §8T§(param1:§5!P§, param2:§"!6§)
      {
         var _loc5_:§#!6§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§]<§ = null;
         super();
         this.§^!4§ = param1;
         this.§4!;§ = int.MAX_VALUE;
         this.§&s§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§;!#§)
         {
            _loc5_ = param2.§@w§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §5!P§.§=!F§ * 4 * §5!P§.§>M§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§4!;§)
            {
               this.§4!;§ = _loc7_;
            }
            if(_loc8_ > this.§&s§)
            {
               this.§&s§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§;!a§)
         {
            if((_loc9_ = param2.§,!+§(_loc3_)).x < this.§4!;§)
            {
               this.§4!;§ = _loc9_.x;
            }
            if(_loc9_.x > this.§&s§)
            {
               this.§&s§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §5!P§.§=!F§ * §5!P§.§>M§;
         this.§4!;§ -= _loc4_;
         this.§&s§ += _loc4_;
         this.§4!1§ = §5!P§.§=!F§ * §5!P§.§>M§ / (this.§&s§ - this.§4!;§);
         this.§4!1§ = Math.max(this.§4!1§,§=K§.§?`§);
         this.§6E§ = §#v§;
         this.§5!a§ = this.§6E§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §]@§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§5!a§ || param2 > this.§6E§ + 50 || param1 < this.§4!;§ || param1 > this.§&s§)
         {
            return true;
         }
         return false;
      }
   }
}
