package §_-oE§
{
   import §_-sN§.§_-b8§;
   import §_-sN§.§_-qR§;
   import §_-sN§.§_-x5§;
   
   public class §_-VL§ extends §_-qR§
   {
       
      
      private var §_-3t§:Number;
      
      public function §_-VL§(param1:§_-x5§, param2:Number)
      {
         super(param1,0);
         §_-sA§ = param1.duration * param2;
         this.§_-3t§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§_-3t§;
      }
      
      override protected function newInstance() : §_-b8§
      {
         return new §_-VL§(§_-0w§.clone() as §_-x5§,this.§_-3t§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-0w§.update(param1 / this.scale);
      }
   }
}
