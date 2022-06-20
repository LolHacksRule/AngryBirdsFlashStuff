package § !D§
{
   public class §-!a§
   {
      
      private static const §0"&§:Number = 1;
       
      
      private var §1!Z§:Number = 1.0;
      
      private var §=S§:Number = 0.0;
      
      private var §,"]§:Number = 0.0;
      
      private var §<#J§:Number = 0.0;
      
      private var §9$&§:Number = 0.0;
      
      private var §^#7§:Number = 1.0;
      
      public function §-!a§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§1!Z§ = param4;
         this.§=S§ = param2;
         this.§,"]§ = param1;
         this.§<#J§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§^#7§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§9$&§ += param1;
         if(this.§9$&§ < this.§,"]§)
         {
            this.§^#7§ = §0"&§ + (this.§1!Z§ - §0"&§) * this.§9$&§ / this.§,"]§;
         }
         else if(this.§9$&§ < this.§,"]§ + this.§=S§)
         {
            this.§^#7§ = this.§1!Z§;
         }
         else if(this.§9$&§ < this.§,"]§ + this.§=S§ + this.§<#J§)
         {
            _loc2_ = this.§9$&§ - (this.§,"]§ + this.§=S§);
            this.§^#7§ = this.§1!Z§ + (§0"&§ - this.§1!Z§) * _loc2_ / this.§<#J§;
         }
         else
         {
            this.§^#7§ = §0"&§;
            return false;
         }
         return true;
      }
   }
}
