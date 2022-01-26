package §?'§
{
   import §8!P§.§5p§;
   
   public class §%!5§
   {
       
      
      public var §!!$§:Number = 0;
      
      public var §=Z§:Number = 0;
      
      public var §,!T§:Number;
      
      public var § $§:Number;
      
      public function §%!5§(param1:Number, param2:Number)
      {
         this.§,!T§ = §1V§.§[g§;
         this.§ $§ = §1V§.§#!G§;
         super();
         this.§,!T§ = param1;
         this.§ $§ = param2;
         this.§!!$§ = 0;
         this.§=Z§ = 0;
      }
      
      public function §>Y§(param1:§5p§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§!!$§ < §1V§.§-5§)
         {
            this.§!!$§ += param2;
            this.§=Z§ += this.§,!T§;
            _loc3_ = param2 / §1V§.§&;§ * this.§ $§ * Math.sin(Math.PI / 4 + this.§=Z§ * 2 * Math.PI);
            _loc4_ = param2 / §1V§.§&;§ * this.§ $§ * Math.sin(this.§=Z§ * 2.1 * Math.PI);
            this.§ $§ -= param2 * §1V§.§#!G§ / §1V§.§-5§;
            this.§,!T§ -= param2 * §1V§.§[g§ / §1V§.§-5§;
            param1.§&!B§(_loc3_,_loc4_);
            param1.§3!Q§();
            return true;
         }
         return false;
      }
   }
}
