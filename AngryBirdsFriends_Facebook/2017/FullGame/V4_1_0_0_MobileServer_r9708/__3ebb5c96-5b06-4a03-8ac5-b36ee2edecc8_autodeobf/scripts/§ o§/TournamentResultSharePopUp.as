package § o§
{
   import §6!0§.§ "8§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8"X§.StateTournamentResults;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import flash.display.MovieClip;
   
   public class TournamentResultSharePopUp extends AbstractPopup
   {
      
      public static const ID:String = "TournamentResultSharePopUp";
       
      
      private var §%4§:String;
      
      private var §##x§:String;
      
      private var §-!C§:uint;
      
      public function TournamentResultSharePopUp(param1:int, param2:int, param3:String, param4:String, param5:uint)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_TournamentResultShare[0],ID);
         this.§%4§ = param3;
         this.§##x§ = param4;
         this.§-!C§ = param5;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §1"6§.mClip.header.text = this.§%4§;
         §1"6§.mClip.body.text = this.§##x§;
         (§1"6§.mClip.image as MovieClip).gotoAndStop(this.§6g§());
      }
      
      private function §6g§() : uint
      {
         var _loc1_:uint = 1;
         switch(this.§-!C§)
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         loop0:
         switch(param2)
         {
            case "SHARE":
               this.§;#,§();
               switch(this.§-!C§)
               {
                  case StateTournamentResults.§,$5§:
                     §`"5§.§"$%§(§?!=§.§?!c§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§?!c§,§?!=§.§2R§);
                     break loop0;
                  case StateTournamentResults.§0$3§:
                  case StateTournamentResults.CASE_STAR_PROMOTION:
                     §`"5§.§"$%§(§?!=§.§@";§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§@";§,§?!=§.§2R§);
                     break loop0;
                  case StateTournamentResults.CASE_FRIENDS_1ST:
                     §`"5§.§"$%§(§?!=§.§9!9§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§9!9§,§?!=§.§2R§);
                     break loop0;
                  case StateTournamentResults.CASE_FRIENDS_2ND:
                     §`"5§.§"$%§(§?!=§.§'!_§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§'!_§,§?!=§.§2R§);
                     break loop0;
                  case StateTournamentResults.CASE_FRIENDS_3RD:
                     §`"5§.§"$%§(§?!=§.§0"O§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§0"O§,§?!=§.§2R§);
               }
               break;
            case "SKIP":
               switch(this.§-!C§)
               {
                  case StateTournamentResults.§,$5§:
                     §`"5§.§!3§(§?!=§.§?!c§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§?!c§,§?!=§.§7<§);
                     break;
                  case StateTournamentResults.§0$3§:
                  case StateTournamentResults.CASE_STAR_PROMOTION:
                     §`"5§.§!3§(§?!=§.§@";§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§@";§,§?!=§.§7<§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_1ST:
                     §`"5§.§!3§(§?!=§.§9!9§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§9!9§,§?!=§.§7<§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_2ND:
                     §`"5§.§!3§(§?!=§.§'!_§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§'!_§,§?!=§.§7<§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_3RD:
                     §`"5§.§!3§(§?!=§.§0"O§);
                     §?!=§.§3!q§().§9#G§(§?!=§.§0"O§,§?!=§.§7<§);
               }
               close();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §;#,§() : void
      {
         § "8§.addCallback("permissionRequestComplete",this.§&!X§);
         § "8§.§ "§("askForPublishStreamPermission");
      }
      
      private function §&!X§(param1:String) : void
      {
         § "8§.§+#R§("permissionRequestComplete",this.§&!X§);
         if(param1 == "true")
         {
            § "8§.§ "§("shareTournamentResult",this.§-!C§,"");
            close();
         }
      }
   }
}
