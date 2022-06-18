package §;U§
{
   import §>%§.§]3§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.events.MouseEvent;
   
   public class §`-§ extends Popup
   {
      
      public static const §5!=§:String = "generalError";
      
      public static const §^w§:String = "thirdPartyCookiesDisabled";
       
      
      public function §`-§(param1:§&"§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§?O§.§@!<§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§5!=§,§^w§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§<!§);
         §]3§.pause();
         AngryBirdsFP11.§"h§.§8! §();
      }
      
      private function §<!§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§"h§.§8! §();
      }
   }
}
