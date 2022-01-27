package §<"s§
{
   import §4##§.§7!B§;
   import §4m§.AbstractPopup;
   import §4m§.§^T§;
   import §^!`§.§%n§;
   import §^9§.§<! §;
   import flash.display.MovieClip;
   import flash.events.TextEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class GenericMessagePopup extends AbstractPopup
   {
      
      public static const §^"3§:String = "GenericMessagePopup";
      
      public static const §["f§:String = "shop";
       
      
      private var §;!_§:String;
      
      private var §function§:String;
      
      public function GenericMessagePopup(param1:String, param2:String, param3:int, param4:int)
      {
         super(param3,param4,§%n§.§ set§.Popups.Popup_GenericMessage[0],§^"3§);
         this.§function§ = param1 || "";
         this.§;!_§ = param2 || "";
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,r§.mClip.Container_Content.Title;
         _loc1_.Text.text = this.§function§;
         §,r§.mClip.Container_Content.message.htmlText = this.§;!_§;
         §,r§.mClip.addEventListener(TextEvent.LINK,this.§2"7§,false,0,true);
         _loc1_.goldenBg.mask = _loc1_.Text;
         §,r§.mClip.Container_Content.mask = §,r§.mClip.MovieClip_ContentMask;
      }
      
      private function §2"7§(param1:TextEvent) : void
      {
         if(param1.text == §["f§)
         {
            §;"@§.singleton.popupManager.§>!'§(true,false);
            §;"@§.singleton.popupManager.openPopup(new §<! §(§0u§.§]!?§,§^T§.TOP),true,true,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
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
