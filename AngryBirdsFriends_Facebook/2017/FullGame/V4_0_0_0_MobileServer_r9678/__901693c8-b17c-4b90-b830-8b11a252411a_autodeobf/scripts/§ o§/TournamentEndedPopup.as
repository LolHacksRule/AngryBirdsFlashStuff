package § o§
{
   import § "$§.§'"R§;
   import §6"r§.§!#A§;
   import §7",§.TabbedShopPopup;
   import §8" §.StarCollectionPopup;
   import §8"X§.§^!E§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      public function TournamentEndedPopup(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupTournamentEnded[0],ID);
         AngryBirdsBase.singleton.popupManager.§?$=§(StarCollectionPopup.ID);
         AngryBirdsBase.singleton.popupManager.§?$=§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §1"6§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§]"g§);
         §!#A§.pause();
      }
      
      private function §]"g§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.§5"p§(§^!E§.STATE_NAME);
         dispatchEvent(new §'"R§(§'"R§.§>k§));
         close();
      }
   }
}
