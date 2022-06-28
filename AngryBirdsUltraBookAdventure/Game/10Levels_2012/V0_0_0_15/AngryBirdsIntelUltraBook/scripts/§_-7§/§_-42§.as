package §_-7§
{
   import §_-Y8§.§_-05J§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import §_-qO§.§ in§;
   import flash.events.MouseEvent;
   
   public class §_-42§ extends Popup
   {
      
      public static const §_-aP§:String = "generalError";
      
      public static const §_-06o§:String = "thirdPartyCookiesDisabled";
       
      
      public function §_-42§(param1:§_-5q§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§_-vB§.§_-ky§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§_-aP§,§_-06o§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§_-pZ§);
         § in§.pause();
         AngryBirdsFP11.§_-07§.§_-DE§();
      }
      
      private function §_-pZ§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§_-07§.§_-DE§();
         §_-05J§.§_-0At§("window.location.reload");
      }
   }
}
