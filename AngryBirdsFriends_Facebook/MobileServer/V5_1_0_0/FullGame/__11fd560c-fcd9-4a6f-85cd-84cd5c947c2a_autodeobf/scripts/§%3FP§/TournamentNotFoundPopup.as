package §?P§
{
   import § %§.§1Q§;
   import §"!@§.§>"c§;
   import §&"`§.TabbedShopPopup;
   import §1!=§.AbstractPopup;
   import §8#!§.§5`§;
   import §9#B§.§"#&§;
   import §;#D§.§3#U§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentNotFoundPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentNotFoundPopup";
       
      
      public function TournamentNotFoundPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupTournamentNotFound[0],ID);
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
         if(§5`§.§6!§.§3#u§())
         {
            AngryBirdsBase.singleton.§1"h§(§"#&§.STATE_NAME);
         }
         else
         {
            AngryBirdsBase.singleton.§1"h§(§>"c§.STATE_NAME);
         }
         close();
      }
   }
}
