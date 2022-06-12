package §?"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import §6k§.§-#§;
   import §<";§.§'y§;
   import §^!U§.§,J§;
   import §^!o§.§@?§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §!"L§ extends Popup
   {
       
      
      private var §[!g§:StatePopupManager;
      
      public function §!"L§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupView_TournamentTutorial[0],param1);
         this.§[!g§ = param2;
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§-9§);
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      private function §-9§(param1:MouseEvent) : void
      {
         §,"I§.§&q§.§>"I§(§-#§.STATE_NAME);
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:MovieClip = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
         var _loc3_:§,J§ = new §,J§((AngryBirdsFP11.sUserProgress as §'y§).§;#§,"Player","",0,0);
         var _loc4_:§@?§ = new §@?§(_loc2_,_loc3_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
