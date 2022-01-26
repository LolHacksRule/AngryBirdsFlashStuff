package §_-oE§
{
   import §_-sN§.§_-b8§;
   import §_-sN§.§_-qR§;
   import §_-sN§.§_-x5§;
   
   public class §_-77§ extends §_-qR§
   {
       
      
      public function §_-77§(param1:§_-x5§, param2:Number)
      {
         super(param1,param2);
         §_-sA§ = param1.duration;
      }
      
      override protected function newInstance() : §_-b8§
      {
         return new §_-77§(§_-0w§.clone() as §_-x5§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-0w§.update(§_-sA§ - param1);
      }
   }
}
