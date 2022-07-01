package §@V§
{
   public class §9!b§
   {
      
      private static const §^!M§:Number = 1;
       
      
      private var §6J§:Number = 1.0;
      
      private var § h§:Number = 0.0;
      
      private var §8!^§:Number = 0.0;
      
      private var § try§:Number = 0.0;
      
      private var §?A§:Number = 0.0;
      
      private var §11§:Number = 1.0;
      
      public function §9!b§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§6J§ = param4;
         this.§ h§ = param2;
         this.§8!^§ = param1;
         this.§ try§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§11§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§?A§ += param1;
         if(this.§?A§ < this.§8!^§)
         {
            this.§11§ = §^!M§ + (this.§6J§ - §^!M§) * this.§?A§ / this.§8!^§;
         }
         else if(this.§?A§ < this.§8!^§ + this.§ h§)
         {
            this.§11§ = this.§6J§;
         }
         else
         {
            if(this.§?A§ >= this.§8!^§ + this.§ h§ + this.§ try§)
            {
               this.§11§ = §^!M§;
               return false;
            }
            _loc2_ = this.§?A§ - (this.§8!^§ + this.§ h§);
            this.§11§ = this.§6J§ + (§^!M§ - this.§6J§) * _loc2_ / this.§ try§;
         }
         return true;
      }
   }
}
