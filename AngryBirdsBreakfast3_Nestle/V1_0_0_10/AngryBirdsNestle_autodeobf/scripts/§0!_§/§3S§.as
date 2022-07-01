package §0!_§
{
   import §<v§.§0!k§;
   import §<v§.§0f§;
   import §?u§.§6!R§;
   
   public class §3S§ extends §0f§
   {
       
      
      protected var §#n§:§-g§;
      
      public function §3S§(param1:String, param2:String, param3:§-g§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.§#n§ = param3;
      }
      
      protected function §'3§() : §6!R§
      {
         return new §6!R§(this.§#n§);
      }
      
      override protected function initPackageLoader() : §0!k§
      {
         return this.§'3§();
      }
   }
}
