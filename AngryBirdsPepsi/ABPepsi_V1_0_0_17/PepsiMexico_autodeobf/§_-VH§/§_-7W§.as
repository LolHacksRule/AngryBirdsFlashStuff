package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-7W§ extends §_-Ar§
   {
       
      
      public function §_-7W§(param1:§_-Lk§, param2:Number)
      {
         super(param1,param2);
         §_-7A§ = param1.duration;
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-7W§(§_-Zc§.clone() as §_-Lk§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-Zc§.update(§_-7A§ - param1);
      }
   }
}
