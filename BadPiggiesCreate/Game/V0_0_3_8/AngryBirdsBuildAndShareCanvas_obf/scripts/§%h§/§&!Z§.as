package §%h§
{
   import §>0§.§'L§;
   
   public class §&!Z§
   {
       
      
      public var §]!T§:Number = 0;
      
      public var §`!5§:Number = 0;
      
      public var §#!T§:Number;
      
      public var §'!c§:Number;
      
      public function §&!Z§(param1:Number, param2:Number)
      {
         this.§#!T§ = §6!d§.§finally§;
         this.§'!c§ = §6!d§.§#2§;
         super();
         this.§#!T§ = param1;
         this.§'!c§ = param2;
         this.§]!T§ = 0;
         this.§`!5§ = 0;
      }
      
      public function §;`§(param1:§'L§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§]!T§ < §6!d§.§^"$§)
         {
            this.§]!T§ += param2;
            this.§`!5§ += this.§#!T§;
            _loc3_ = param2 / §6!d§.§?!n§ * this.§'!c§ * Math.sin(Math.PI / 4 + this.§`!5§ * 2 * Math.PI);
            _loc4_ = param2 / §6!d§.§?!n§ * this.§'!c§ * Math.sin(this.§`!5§ * 2.1 * Math.PI);
            this.§'!c§ -= param2 * §6!d§.§#2§ / §6!d§.§^"$§;
            this.§#!T§ -= param2 * §6!d§.§finally§ / §6!d§.§^"$§;
            param1.§#!#§(_loc3_,_loc4_);
            param1.§&!L§();
            return true;
         }
         return false;
      }
   }
}
