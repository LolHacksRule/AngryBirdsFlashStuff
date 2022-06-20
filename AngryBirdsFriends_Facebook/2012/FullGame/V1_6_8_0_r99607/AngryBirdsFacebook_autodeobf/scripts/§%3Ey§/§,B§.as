package §>y§
{
   import §,"-§.§2!P§;
   import §2!,§.§!Q§;
   import §7N§.Popup;
   import §7N§.StatePopupManager;
   import §<!e§.§"!]§;
   import §<G§.§5w§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §,B§ extends Popup
   {
       
      
      private var §<q§:StatePopupManager;
      
      public function §,B§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_TournamentTutorial[0],param1);
         this.§<q§ = param2;
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§1s§);
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      private function §1s§(param1:MouseEvent) : void
      {
         § W§.§%!y§.§ !`§(§5w§.STATE_NAME);
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:MovieClip = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
         var _loc3_:§!Q§ = new §!Q§((AngryBirdsFP11.sUserProgress as §2!P§).§!!'§,"Player","",0,0);
         var _loc4_:§"!]§ = new §"!]§(_loc2_,_loc3_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
