package §!"e§
{
   import §7!$§.§&$§;
   import §;! §.§!Z§;
   import §;"Y§.§&#X§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.TextEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class GenericMessagePopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "GenericMessagePopup";
      
      public static const §>#$§:String = "shop";
       
      
      private var §%n§:String;
      
      private var §3#+§:String;
      
      public function GenericMessagePopup(param1:String, param2:String, param3:int, param4:int)
      {
         super(param3,param4,§&$§.§@8§.Popups.Popup_GenericMessage[0],§%!h§);
         this.§3#+§ = param1 || "";
         this.§%n§ = param2 || "";
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §^c§.mClip.Container_Content.Title;
         _loc1_.Text.text = this.§3#+§;
         §^c§.mClip.Container_Content.message.htmlText = this.§%n§;
         §^c§.mClip.addEventListener(TextEvent.LINK,this.§&q§,false,0,true);
         _loc1_.goldenBg.mask = _loc1_.Text;
         §^c§.mClip.Container_Content.mask = §^c§.mClip.MovieClip_ContentMask;
      }
      
      private function §&q§(param1:TextEvent) : void
      {
         if(param1.text == §>#$§)
         {
            §4#;§.singleton.popupManager.§<"w§(true,false);
            §4#;§.singleton.popupManager.openPopup(new §!Z§(§`"W§.§?z§,§+5§.TOP),true,true,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2.toUpperCase())
         {
            case "NAVIGATE_OUT":
               navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=absw"),"_top");
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
   }
}
