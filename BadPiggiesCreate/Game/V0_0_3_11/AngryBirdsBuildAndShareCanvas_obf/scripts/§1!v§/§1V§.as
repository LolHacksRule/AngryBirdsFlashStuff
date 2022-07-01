package §1!v§
{
   import §+%§.§+D§;
   import §+%§.§5!F§;
   import §1"3§.§`"0§;
   import §]!!§.§"d§;
   
   public class §1V§
   {
      
      public static const §=m§:Number = 50;
      
      public static var §?!e§:Number = 0;
      
      public static const §[c§:Number = 0.5;
      
      public static const §3?§:Number = 0;
       
      
      public var §#!f§:Number;
      
      public var §&?§:Number;
      
      public var §%8§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §?n§:Number;
      
      public var §]Z§:§@%§;
      
      public function §1V§(param1:§@%§, param2:§5!F§)
      {
         var _loc5_:§+D§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§"d§ = null;
         super();
         this.§]Z§ = param1;
         this.§#!f§ = int.MAX_VALUE;
         this.§&?§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§#!n§)
         {
            _loc5_ = param2.§>!n§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §@%§.§]H§ * 4 * §@%§.§?k§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§#!f§)
            {
               this.§#!f§ = _loc7_;
            }
            if(_loc8_ > this.§&?§)
            {
               this.§&?§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§!!T§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§#!f§)
            {
               this.§#!f§ = _loc9_.x;
            }
            if(_loc9_.x > this.§&?§)
            {
               this.§&?§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §@%§.§]H§ * §@%§.§?k§;
         this.§#!f§ -= _loc4_;
         this.§&?§ += _loc4_;
         this.§?n§ = §@%§.§]H§ * §@%§.§?k§ / (this.§&?§ - this.§#!f§);
         this.§?n§ = Math.max(this.§?n§,§`"0§.§#e§);
         this.mBorderGround_B2 = §3?§;
         this.§%8§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §0o§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§%8§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§#!f§ || param1 > this.§&?§)
         {
            return true;
         }
         return false;
      }
   }
}
