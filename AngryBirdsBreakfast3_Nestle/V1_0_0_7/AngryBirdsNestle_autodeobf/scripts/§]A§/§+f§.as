package §]A§
{
   public class §+f§
   {
      
      private static const §8!c§:Number = 1;
       
      
      private var §!#§:Number = 1.0;
      
      private var §4d§:Number = 0.0;
      
      private var §>2§:Number = 0.0;
      
      private var §4!g§:Number = 0.0;
      
      private var §5z§:Number = 0.0;
      
      private var §#d§:Number = 1.0;
      
      public function §+f§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§!#§ = param4;
         this.§4d§ = param2;
         this.§>2§ = param1;
         this.§4!g§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§#d§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§5z§ += param1;
         if(this.§5z§ < this.§>2§)
         {
            this.§#d§ = §8!c§ + (this.§!#§ - §8!c§) * this.§5z§ / this.§>2§;
         }
         else if(this.§5z§ < this.§>2§ + this.§4d§)
         {
            this.§#d§ = this.§!#§;
         }
         else
         {
            if(this.§5z§ >= this.§>2§ + this.§4d§ + this.§4!g§)
            {
               this.§#d§ = §8!c§;
               return false;
            }
            _loc2_ = this.§5z§ - (this.§>2§ + this.§4d§);
            this.§#d§ = this.§!#§ + (§8!c§ - this.§!#§) * _loc2_ / this.§4!g§;
         }
         return true;
      }
   }
}
