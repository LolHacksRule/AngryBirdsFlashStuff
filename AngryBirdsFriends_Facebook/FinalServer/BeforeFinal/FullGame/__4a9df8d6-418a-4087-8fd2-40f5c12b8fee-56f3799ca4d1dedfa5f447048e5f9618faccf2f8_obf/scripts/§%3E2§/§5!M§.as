package §>2§
{
   public class §5!M§
   {
      
      private static const §8"i§:Number = 1;
       
      
      private var §4"W§:Number = 1.0;
      
      private var § !p§:Number = 0.0;
      
      private var §?"t§:Number = 0.0;
      
      private var §?F§:Number = 0.0;
      
      private var §0";§:Number = 0.0;
      
      private var §+"A§:Number = 1.0;
      
      public function §5!M§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§4"W§ = param4;
         this.§ !p§ = param2;
         this.§?"t§ = param1;
         this.§?F§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§+"A§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§0";§ += param1;
         if(this.§0";§ < this.§?"t§)
         {
            this.§+"A§ = §8"i§ + (this.§4"W§ - §8"i§) * this.§0";§ / this.§?"t§;
         }
         else if(this.§0";§ < this.§?"t§ + this.§ !p§)
         {
            this.§+"A§ = this.§4"W§;
         }
         else
         {
            if(this.§0";§ >= this.§?"t§ + this.§ !p§ + this.§?F§)
            {
               this.§+"A§ = §8"i§;
               return false;
            }
            _loc2_ = this.§0";§ - (this.§?"t§ + this.§ !p§);
            this.§+"A§ = this.§4"W§ + (§8"i§ - this.§4"W§) * _loc2_ / this.§?F§;
         }
         return true;
      }
   }
}
