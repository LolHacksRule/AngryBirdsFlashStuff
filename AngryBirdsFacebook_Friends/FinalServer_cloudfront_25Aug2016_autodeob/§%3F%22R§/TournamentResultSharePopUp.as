package §?"R§
{
   import §'!U§.§0!?§;
   import §+"%§.§6X§;
   import §-"i§.StateTournamentResults;
   import §<!O§.§@#`§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   
   public class TournamentResultSharePopUp extends AbstractPopup
   {
      
      public static const ID:String = "TournamentResultSharePopUp";
       
      
      private var §<!8§:String;
      
      private var §2$7§:String;
      
      private var §]"n§:uint;
      
      public function TournamentResultSharePopUp(param1:int, param2:int, param3:String, param4:String, param5:uint)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_TournamentResultShare[0],ID);
         this.§<!8§ = param3;
         this.§2$7§ = param4;
         this.§]"n§ = param5;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §7!j§.mClip.header.text = this.§<!8§;
         §7!j§.mClip.body.text = this.§2$7§;
         (§7!j§.mClip.image as MovieClip).gotoAndStop(this.§'6§());
      }
      
      private function §'6§() : uint
      {
         var _loc1_:uint = 1;
         switch(this.§]"n§)
         {
            case StateTournamentResults.CASE_FRIENDS_1ST:
               _loc1_ = 3;
               break;
            case StateTournamentResults.CASE_FRIENDS_2ND:
               _loc1_ = 4;
               break;
            case StateTournamentResults.CASE_FRIENDS_3RD:
               _loc1_ = 5;
         }
         return _loc1_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "SHARE":
               this.§8!p§();
               switch(this.§]"n§)
               {
                  case StateTournamentResults.§>#]§:
                     §,"W§.§ A§(§-#A§.§%"E§);
                     §-#A§.§6$2§().§8$§(§-#A§.§%"E§,§-#A§.§1"3§);
                     break;
                  case StateTournamentResults.§0!S§:
                  case StateTournamentResults.CASE_STAR_PROMOTION:
                     §,"W§.§ A§(§-#A§.§7##§);
                     §-#A§.§6$2§().§8$§(§-#A§.§7##§,§-#A§.§1"3§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_1ST:
                     §,"W§.§ A§(§-#A§.§'#n§);
                     §-#A§.§6$2§().§8$§(§-#A§.§'#n§,§-#A§.§1"3§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_2ND:
                     §,"W§.§ A§(§-#A§.§9"l§);
                     §-#A§.§6$2§().§8$§(§-#A§.§9"l§,§-#A§.§1"3§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_3RD:
                     §,"W§.§ A§(§-#A§.§?"5§);
                     §-#A§.§6$2§().§8$§(§-#A§.§?"5§,§-#A§.§1"3§);
               }
               break;
            case "SKIP":
               switch(this.§]"n§)
               {
                  case StateTournamentResults.§>#]§:
                     §,"W§.§]"'§(§-#A§.§%"E§);
                     §-#A§.§6$2§().§8$§(§-#A§.§%"E§,§-#A§.§ !M§);
                     break;
                  case StateTournamentResults.§0!S§:
                  case StateTournamentResults.CASE_STAR_PROMOTION:
                     §,"W§.§]"'§(§-#A§.§7##§);
                     §-#A§.§6$2§().§8$§(§-#A§.§7##§,§-#A§.§ !M§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_1ST:
                     §,"W§.§]"'§(§-#A§.§'#n§);
                     §-#A§.§6$2§().§8$§(§-#A§.§'#n§,§-#A§.§ !M§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_2ND:
                     §,"W§.§]"'§(§-#A§.§9"l§);
                     §-#A§.§6$2§().§8$§(§-#A§.§9"l§,§-#A§.§ !M§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_3RD:
                     §,"W§.§]"'§(§-#A§.§?"5§);
                     §-#A§.§6$2§().§8$§(§-#A§.§?"5§,§-#A§.§ !M§);
               }
               close();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §8!p§() : void
      {
         §6X§.addCallback("permissionRequestComplete",this.§82§);
         §6X§.§3U§("askForPublishStreamPermission");
      }
      
      private function §82§(param1:String) : void
      {
         §6X§.§5!3§("permissionRequestComplete",this.§82§);
         if(param1 == "true")
         {
            §6X§.§3U§("shareTournamentResult",this.§]"n§,"");
            close();
         }
      }
   }
}
