package §2?§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import flash.events.MouseEvent;
   
   public class §?4§ extends Popup
   {
      
      public static const §=5§:String = "generalError";
      
      public static const §"w§:String = "thirdPartyCookiesDisabled";
       
      
      public function §?4§(param1:§0#§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§06§.§-`§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§=5§,§"w§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§37§);
         §"h§.pause();
         AngryBirdsFP11.§0P§.§#2§();
      }
      
      private function §37§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§0P§.§#2§();
      }
   }
}
