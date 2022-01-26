package §_-bQ§
{
   import §_-My§.§_-J9§;
   import §_-My§.§_-Ry§;
   import §_-My§.§_-hK§;
   
   public class §_-TP§ extends §_-J9§
   {
       
      
      private var §_-oE§:Number;
      
      private var §_-Sw§:uint;
      
      public function §_-TP§(param1:§_-hK§, param2:uint)
      {
         super(param1,0);
         this.§_-oE§ = param1.duration;
         this.§_-Sw§ = param2;
         §_-Hr§ = this.§_-oE§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §_-Hr§ ? this.§_-oE§ * int(param1 / this.§_-oE§) : §_-Hr§ - this.§_-oE§;
         }
         §_-gi§.update(param1);
      }
      
      public function get §_-u9§() : uint
      {
         return this.§_-Sw§;
      }
      
      override protected function newInstance() : §_-Ry§
      {
         return new §_-TP§(§_-gi§.clone() as §_-hK§,this.§_-u9§);
      }
   }
}
