package §?P§
{
   import § %§.§1Q§;
   import §&"`§.TabbedShopPopup;
   import §-R§.StarCollectionPopup;
   import §1!=§.AbstractPopup;
   import §9"r§.§1#e§;
   import §9#B§.§=!L§;
   import §;#D§.§3#U§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      public function TournamentEndedPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupTournamentEnded[0],ID);
         AngryBirdsBase.singleton.popupManager.§""^§(StarCollectionPopup.ID);
         AngryBirdsBase.singleton.popupManager.§""^§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,#2§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§2N§);
         §3#U§.pause();
      }
      
      private function §2N§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.§1"h§(§=!L§.STATE_NAME);
         dispatchEvent(new §1#e§(§1#e§.§&"[§));
         close();
      }
   }
}
