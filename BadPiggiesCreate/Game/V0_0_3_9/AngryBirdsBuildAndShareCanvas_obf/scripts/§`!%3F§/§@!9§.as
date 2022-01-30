package §`!?§
{
   public class §@!9§ implements §6!K§
   {
       
      
      private var §^!p§:Number;
      
      private var §3X§:Number;
      
      public function §@!9§(param1:Number, param2:Number)
      {
         super();
         this.§3X§ = param1;
         this.§^!p§ = param2;
      }
      
      public function §<l§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§3X§ : this.§3X§) * (param1 / (1 / this.§^!p§));
      }
      
      public function §<!R§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§3X§ : this.§3X§) * (1 / this.§^!p§);
      }
   }
}
