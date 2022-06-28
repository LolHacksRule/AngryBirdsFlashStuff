package §,!5§
{
   import §2!R§.§#C§;
   
   public class §+!c§
   {
       
      
      public var §&!$§:Number = 0;
      
      public var §]Y§:Number = 0;
      
      public var §&G§:Number;
      
      public var §]!s§:Number;
      
      public function §+!c§(param1:Number, param2:Number)
      {
         this.§&G§ = §0;§.§]t§;
         this.§]!s§ = §0;§.§9y§;
         super();
         this.§&G§ = param1;
         this.§]!s§ = param2;
         this.§&!$§ = 0;
         this.§]Y§ = 0;
      }
      
      public function §5!§(param1:§#C§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§&!$§ < §0;§.§8!_§)
         {
            this.§&!$§ += param2;
            this.§]Y§ += this.§&G§;
            _loc3_ = param2 / §0;§.§%f§ * this.§]!s§ * Math.sin(Math.PI / 4 + this.§]Y§ * 2 * Math.PI);
            _loc4_ = param2 / §0;§.§%f§ * this.§]!s§ * Math.sin(this.§]Y§ * 2.1 * Math.PI);
            this.§]!s§ -= param2 * §0;§.§9y§ / §0;§.§8!_§;
            this.§&G§ -= param2 * §0;§.§]t§ / §0;§.§8!_§;
            param1.§%R§(_loc3_,_loc4_);
            param1.§'!B§();
            return true;
         }
         return false;
      }
   }
}
