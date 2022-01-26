package §_-Xf§
{
   import §_-hn§.§_-DZ§;
   import §_-hn§.§_-pg§;
   import §_-hn§.§_-u9§;
   
   public class §_-AY§ extends §_-u9§
   {
       
      
      public function §_-AY§(param1:§_-pg§, param2:Number)
      {
         super(param1,param2);
         §_-tU§ = param1.duration;
      }
      
      override protected function newInstance() : §_-DZ§
      {
         return new §_-AY§(§_-eH§.clone() as §_-pg§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-eH§.update(§_-tU§ - param1);
      }
   }
}
