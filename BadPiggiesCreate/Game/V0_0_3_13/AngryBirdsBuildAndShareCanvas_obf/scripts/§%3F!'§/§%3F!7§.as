package §?!'§
{
   import §1R§.§4!T§;
   import §1R§.§67§;
   import §1R§.§]!"§;
   
   public class §?!7§ extends §67§
   {
       
      
      private var §;!l§:Number;
      
      private var §9!4§:uint;
      
      public function §?!7§(param1:§4!T§, param2:uint)
      {
         super(param1,0);
         this.§;!l§ = param1.duration;
         this.§9!4§ = param2;
         §+6§ = this.§;!l§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §+6§ ? this.§;!l§ * int(param1 / this.§;!l§) : §+6§ - this.§;!l§;
         }
         §9!=§.update(param1);
      }
      
      public function get §;#§() : uint
      {
         return this.§9!4§;
      }
      
      override protected function newInstance() : §]!"§
      {
         return new §?!7§(§9!=§.clone() as §4!T§,this.§;#§);
      }
   }
}
