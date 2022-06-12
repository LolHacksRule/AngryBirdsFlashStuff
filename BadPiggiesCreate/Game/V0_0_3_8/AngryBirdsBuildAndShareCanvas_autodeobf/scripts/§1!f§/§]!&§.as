package §1!f§
{
   import §6P§.§!b§;
   import §6P§.§>Z§;
   import §6P§.§@o§;
   
   public class §]!&§ extends §@o§
   {
       
      
      private var §"!i§:Number;
      
      public function §]!&§(param1:§!b§, param2:Number)
      {
         super(param1,0);
         §"!,§ = param1.duration * param2;
         this.§"!i§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§"!i§;
      }
      
      override protected function newInstance() : §>Z§
      {
         return new §]!&§(§-!$§.clone() as §!b§,this.§"!i§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §-!$§.update(param1 / this.scale);
      }
   }
}
