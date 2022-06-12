package §>z§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §2";§.§95§;
   import §3+§.§0!S§;
   import §5" §.TabbedShopPopup;
   import §<!r§.§'##§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentNotFoundPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentNotFoundPopup";
       
      
      public function TournamentNotFoundPopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupTournamentNotFound[0],ID);
         AngryBirdsBase.singleton.popupManager.§7$9§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §&!M§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§0"?§);
         §7n§.pause();
      }
      
      private function §0"?§(param1:MouseEvent) : void
      {
         if(§'##§.§`"H§.§;!q§())
         {
            AngryBirdsBase.singleton.§1!L§(§0!S§.STATE_NAME);
         }
         else
         {
            AngryBirdsBase.singleton.§1!L§(§95§.STATE_NAME);
         }
         close();
      }
   }
}
