package §break§
{
   import §1&§.§!!W§;
   import §1&§.§!;§;
   import §1&§.§?!i§;
   
   public class §<"'§ extends §!;§
   {
       
      
      private var §"!A§:Number;
      
      private var §4M§:Number;
      
      public function §<"'§(param1:§!!W§, param2:Number, param3:Number)
      {
         super(param1,0);
         §['§ = param2 + param1.duration + param3;
         this.§4M§ = param2;
         this.§"!A§ = param3;
      }
      
      public function get §%"6§() : Number
      {
         return this.§4M§;
      }
      
      override protected function newInstance() : §?!i§
      {
         return new §<"'§(§5q§.clone() as §!!W§,this.§4M§,this.§"!A§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §5q§.update(param1 - this.§4M§);
      }
      
      public function get §3!#§() : Number
      {
         return this.§"!A§;
      }
   }
}
