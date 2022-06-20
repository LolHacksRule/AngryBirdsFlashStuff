package §?!N§
{
   import §!!?§.TabbedShopPopup;
   import §!!t§.§9$A§;
   import §%#v§.§0"j§;
   import §+"u§.§^"C§;
   import §3=§.§6"H§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentNotFoundPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentNotFoundPopup";
       
      
      public function TournamentNotFoundPopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupTournamentNotFound[0],ID);
         AngryBirdsBase.singleton.popupManager.§2;§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §8#Y§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§]7§);
         §%"T§.pause();
      }
      
      private function §]7§(param1:MouseEvent) : void
      {
         if(§^"C§.§?q§.§&2§())
         {
            AngryBirdsBase.singleton.§%D§(§9$A§.STATE_NAME);
         }
         else
         {
            AngryBirdsBase.singleton.§%D§(§6"H§.STATE_NAME);
         }
         close();
      }
   }
}
