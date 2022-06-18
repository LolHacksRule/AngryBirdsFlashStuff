package §9N§
{
   import §5p§.§?M§;
   
   public class §!!$§
   {
       
      
      public var §=Z§:Number = 0;
      
      public var §,!T§:Number = 0;
      
      public var § $§:Number;
      
      public var §1V§:Number;
      
      public function §!!$§(param1:Number, param2:Number)
      {
         this.§ $§ = §&!V§.§#!G§;
         this.§1V§ = §&!V§.§-5§;
         super();
         this.§ $§ = param1;
         this.§1V§ = param2;
         this.§=Z§ = 0;
         this.§,!T§ = 0;
      }
      
      public function §>Y§(param1:§?M§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§=Z§ < §&!V§.§?F§)
         {
            this.§=Z§ += param2;
            this.§,!T§ += this.§ $§;
            _loc3_ = param2 / §&!V§.§3H§ * this.§1V§ * Math.sin(Math.PI / 4 + this.§,!T§ * 2 * Math.PI);
            _loc4_ = param2 / §&!V§.§3H§ * this.§1V§ * Math.sin(this.§,!T§ * 2.1 * Math.PI);
            this.§1V§ -= param2 * §&!V§.§-5§ / §&!V§.§?F§;
            this.§ $§ -= param2 * §&!V§.§#!G§ / §&!V§.§?F§;
            param1.§^!-§(_loc3_,_loc4_);
            param1.§!Q§();
            return true;
         }
         return false;
      }
   }
}
