package §]k§
{
   public class §%P§
   {
      
      private static const §3_§:Number = 1;
       
      
      private var §;!3§:Number = 1.0;
      
      private var §1K§:Number = 0.0;
      
      private var §@!d§:Number = 0.0;
      
      private var §`p§:Number = 0.0;
      
      private var §-#§:Number = 0.0;
      
      private var §6!%§:Number = 1.0;
      
      public function §%P§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§;!3§ = param4;
         this.§1K§ = param2;
         this.§@!d§ = param1;
         this.§`p§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§6!%§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§-#§ += param1;
         if(this.§-#§ < this.§@!d§)
         {
            this.§6!%§ = §3_§ + (this.§;!3§ - §3_§) * this.§-#§ / this.§@!d§;
         }
         else if(this.§-#§ < this.§@!d§ + this.§1K§)
         {
            this.§6!%§ = this.§;!3§;
         }
         else
         {
            if(this.§-#§ >= this.§@!d§ + this.§1K§ + this.§`p§)
            {
               this.§6!%§ = §3_§;
               return false;
            }
            _loc2_ = this.§-#§ - (this.§@!d§ + this.§1K§);
            this.§6!%§ = this.§;!3§ + (§3_§ - this.§;!3§) * _loc2_ / this.§`p§;
         }
         return true;
      }
   }
}
