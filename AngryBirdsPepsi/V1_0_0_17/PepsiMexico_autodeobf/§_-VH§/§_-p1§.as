package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-p1§ extends §_-Ar§
   {
       
      
      private var §_-sJ§:Number;
      
      private var §_-BJ§:Number;
      
      public function §_-p1§(param1:§_-Lk§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-7A§ = param2 + param1.duration + param3;
         this.§_-BJ§ = param2;
         this.§_-sJ§ = param3;
      }
      
      public function get §_-na§() : Number
      {
         return this.§_-BJ§;
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-p1§(§_-Zc§.clone() as §_-Lk§,this.§_-BJ§,this.§_-sJ§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-Zc§.update(param1 - this.§_-BJ§);
      }
      
      public function get §_-sw§() : Number
      {
         return this.§_-sJ§;
      }
   }
}
