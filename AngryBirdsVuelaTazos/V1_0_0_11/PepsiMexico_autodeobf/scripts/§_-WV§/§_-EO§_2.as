package §_-WV§
{
   import §_-0e§.§_-3D§;
   import §_-0e§.§_-fO§;
   import §_-0e§.§_-i8§;
   
   public class §_-EO§ extends §_-fO§
   {
       
      
      private var §_-WH§:Number;
      
      private var §_-My§:uint;
      
      public function §_-EO§(param1:§_-i8§, param2:uint)
      {
         super(param1,0);
         this.§_-WH§ = param1.duration;
         this.§_-My§ = param2;
         §_-hZ§ = this.§_-WH§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §_-hZ§ ? this.§_-WH§ * int(param1 / this.§_-WH§) : §_-hZ§ - this.§_-WH§;
         }
         §_-rL§.update(param1);
      }
      
      public function get §_-8N§() : uint
      {
         return this.§_-My§;
      }
      
      override protected function newInstance() : §_-3D§
      {
         return new §_-EO§(§_-rL§.clone() as §_-i8§,this.§_-8N§);
      }
   }
}
