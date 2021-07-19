package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-jE§ extends §_-Ar§
   {
       
      
      private var §_-XR§:Number;
      
      private var §_-lg§:Number;
      
      public function §_-jE§(param1:§_-Lk§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-7A§ = param3 - param2;
         this.§_-XR§ = param2;
         this.§_-lg§ = param3;
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-jE§(§_-Zc§.clone() as §_-Lk§,this.§_-XR§,this.§_-lg§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §_-7A§)
            {
               §_-Zc§.update(param1 + this.§_-XR§);
            }
            else
            {
               §_-Zc§.update(this.§_-lg§);
            }
         }
         else
         {
            §_-Zc§.update(this.§_-XR§);
         }
      }
      
      public function get §_-oF§() : Number
      {
         return this.§_-XR§;
      }
      
      public function get end() : Number
      {
         return this.§_-lg§;
      }
   }
}
