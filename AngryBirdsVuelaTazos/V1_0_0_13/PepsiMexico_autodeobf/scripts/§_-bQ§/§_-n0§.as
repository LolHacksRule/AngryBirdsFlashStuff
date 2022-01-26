package §_-bQ§
{
   import §_-My§.§_-J9§;
   import §_-My§.§_-Ry§;
   import §_-My§.§_-hK§;
   
   public class §_-n0§ extends §_-J9§
   {
       
      
      public function §_-n0§(param1:§_-hK§, param2:Number)
      {
         super(param1,param2);
         §_-Hr§ = param1.duration;
      }
      
      override protected function newInstance() : §_-Ry§
      {
         return new §_-n0§(§_-gi§.clone() as §_-hK§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-gi§.update(§_-Hr§ - param1);
      }
   }
}
