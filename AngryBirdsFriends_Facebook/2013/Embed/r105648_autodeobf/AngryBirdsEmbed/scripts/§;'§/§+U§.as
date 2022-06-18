package §;'§
{
   import §1!A§.§4Z§;
   import §5B§.§6!>§;
   import §<!M§.§#"§;
   import §<!M§.§1!&§;
   
   public class §+U§
   {
      
      public static const §+!=§:Number = 50;
      
      public static var §0! §:Number = 0;
      
      public static const §[Q§:Number = 0.5;
      
      public static const §8I§:Number = 0;
       
      
      public var §+!?§:Number;
      
      public var §?Q§:Number;
      
      public var §6d§:Number;
      
      public var §-1§:Number;
      
      public var §5Q§:Number;
      
      public var §2I§:§?!D§;
      
      public function §+U§(param1:§?!D§, param2:§1!&§)
      {
         var _loc5_:§#"§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§4Z§ = null;
         super();
         this.§2I§ = param1;
         this.§+!?§ = int.MAX_VALUE;
         this.§?Q§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§<!8§)
         {
            _loc5_ = param2.§>M§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §?!D§.§?i§ * 4 * §?!D§.§@!I§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§+!?§)
            {
               this.§+!?§ = _loc7_;
            }
            if(_loc8_ > this.§?Q§)
            {
               this.§?Q§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§=!=§)
         {
            if((_loc9_ = param2.§,,§(_loc3_)).x < this.§+!?§)
            {
               this.§+!?§ = _loc9_.x;
            }
            if(_loc9_.x > this.§?Q§)
            {
               this.§?Q§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §?!D§.§?i§ * §?!D§.§@!I§;
         this.§+!?§ -= _loc4_;
         this.§?Q§ += _loc4_;
         this.§5Q§ = §?!D§.§?i§ * §?!D§.§@!I§ / (this.§?Q§ - this.§+!?§);
         this.§5Q§ = Math.max(this.§5Q§,§6!>§.§<"§);
         this.§-1§ = §8I§;
         this.§6d§ = this.§-1§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §'K§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§6d§ || param2 > this.§-1§ + 50 || param1 < this.§+!?§ || param1 > this.§?Q§)
         {
            return true;
         }
         return false;
      }
   }
}
