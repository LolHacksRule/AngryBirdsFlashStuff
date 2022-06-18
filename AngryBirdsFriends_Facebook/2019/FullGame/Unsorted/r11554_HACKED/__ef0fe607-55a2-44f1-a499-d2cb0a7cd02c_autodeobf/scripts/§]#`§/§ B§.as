package §]#`§
{
   import §!!t§.§'8§;
   import §"$=§.§'![§;
   import §+"u§.§^"C§;
   import §1!2§.§[#v§;
   import §3"G§.§16§;
   import §3R§.§?M§;
   import §5!$§.§<c§;
   import §]"'§.§""K§;
   
   public class § B§ extends §[#v§
   {
       
      
      public function § B§(param1:§<c§, param2:§'![§, param3:§""K§, param4:§16§, param5:§?M§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getLevelNameToDisplay(param1:String) : String
      {
         return §^"C§.§?q§.§6#T§(param1) + "";
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §'8§.STATE_NAME;
      }
      
      override protected function getTournamentId() : int
      {
         if(§^"C§.§?q§.§4#-§)
         {
            return §^"C§.§?q§.§4#-§.id;
         }
         return -1;
      }
   }
}
