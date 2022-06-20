package §9"!§
{
   import §[!"§.§&0§;
   
   public class §;x§
   {
       
      
      public var §,w§:Number = 0;
      
      public var §?",§:Number = 0;
      
      public var §>n§:Number;
      
      public var §?!G§:Number;
      
      public function §;x§(param1:Number, param2:Number)
      {
         this.§>n§ = §4"F§.§ =§;
         this.§?!G§ = §4"F§.§`"E§;
         super();
         this.§>n§ = param1;
         this.§?!G§ = param2;
         this.§,w§ = 0;
         this.§?",§ = 0;
      }
      
      public function §@1§(param1:§&0§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§,w§ < §4"F§.§+"9§)
         {
            this.§,w§ += param2;
            this.§?",§ += this.§>n§;
            _loc3_ = param2 / §4"F§.§[!s§ * this.§?!G§ * Math.sin(Math.PI / 4 + this.§?",§ * 2 * Math.PI);
            _loc4_ = param2 / §4"F§.§[!s§ * this.§?!G§ * Math.sin(this.§?",§ * 2.1 * Math.PI);
            this.§?!G§ -= param2 * §4"F§.§`"E§ / §4"F§.§+"9§;
            this.§>n§ -= param2 * §4"F§.§ =§ / §4"F§.§+"9§;
            param1.§else§(_loc3_,_loc4_);
            param1.§`!-§();
            return true;
         }
         return false;
      }
   }
}
