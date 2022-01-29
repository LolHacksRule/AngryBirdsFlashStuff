package §2r§
{
   import §2G§.§3W§;
   import §5P§.§""C§;
   import §6§.§<#Q§;
   import §8#!§.§5`§;
   import §9#B§.§=!L§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   import §?",§.§&!t§;
   
   public class § L§ extends §&!t§
   {
       
      
      public function § L§(param1:§[#K§, param2:§8=§, param3:§3W§, param4:§""C§, param5:§<#Q§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getLevelNameToDisplay(param1:String) : String
      {
         return §5`§.§6!§.§?<§(param1) + "";
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §=!L§.STATE_NAME;
      }
      
      override protected function getTournamentId() : int
      {
         if(§5`§.§6!§.§"!^§)
         {
            return §5`§.§6!§.§"!^§.id;
         }
         return -1;
      }
   }
}
