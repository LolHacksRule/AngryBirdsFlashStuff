package §@r§
{
   import § "L§.§23§;
   import §!!L§.§ !8§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §6"?§.§9L§;
   import §7#$§.§]#q§;
   import §^"w§.§<#l§;
   import §`,§.§7!$§;
   
   public class §>!A§ extends §9L§
   {
       
      
      public function §>!A§(param1:§23§, param2:§]#q§, param3:§3#J§, param4:§%"q§, param5:§<#l§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getLevelNameToDisplay(param1:String) : String
      {
         return §7!$§.§+!,§.§>"v§(param1) + "";
      }
      
      override protected function getLevelSelectionState() : String
      {
         return § !8§.STATE_NAME;
      }
      
      override protected function getTournamentId() : int
      {
         if(§7!$§.§+!,§.§@!v§)
         {
            return §7!$§.§+!,§.§@!v§.id;
         }
         return -1;
      }
   }
}
