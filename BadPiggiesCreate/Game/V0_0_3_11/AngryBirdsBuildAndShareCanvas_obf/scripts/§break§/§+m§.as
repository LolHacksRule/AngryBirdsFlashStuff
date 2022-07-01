package §break§
{
   import §1&§.§!!W§;
   import §1&§.§!;§;
   import §1&§.§?!i§;
   
   public class §+m§ extends §!;§
   {
       
      
      private var §]=§:Number;
      
      public function §+m§(param1:§!!W§, param2:Number)
      {
         super(param1,0);
         §['§ = param1.duration * param2;
         this.§]=§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§]=§;
      }
      
      override protected function newInstance() : §?!i§
      {
         return new §+m§(§5q§.clone() as §!!W§,this.§]=§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §5q§.update(param1 / this.scale);
      }
   }
}
