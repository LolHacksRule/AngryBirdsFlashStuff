package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import §[!K§.§-k§;
   
   public class § -§ extends Popup
   {
       
      
      private var §"!T§:StatePopupManager;
      
      public function § -§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_NewTournamentBranded[0],param1);
         this.§"!T§ = param2;
         this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "CLOSE_POPUP":
               (AngryBirdsFP11.sUserProgress as §[<§).saveTutorialSeen(§[<§.§8l§);
               this.close();
               break;
            case "GOTO_TOURNAMENT":
               (AngryBirdsFP11.sUserProgress as §[<§).saveTutorialSeen(§[<§.§8l§);
               §3T§.§67§.§=!w§(§-k§.STATE_NAME);
               this.close();
         }
      }
      
      override public function close() : void
      {
         this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         super.close();
      }
   }
}
