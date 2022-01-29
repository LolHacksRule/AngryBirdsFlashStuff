package §?P§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §1!=§.AbstractPopup;
   import §3#T§.§'§;
   import §9#B§.StateTournamentResults;
   import §`7§.§ try§;
   import §`7§.§`"x§;
   import flash.display.MovieClip;
   
   public class TournamentResultSharePopUp extends AbstractPopup
   {
      
      public static const ID:String = "TournamentResultSharePopUp";
       
      
      private var §#"P§:String;
      
      private var §+!8§:String;
      
      private var §;#j§:uint;
      
      public function TournamentResultSharePopUp(param1:int, param2:int, param3:String, param4:String, param5:uint)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_TournamentResultShare[0],ID);
         this.§#"P§ = param3;
         this.§+!8§ = param4;
         this.§;#j§ = param5;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.mClip.header.text = this.§#"P§;
         §,#2§.mClip.body.text = this.§+!8§;
         (§,#2§.mClip.image as MovieClip).gotoAndStop(this.§>"4§());
      }
      
      private function §>"4§() : uint
      {
         var _loc1_:uint = 1;
         switch(this.§;#j§)
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "SHARE":
               this.§&#z§();
               switch(this.§;#j§)
               {
                  case StateTournamentResults.§,#=§:
                     §`"x§.§4!$§(§ try§.§+#@§);
                     § try§.§!!t§().§+!R§(§ try§.§+#@§,§ try§.§]J§);
                     break;
                  case StateTournamentResults.§@9§:
                  case StateTournamentResults.CASE_STAR_PROMOTION:
                     §`"x§.§4!$§(§ try§.§=#!§);
                     § try§.§!!t§().§+!R§(§ try§.§=#!§,§ try§.§]J§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_1ST:
                     §`"x§.§4!$§(§ try§.§=6§);
                     § try§.§!!t§().§+!R§(§ try§.§=6§,§ try§.§]J§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_2ND:
                     §`"x§.§4!$§(§ try§.§=X§);
                     § try§.§!!t§().§+!R§(§ try§.§=X§,§ try§.§]J§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_3RD:
                     §`"x§.§4!$§(§ try§.§7#B§);
                     § try§.§!!t§().§+!R§(§ try§.§7#B§,§ try§.§]J§);
               }
               break;
            case "SKIP":
               switch(this.§;#j§)
               {
                  case StateTournamentResults.§,#=§:
                     §`"x§.§;",§(§ try§.§+#@§);
                     § try§.§!!t§().§+!R§(§ try§.§+#@§,§ try§.§<"[§);
                     break;
                  case StateTournamentResults.§@9§:
                  case StateTournamentResults.CASE_STAR_PROMOTION:
                     §`"x§.§;",§(§ try§.§=#!§);
                     § try§.§!!t§().§+!R§(§ try§.§=#!§,§ try§.§<"[§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_1ST:
                     §`"x§.§;",§(§ try§.§=6§);
                     § try§.§!!t§().§+!R§(§ try§.§=6§,§ try§.§<"[§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_2ND:
                     §`"x§.§;",§(§ try§.§=X§);
                     § try§.§!!t§().§+!R§(§ try§.§=X§,§ try§.§<"[§);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_3RD:
                     §`"x§.§;",§(§ try§.§7#B§);
                     § try§.§!!t§().§+!R§(§ try§.§7#B§,§ try§.§<"[§);
               }
               close();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §&#z§() : void
      {
         §^!K§.addCallback("permissionRequestComplete",this.§6X§);
         §^!K§.§+"D§("askForPublishStreamPermission");
      }
      
      private function §6X§(param1:String) : void
      {
         §^!K§.§,"i§("permissionRequestComplete",this.§6X§);
         if(param1 == "true")
         {
            §^!K§.§+"D§("shareTournamentResult",this.§;#j§,"");
            close();
         }
      }
   }
}
