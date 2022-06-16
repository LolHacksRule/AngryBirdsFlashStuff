package §'K§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §7-§.§<"+§;
   import §[!K§.§-k§;
   import §]!>§.§[Q§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §#!8§ extends Popup
   {
       
      
      private var §"!T§:StatePopupManager;
      
      public function §#!8§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_TournamentTutorial[0],param1);
         this.§"!T§ = param2;
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§="4§);
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      private function §="4§(param1:MouseEvent) : void
      {
         §3T§.§67§.§=!w§(§-k§.STATE_NAME);
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:MovieClip = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
         var _loc3_:§[Q§ = new §[Q§((AngryBirdsFP11.sUserProgress as §[<§).§4v§,"Player","",0,0);
         var _loc4_:§<"+§ = new §<"+§(_loc2_,_loc3_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
