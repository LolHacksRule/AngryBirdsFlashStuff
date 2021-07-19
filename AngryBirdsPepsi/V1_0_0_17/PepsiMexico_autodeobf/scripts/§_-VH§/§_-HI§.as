package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-HI§ extends §_-Ar§
   {
       
      
      private var §_-R2§:Number;
      
      private var §_-aM§:uint;
      
      public function §_-HI§(param1:§_-Lk§, param2:uint)
      {
         super(param1,0);
         this.§_-R2§ = param1.duration;
         this.§_-aM§ = param2;
         §_-7A§ = this.§_-R2§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §_-7A§ ? this.§_-R2§ * int(param1 / this.§_-R2§) : §_-7A§ - this.§_-R2§;
         }
         §_-Zc§.update(param1);
      }
      
      public function get §_-mj§() : uint
      {
         return this.§_-aM§;
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-HI§(§_-Zc§.clone() as §_-Lk§,this.§_-mj§);
      }
   }
}
