package §'a§
{
   import §[_§.§2D§;
   
   public class §"B§
   {
       
      
      public var §>a§:Number = 0;
      
      public var §+!§:Number = 0;
      
      public var §%A§:Number;
      
      public var §+!K§:Number;
      
      public function §"B§(param1:Number, param2:Number)
      {
         this.§%A§ = §^N§.§^6§;
         this.§+!K§ = §^N§.§]0§;
         super();
         this.§%A§ = param1;
         this.§+!K§ = param2;
         this.§>a§ = 0;
         this.§+!§ = 0;
      }
      
      public function § 2§(param1:§2D§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§>a§ < §^N§.§=!e§)
         {
            this.§>a§ += param2;
            this.§+!§ += this.§%A§;
            _loc3_ = param2 / §^N§.§!!§ * this.§+!K§ * Math.sin(Math.PI / 4 + this.§+!§ * 2 * Math.PI);
            _loc4_ = param2 / §^N§.§!!§ * this.§+!K§ * Math.sin(this.§+!§ * 2.1 * Math.PI);
            this.§+!K§ -= param2 * §^N§.§]0§ / §^N§.§=!e§;
            this.§%A§ -= param2 * §^N§.§^6§ / §^N§.§=!e§;
            param1.setOffset(_loc3_,_loc4_);
            param1.§[G§();
            return true;
         }
         return false;
      }
   }
}
