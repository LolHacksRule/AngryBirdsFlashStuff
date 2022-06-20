package § o§
{
   import §6"r§.§!#A§;
   import §7",§.TabbedShopPopup;
   import §8#D§.§=>§;
   import §94§.§>!&§;
   import §<#m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentNotFoundPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentNotFoundPopup";
       
      
      public function TournamentNotFoundPopup(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupTournamentNotFound[0],ID);
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
         AngryBirdsBase.singleton.§5"p§(§>!&§.STATE_NAME);
         close();
      }
   }
}
