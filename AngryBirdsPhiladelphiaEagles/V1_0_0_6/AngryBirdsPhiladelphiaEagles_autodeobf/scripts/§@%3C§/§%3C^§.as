package §@<§
{
   import §&b§.§[F§;
   import §4M§.;
   import §4M§.§^'§;
   import flash.events.MouseEvent;
   
   public class §<^§ extends Popup
   {
      
      public static const get:String = "generalError";
      
      public static const §]3§:String = "thirdPartyCookiesDisabled";
       
      
      public function §<^§(param1:§^'§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§#4§.§]X§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([get,§]3§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§[-§);
         §[F§.pause();
         AngryBirdsFP11.§^F§.§;n§();
      }
      
      private function §[-§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§^F§.§;n§();
      }
   }
}
