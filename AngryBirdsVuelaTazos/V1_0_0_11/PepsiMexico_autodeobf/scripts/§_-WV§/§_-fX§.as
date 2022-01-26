package §_-WV§
{
   import §_-0e§.§_-3D§;
   import §_-0e§.§_-fO§;
   import §_-0e§.§_-i8§;
   
   public class §_-fX§ extends §_-fO§
   {
       
      
      private var §_-JV§:Number;
      
      public function §_-fX§(param1:§_-i8§, param2:Number)
      {
         super(param1,0);
         §_-hZ§ = param1.duration * param2;
         this.§_-JV§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§_-JV§;
      }
      
      override protected function newInstance() : §_-3D§
      {
         return new §_-fX§(§_-rL§.clone() as §_-i8§,this.§_-JV§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-rL§.update(param1 / this.scale);
      }
   }
}
