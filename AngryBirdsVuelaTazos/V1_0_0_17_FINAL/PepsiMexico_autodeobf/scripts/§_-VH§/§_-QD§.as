package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-QD§ extends §_-Ar§
   {
       
      
      private var §_-09§:Number;
      
      public function §_-QD§(param1:§_-Lk§, param2:Number)
      {
         super(param1,0);
         §_-7A§ = param1.duration * param2;
         this.§_-09§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§_-09§;
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-QD§(§_-Zc§.clone() as §_-Lk§,this.§_-09§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-Zc§.update(param1 / this.scale);
      }
   }
}
