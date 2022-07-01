package §]A§
{
   import §!P§.§2"4§;
   import §!P§.§?O§;
   import §-6§.§%5§;
   import §7!<§.§4r§;
   
   public class §^!-§
   {
      
      public static const §6!;§:Number = 50;
      
      public static const §-"$§:Number = 0;
       
      
      protected var §`"§:Number;
      
      protected var §?!I§:Number;
      
      protected var §0!S§:Number;
      
      protected var §7!$§:Number;
      
      public var §`=§:Number;
      
      public var §+"1§:§[d§;
      
      public function §^!-§(param1:§[d§, param2:§2"4§)
      {
         var _loc5_:§?O§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§4r§ = null;
         super();
         this.§+"1§ = param1;
         this.§`"§ = int.MAX_VALUE;
         this.§?!I§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§?!+§)
         {
            _loc5_ = param2.§#!>§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §[d§.§1!B§ * 4 * §[d§.§]!U§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§`"§)
            {
               this.§`"§ = _loc7_;
            }
            if(_loc8_ > this.§?!I§)
            {
               this.§?!I§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§`"§)
            {
               this.§`"§ = _loc9_.x;
            }
            if(_loc9_.x > this.§?!I§)
            {
               this.§?!I§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §[d§.§1!B§ * §[d§.§]!U§;
         this.§`"§ -= _loc4_;
         this.§?!I§ += _loc4_;
         this.§`=§ = §[d§.§1!B§ * §[d§.§]!U§ / (this.§?!I§ - this.§`"§);
         this.§`=§ = Math.max(this.§`=§,§%5§.§1!f§);
         this.§0!S§ = param2.slingshotY - 160;
         this.§7!$§ = param2.slingshotY + 160;
      }
      
      public function get §#!u§() : Number
      {
         return this.§`"§;
      }
      
      public function get §7I§() : Number
      {
         return this.§?!I§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §&G§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§0!S§ || param2 > this.§7!$§ || param1 < this.§`"§ || param1 > this.§?!I§)
         {
            return true;
         }
         return false;
      }
   }
}
