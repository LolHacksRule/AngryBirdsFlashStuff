package §"o§
{
   import §2W§.§4!$§;
   import §;!2§.§6!D§;
   import §;f§.§-!=§;
   import §;f§.§^o§;
   
   public class §#U§
   {
      
      public static const §3!#§:Number = 50;
      
      public static var §`S§:Number = 0;
      
      public static const §[2§:Number = 0.5;
      
      public static const §,b§:Number = 0;
       
      
      public var §-l§:Number;
      
      public var §^!7§:Number;
      
      public var §1§:Number;
      
      public var §1n§:Number;
      
      public var §!^§:Number;
      
      public var § 6§:§ M§;
      
      public function §#U§(param1:§ M§, param2:§^o§)
      {
         var _loc5_:§-!=§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§6!D§ = null;
         super();
         this.§ 6§ = param1;
         this.§-l§ = int.MAX_VALUE;
         this.§^!7§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§else §)
         {
            _loc5_ = param2.§3Y§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = § M§.§^!?§ * 4 * § M§.§%v§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§-l§)
            {
               this.§-l§ = _loc7_;
            }
            if(_loc8_ > this.§^!7§)
            {
               this.§^!7§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§'^§)
         {
            if((_loc9_ = param2.§ n§(_loc3_)).x < this.§-l§)
            {
               this.§-l§ = _loc9_.x;
            }
            if(_loc9_.x > this.§^!7§)
            {
               this.§^!7§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * § M§.§^!?§ * § M§.§%v§;
         this.§-l§ -= _loc4_;
         this.§^!7§ += _loc4_;
         this.§!^§ = § M§.§^!?§ * § M§.§%v§ / (this.§^!7§ - this.§-l§);
         this.§!^§ = Math.max(this.§!^§,§4!$§.§[!&§);
         this.§1n§ = §,b§;
         this.§1§ = this.§1n§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §-i§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§1§ || param2 > this.§1n§ + 50 || param1 < this.§-l§ || param1 > this.§^!7§)
         {
            return true;
         }
         return false;
      }
   }
}
