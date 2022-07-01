package §break§
{
   import §1&§.§!!W§;
   import §1&§.§!;§;
   import §1&§.§?!i§;
   
   public class §;t§ extends §!;§
   {
       
      
      private var §<d§:Number;
      
      private var §?$§:uint;
      
      public function §;t§(param1:§!!W§, param2:uint)
      {
         super(param1,0);
         this.§<d§ = param1.duration;
         this.§?$§ = param2;
         §['§ = this.§<d§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §['§ ? this.§<d§ * int(param1 / this.§<d§) : §['§ - this.§<d§;
         }
         §5q§.update(param1);
      }
      
      public function get §8,§() : uint
      {
         return this.§?$§;
      }
      
      override protected function newInstance() : §?!i§
      {
         return new §;t§(§5q§.clone() as §!!W§,this.§8,§);
      }
   }
}
