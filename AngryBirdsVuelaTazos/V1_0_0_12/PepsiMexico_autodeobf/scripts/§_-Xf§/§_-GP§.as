package §_-Xf§
{
   import §_-hn§.§_-DZ§;
   import §_-hn§.§_-pg§;
   import §_-hn§.§_-u9§;
   
   public class §_-GP§ extends §_-u9§
   {
       
      
      private var §_-7a§:Number;
      
      private var §_-Ac§:uint;
      
      public function §_-GP§(param1:§_-pg§, param2:uint)
      {
         super(param1,0);
         this.§_-7a§ = param1.duration;
         this.§_-Ac§ = param2;
         §_-tU§ = this.§_-7a§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §_-tU§ ? this.§_-7a§ * int(param1 / this.§_-7a§) : §_-tU§ - this.§_-7a§;
         }
         §_-eH§.update(param1);
      }
      
      public function get §_-iQ§() : uint
      {
         return this.§_-Ac§;
      }
      
      override protected function newInstance() : §_-DZ§
      {
         return new §_-GP§(§_-eH§.clone() as §_-pg§,this.§_-iQ§);
      }
   }
}
