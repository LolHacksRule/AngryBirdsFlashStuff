package §?Q§
{
   import § $0§.AbstractPopup;
   import §!!L§.§8"^§;
   import §";§.§false§;
   import §?#z§.§]$?§;
   import §]§.§3"E§;
   import §`,§.§7!$§;
   import §`D§.TabbedShopPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentNotFoundPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentNotFoundPopup";
       
      
      public function TournamentNotFoundPopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupTournamentNotFound[0],ID);
         AngryBirdsBase.singleton.popupManager.§0"O§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §;#'§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§^!<§);
         §]$?§.pause();
      }
      
      private function §^!<§(param1:MouseEvent) : void
      {
         if(§7!$§.§+!,§.§!$#§())
         {
            AngryBirdsBase.singleton.§3#§(§8"^§.STATE_NAME);
         }
         else
         {
            AngryBirdsBase.singleton.§3#§(§3"E§.STATE_NAME);
         }
         close();
      }
   }
}
