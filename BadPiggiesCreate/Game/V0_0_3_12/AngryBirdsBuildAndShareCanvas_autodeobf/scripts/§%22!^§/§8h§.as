package §"!^§
{
   import §8!J§.§3!_§;
   import §8!J§.§3j§;
   import §8!J§.§5f§;
   
   public class §8h§ extends §3!_§
   {
       
      
      private var §7n§:Number;
      
      public function §8h§(param1:§3j§, param2:Number)
      {
         super(param1,0);
         §,!O§ = param1.duration * param2;
         this.§7n§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§7n§;
      }
      
      override protected function newInstance() : §5f§
      {
         return new §8h§(§0v§.clone() as §3j§,this.§7n§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §0v§.update(param1 / this.scale);
      }
   }
}
