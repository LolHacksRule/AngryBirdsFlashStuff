package §?"R§
{
   import §!!G§.§0§;
   import §-"i§.§%!'§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      public function TournamentEndedPopup(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupTournamentEnded[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §7!j§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§,$%§);
         §>"$§.pause();
      }
      
      private function §,$%§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.§7P§(§%!'§.STATE_NAME);
         dispatchEvent(new §0#3§(§0#3§.§#"G§));
         close();
      }
   }
}
