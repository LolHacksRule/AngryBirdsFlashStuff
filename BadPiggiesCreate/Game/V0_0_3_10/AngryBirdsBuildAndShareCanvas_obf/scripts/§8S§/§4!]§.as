package §8S§
{
   import §'!D§.§&s§;
   import §'!D§.§1!J§;
   import §'!D§.§9!W§;
   
   public class §4!]§ extends §1!J§
   {
       
      
      private var §-!;§:Number;
      
      public function §4!]§(param1:§&s§, param2:Number)
      {
         super(param1,0);
         §4!V§ = param1.duration * param2;
         this.§-!;§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§-!;§;
      }
      
      override protected function newInstance() : §9!W§
      {
         return new §4!]§(§%!§.clone() as §&s§,this.§-!;§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §%!§.update(param1 / this.scale);
      }
   }
}
