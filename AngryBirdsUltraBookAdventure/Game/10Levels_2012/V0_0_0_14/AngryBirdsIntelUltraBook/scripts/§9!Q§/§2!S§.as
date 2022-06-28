package §9!Q§
{
   import §&9§.§1?§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §9#§.Popup;
   import flash.events.MouseEvent;
   
   public class §2!S§ extends Popup
   {
      
      public static const §;v§:String = "generalError";
      
      public static const §2u§:String = "thirdPartyCookiesDisabled";
       
      
      public function §2!S§(param1:§ C§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(dynamic.§[6§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§;v§,§2u§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§&_§);
         §4!]§.pause();
         AngryBirdsFP11.§`!c§.§2!3§();
      }
      
      private function §&_§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§`!c§.§2!3§();
         §1?§.§>!X§("window.location.reload");
      }
   }
}
