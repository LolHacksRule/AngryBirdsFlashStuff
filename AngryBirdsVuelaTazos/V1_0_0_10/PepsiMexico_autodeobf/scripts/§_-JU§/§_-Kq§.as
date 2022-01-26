package §_-JU§
{
   public class §_-Kq§ implements §_-Is§
   {
       
      
      private var §_-Pn§:Number;
      
      private var §_-XP§:Number;
      
      public function §_-Kq§(param1:Number, param2:Number)
      {
         super();
         this.§_-XP§ = param1;
         this.§_-Pn§ = param2;
      }
      
      public function §_-WA§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§_-XP§ : this.§_-XP§) * (param1 / (1 / this.§_-Pn§));
      }
      
      public function §_-Fn§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§_-XP§ : this.§_-XP§) * (1 / this.§_-Pn§);
      }
   }
}
