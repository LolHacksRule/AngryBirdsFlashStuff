package §?!N§
{
   import §!!?§.TabbedShopPopup;
   import §!!t§.§'8§;
   import §!!t§.§9$A§;
   import §%#v§.§0"j§;
   import §'#f§.StarCollectionPopup;
   import §+"u§.§^"C§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      private var §0"k§:int;
      
      public function TournamentEndedPopup(param1:int, param2:int)
      {
         if(§^"C§.§?q§.§4#-§)
         {
            this.§0"k§ = §^"C§.§?q§.§4#-§.id;
         }
         else
         {
            this.§0"k§ = 0;
         }
         super(param1,param2,§0"j§.§-i§.Views.PopupTournamentEnded[0],ID);
         AngryBirdsBase.singleton.popupManager.§2;§(StarCollectionPopup.ID);
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
            §9$A§.§`o§();
            AngryBirdsBase.singleton.§%D§(§9$A§.STATE_NAME);
         }
         else
         {
            §'8§.§6#R§(this.§0"k§);
            §^"C§.§-"T§();
            AngryBirdsBase.singleton.§%D§(§'8§.STATE_NAME);
         }
         close();
      }
   }
}
