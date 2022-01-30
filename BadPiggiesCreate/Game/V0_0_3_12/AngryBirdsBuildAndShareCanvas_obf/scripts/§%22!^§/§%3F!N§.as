package §"!^§
{
   import §8!J§.§3!_§;
   import §8!J§.§3j§;
   import §8!J§.§5f§;
   
   public class §?!N§ extends §3!_§
   {
       
      
      private var §]!M§:Number;
      
      private var §8" §:Number;
      
      public function §?!N§(param1:§3j§, param2:Number, param3:Number)
      {
         super(param1,0);
         §,!O§ = param2 + param1.duration + param3;
         this.§8" § = param2;
         this.§]!M§ = param3;
      }
      
      public function get § case§() : Number
      {
         return this.§8" §;
      }
      
      override protected function newInstance() : §5f§
      {
         return new §?!N§(§0v§.clone() as §3j§,this.§8" §,this.§]!M§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §0v§.update(param1 - this.§8" §);
      }
      
      public function get §3l§() : Number
      {
         return this.§]!M§;
      }
   }
}
