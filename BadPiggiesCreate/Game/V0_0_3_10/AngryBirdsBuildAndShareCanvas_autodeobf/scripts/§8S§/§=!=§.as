package §8S§
{
   import §'!D§.§&s§;
   import §'!D§.§1!J§;
   import §'!D§.§9!W§;
   
   public class §=!=§ extends §1!J§
   {
       
      
      private var §4!w§:Number;
      
      private var §@9§:uint;
      
      public function §=!=§(param1:§&s§, param2:uint)
      {
         super(param1,0);
         this.§4!w§ = param1.duration;
         this.§@9§ = param2;
         §4!V§ = this.§4!w§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §4!V§ ? this.§4!w§ * int(param1 / this.§4!w§) : §4!V§ - this.§4!w§;
         }
         §%!§.update(param1);
      }
      
      public function get §"w§() : uint
      {
         return this.§@9§;
      }
      
      override protected function newInstance() : §9!W§
      {
         return new §=!=§(§%!§.clone() as §&s§,this.§"w§);
      }
   }
}
