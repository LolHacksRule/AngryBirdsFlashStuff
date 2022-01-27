package §+"Y§
{
   import §+"x§.§2!s§;
   import §+"x§.AbstractPopup;
   import §4"m§.§>" §;
   import §8!h§.§-V§;
   import §[!H§.§^x§;
   import flash.display.MovieClip;
   import flash.events.TextEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class GenericMessagePopup extends AbstractPopup
   {
      
      public static const §-"§:String = "GenericMessagePopup";
      
      public static const §-"F§:String = "shop";
       
      
      private var §8!<§:String;
      
      private var §<!I§:String;
      
      public function GenericMessagePopup(param1:String, param2:String, param3:int, param4:int)
      {
         super(param3,param4,§^x§.§ '§.Popups.Popup_GenericMessage[0],§-"§);
         this.§<!I§ = param1 || "";
         this.§8!<§ = param2 || "";
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §[#,§.mClip.Container_Content.Title;
         _loc1_.Text.text = this.§<!I§;
         §[#,§.mClip.Container_Content.message.htmlText = this.§8!<§;
         §[#,§.mClip.addEventListener(TextEvent.LINK,this.§!"B§,false,0,true);
         _loc1_.goldenBg.mask = _loc1_.Text;
         §[#,§.mClip.Container_Content.mask = §[#,§.mClip.MovieClip_ContentMask;
      }
      
      private function §!"B§(param1:TextEvent) : void
      {
         if(param1.text == §-"F§)
         {
            §4"#§.singleton.popupManager.§1"@§(true,false);
            §4"#§.singleton.popupManager.openPopup(new §>" §(§^!S§.§'J§,§2!s§.TOP),true,true,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
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
