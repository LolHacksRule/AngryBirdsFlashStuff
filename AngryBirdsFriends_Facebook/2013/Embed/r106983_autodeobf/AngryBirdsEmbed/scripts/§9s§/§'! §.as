package §9s§
{
   import §@!+§.§+_§;
   
   public class §'! §
   {
       
      
      public var §<!5§:Number = 0;
      
      public var §function§:Number = 0;
      
      public var § M§:Number;
      
      public var §46§:Number;
      
      public function §'! §(param1:Number, param2:Number)
      {
         this.§ M§ = §^u§.§@F§;
         this.§46§ = §^u§.§switch§;
         super();
         this.§ M§ = param1;
         this.§46§ = param2;
         this.§<!5§ = 0;
         this.§function§ = 0;
      }
      
      public function §^0§(param1:§+_§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§<!5§ < §^u§.§+F§)
         {
            this.§<!5§ += param2;
            this.§function§ += this.§ M§;
            _loc3_ = param2 / §^u§.§%!,§ * this.§46§ * Math.sin(Math.PI / 4 + this.§function§ * 2 * Math.PI);
            _loc4_ = param2 / §^u§.§%!,§ * this.§46§ * Math.sin(this.§function§ * 2.1 * Math.PI);
            this.§46§ -= param2 * §^u§.§switch§ / §^u§.§+F§;
            this.§ M§ -= param2 * §^u§.§@F§ / §^u§.§+F§;
            param1.§#!?§(_loc3_,_loc4_);
            param1.§2!E§();
            return true;
         }
         return false;
      }
   }
}
