package §1!f§
{
   import §6P§.§!b§;
   import §6P§.§>Z§;
   import §6P§.§@o§;
   
   public class §0>§ extends §@o§
   {
       
      
      private var §,!v§:Number;
      
      private var §!!f§:Number;
      
      public function §0>§(param1:§!b§, param2:Number, param3:Number)
      {
         super(param1,0);
         §"!,§ = param2 + param1.duration + param3;
         this.§!!f§ = param2;
         this.§,!v§ = param3;
      }
      
      public function get §<J§() : Number
      {
         return this.§!!f§;
      }
      
      override protected function newInstance() : §>Z§
      {
         return new §0>§(§-!$§.clone() as §!b§,this.§!!f§,this.§,!v§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §-!$§.update(param1 - this.§!!f§);
      }
      
      public function get §'i§() : Number
      {
         return this.§,!v§;
      }
   }
}
