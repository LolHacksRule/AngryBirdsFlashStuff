package §3!@§
{
   import §"$§.§ !,§;
   import §^U§.§3$§;
   import §finally§.§@z§;
   import §finally§.§`!h§;
   
   public class §?4§
   {
      
      public static const §;L§:Number = 50;
      
      public static var §`!i§:Number = 0;
      
      public static const §'8§:Number = 0.5;
      
      public static const §&M§:Number = 0;
       
      
      public var §>!E§:Number;
      
      public var §7! §:Number;
      
      public var §4!>§:Number;
      
      public var §"Z§:Number;
      
      public var §?!7§:Number;
      
      public var mLevelMain:§ s§;
      
      public function §?4§(param1:§ s§, param2:§@z§)
      {
         var _loc5_:§`!h§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§ !,§ = null;
         super();
         this.mLevelMain = param1;
         this.§>!E§ = int.MAX_VALUE;
         this.§7! § = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§'!k§)
         {
            _loc5_ = param2.§,n§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = § s§.§3!i§ * 4 * § s§.§<!h§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§>!E§)
            {
               this.§>!E§ = _loc7_;
            }
            if(_loc8_ > this.§7! §)
            {
               this.§7! § = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§]4§)
         {
            if((_loc9_ = param2.§2h§(_loc3_)).x < this.§>!E§)
            {
               this.§>!E§ = _loc9_.x;
            }
            if(_loc9_.x > this.§7! §)
            {
               this.§7! § = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * § s§.§3!i§ * § s§.§<!h§;
         this.§>!E§ -= _loc4_;
         this.§7! § += _loc4_;
         this.§?!7§ = § s§.§3!i§ * § s§.§<!h§ / (this.§7! § - this.§>!E§);
         this.§?!7§ = Math.max(this.§?!7§,§3$§.§%!U§);
         this.§"Z§ = §&M§;
         this.§4!>§ = this.§"Z§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §3`§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§4!>§ || param2 > this.§"Z§ + 50 || param1 < this.§>!E§ || param1 > this.§7! §)
         {
            return true;
         }
         return false;
      }
   }
}
