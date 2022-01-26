package §_-bQ§
{
   import §_-My§.§_-J9§;
   import §_-My§.§_-Ry§;
   import §_-My§.§_-hK§;
   
   public class §_-aa§ extends §_-J9§
   {
       
      
      private var §_-e0§:Number;
      
      private var §_-Xn§:Number;
      
      public function §_-aa§(param1:§_-hK§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-Hr§ = param2 + param1.duration + param3;
         this.§_-Xn§ = param2;
         this.§_-e0§ = param3;
      }
      
      public function get §_-Aj§() : Number
      {
         return this.§_-Xn§;
      }
      
      override protected function newInstance() : §_-Ry§
      {
         return new §_-aa§(§_-gi§.clone() as §_-hK§,this.§_-Xn§,this.§_-e0§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-gi§.update(param1 - this.§_-Xn§);
      }
      
      public function get §_-hP§() : Number
      {
         return this.§_-e0§;
      }
   }
}
