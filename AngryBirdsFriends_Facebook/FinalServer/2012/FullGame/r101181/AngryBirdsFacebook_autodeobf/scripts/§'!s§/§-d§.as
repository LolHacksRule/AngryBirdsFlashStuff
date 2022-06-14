package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §+N§.§@!]§;
   import §]!A§.;
   import flash.events.MouseEvent;
   
   public class §-d§ extends Popup
   {
      
      public static const §+""§:String = "generalError";
      
      public static const §]x§:String = "thirdPartyCookiesDisabled";
       
      
      public function §-d§(param1:§7!A§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§ "A§.§4[§.Views.PopupView_Error[0],param1);
         §]"5§ = §97§;
         mClip.gotoAndStop([§+""§,§]x§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§`!a§);
         §#6§.pause();
         AngryBirdsFP11.§@<§.§#m§();
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§@<§.§#m§();
         §@!]§.§9"'§("window.location.reload");
      }
   }
}
