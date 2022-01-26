package §_-Xf§
{
   import §_-hn§.§_-DZ§;
   import §_-hn§.§_-pg§;
   import §_-hn§.§_-u9§;
   
   public class §_-9x§ extends §_-u9§
   {
       
      
      private var §_-VO§:Number;
      
      public function §_-9x§(param1:§_-pg§, param2:Number)
      {
         super(param1,0);
         §_-tU§ = param1.duration * param2;
         this.§_-VO§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§_-VO§;
      }
      
      override protected function newInstance() : §_-DZ§
      {
         return new §_-9x§(§_-eH§.clone() as §_-pg§,this.§_-VO§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-eH§.update(param1 / this.scale);
      }
   }
}
