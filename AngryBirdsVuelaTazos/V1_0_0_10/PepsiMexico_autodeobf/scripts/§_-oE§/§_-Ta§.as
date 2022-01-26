package §_-oE§
{
   import §_-sN§.§_-b8§;
   import §_-sN§.§_-qR§;
   import §_-sN§.§_-x5§;
   
   public class §_-Ta§ extends §_-qR§
   {
       
      
      private var §_-Bv§:Number;
      
      private var §_-Re§:uint;
      
      public function §_-Ta§(param1:§_-x5§, param2:uint)
      {
         super(param1,0);
         this.§_-Bv§ = param1.duration;
         this.§_-Re§ = param2;
         §_-sA§ = this.§_-Bv§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §_-sA§ ? this.§_-Bv§ * int(param1 / this.§_-Bv§) : §_-sA§ - this.§_-Bv§;
         }
         §_-0w§.update(param1);
      }
      
      public function get §_-jL§() : uint
      {
         return this.§_-Re§;
      }
      
      override protected function newInstance() : §_-b8§
      {
         return new §_-Ta§(§_-0w§.clone() as §_-x5§,this.§_-jL§);
      }
   }
}
