package §_-WV§
{
   import §_-0e§.§_-3D§;
   import §_-0e§.§_-fO§;
   import §_-0e§.§_-i8§;
   
   public class §_-OT§ extends §_-fO§
   {
       
      
      public function §_-OT§(param1:§_-i8§, param2:Number)
      {
         super(param1,param2);
         §_-hZ§ = param1.duration;
      }
      
      override protected function newInstance() : §_-3D§
      {
         return new §_-OT§(§_-rL§.clone() as §_-i8§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-rL§.update(§_-hZ§ - param1);
      }
   }
}
