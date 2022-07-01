package § 2§
{
   public class §@!=§
   {
      
      private static const §>5§:Number = 1;
       
      
      private var §<L§:Number = 1.0;
      
      private var §%@§:Number = 0.0;
      
      private var §-"5§:Number = 0.0;
      
      private var §95§:Number = 0.0;
      
      private var §+?§:Number = 0.0;
      
      private var §%e§:Number = 1.0;
      
      public function §@!=§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§<L§ = param4;
         this.§%@§ = param2;
         this.§-"5§ = param1;
         this.§95§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§%e§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§+?§ += param1;
         if(this.§+?§ < this.§-"5§)
         {
            this.§%e§ = §>5§ + (this.§<L§ - §>5§) * this.§+?§ / this.§-"5§;
         }
         else if(this.§+?§ < this.§-"5§ + this.§%@§)
         {
            this.§%e§ = this.§<L§;
         }
         else
         {
            if(this.§+?§ >= this.§-"5§ + this.§%@§ + this.§95§)
            {
               this.§%e§ = §>5§;
               return false;
            }
            _loc2_ = this.§+?§ - (this.§-"5§ + this.§%@§);
            this.§%e§ = this.§<L§ + (§>5§ - this.§<L§) * _loc2_ / this.§95§;
         }
         return true;
      }
   }
}
