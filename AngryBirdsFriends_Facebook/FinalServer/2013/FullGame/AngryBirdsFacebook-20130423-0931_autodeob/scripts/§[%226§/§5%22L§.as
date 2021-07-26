package §["6§
{
   import §%!I§.§]!M§;
   import §,l§.§1U§;
   import §0D§.§`!k§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §5"L§ extends Popup
   {
       
      
      private var §>"P§:StatePopupManager;
      
      public function §5"L§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupView_TournamentTutorial[0],param1);
         this.§>"P§ = param2;
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§["!§);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      private function §["!§(param1:MouseEvent) : void
      {
         §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:MovieClip = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
         var _loc3_:§1U§ = new §1U§((AngryBirdsFP11.sUserProgress as §#!$§).§5!0§,"Player","",0,0);
         var _loc4_:§`!k§ = new §`!k§(_loc2_,_loc3_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
