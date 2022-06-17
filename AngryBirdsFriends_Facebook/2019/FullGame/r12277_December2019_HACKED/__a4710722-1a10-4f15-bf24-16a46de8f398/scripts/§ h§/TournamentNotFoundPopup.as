package § h§
{
   import §+!n§.§+!p§;
   import §4#$§.§5"L§;
   import §4#l§.TabbedShopPopup;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import §[#v§.§7"Z§;
   import §^1§.§[$2§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentNotFoundPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentNotFoundPopup";
       
      
      public function TournamentNotFoundPopup(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupTournamentNotFound[0],ID);
         AngryBirdsBase.singleton.popupManager.§>#g§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §'o§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§]W§);
         §+!p§.pause();
      }
      
      private function §]W§(param1:MouseEvent) : void
      {
         if(§5"L§.§3"1§.§2o§())
         {
            AngryBirdsBase.singleton.§%!?§(§7"Z§.STATE_NAME);
         }
         else
         {
            AngryBirdsBase.singleton.§%!?§(§[$2§.STATE_NAME);
         }
         close();
      }
   }
}
