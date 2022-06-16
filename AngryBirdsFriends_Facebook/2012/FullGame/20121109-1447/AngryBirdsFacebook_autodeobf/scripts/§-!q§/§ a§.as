package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §2!i§.§'M§;
   import §[!K§.§-!@§;
   
   public class § a§ extends §-!@§
   {
       
      
      public function § a§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_TournamentBrandedLevelEnd[0]);
         §2r§();
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         §6w§.getItemByName("Button_Watch_Replay").setVisibility(false);
      }
      
      override protected function setScoreData() : void
      {
         super.setScoreData();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "HALLOWEENSHOPPRESSED":
               §%?§.§ ]§("levelend-win");
         }
      }
   }
}
