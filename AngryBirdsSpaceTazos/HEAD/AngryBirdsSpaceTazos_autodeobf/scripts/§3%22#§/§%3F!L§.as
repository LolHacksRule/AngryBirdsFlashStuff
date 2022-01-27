package §3"#§
{
   import §1z§.§2#§;
   import §1z§.§5!R§;
   import §3h§.§'`§;
   import §="+§.§&!i§;
   
   public class §?!L§
   {
      
      public static const §[";§:Number = 50;
      
      public static const §%!;§:Number = 0;
       
      
      protected var §]t§:Number;
      
      protected var §;T§:Number;
      
      protected var §@!4§:Number;
      
      protected var §`?§:Number;
      
      public var §-!,§:Number;
      
      public var §'"9§:§`"8§;
      
      public function §?!L§(param1:§`"8§, param2:§2#§)
      {
         var _loc5_:§5!R§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§&!i§ = null;
         super();
         this.§'"9§ = param1;
         this.§]t§ = int.MAX_VALUE;
         this.§;T§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§%e§)
         {
            _loc5_ = param2.§ !Z§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §`"8§.§3q§ * 4 * §`"8§.§3!=§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§]t§)
            {
               this.§]t§ = _loc7_;
            }
            if(_loc8_ > this.§;T§)
            {
               this.§;T§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§]t§)
            {
               this.§]t§ = _loc9_.x;
            }
            if(_loc9_.x > this.§;T§)
            {
               this.§;T§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §`"8§.§3q§ * §`"8§.§3!=§;
         this.§]t§ -= _loc4_;
         this.§;T§ += _loc4_;
         this.§-!,§ = §`"8§.§3q§ * §`"8§.§3!=§ / (this.§;T§ - this.§]t§);
         this.§-!,§ = Math.max(this.§-!,§,§'`§.§+2§);
         this.§@!4§ = param2.slingshotY - 160;
         this.§`?§ = param2.slingshotY + 160;
      }
      
      public function get §'3§() : Number
      {
         return this.§]t§;
      }
      
      public function get §+!3§() : Number
      {
         return this.§;T§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §1l§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§@!4§ || param2 > this.§`?§ || param1 < this.§]t§ || param1 > this.§;T§)
         {
            return true;
         }
         return false;
      }
   }
}
