package §5!Y§
{
   import §%i§.§4"9§;
   import §,l§.§#!,§;
   import §1!t§.§!!G§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §^"F§.§8!§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<r§ extends Popup
   {
       
      
      private var §!!l§:§3d§;
      
      private var §<!9§:String = "";
      
      public function §<r§(param1:§`_§, param2:StatePopupManager, param3:§8!§)
      {
         super(§ "<§.§%I§.Views.PopupView_ClaimBundlePopup[0],param1);
         param1.getItemByName("MovieClip_ClaimBundle_" + param3.§[!2§).setVisibility(true);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§7!S§);
         (param1.getItemByName("TextField_Header") as §4"9§).setText(param3.§?"7§);
         (param1.getItemByName("TextField_Content") as §4"9§).setText(param3.description);
         mClip.errorMessage.text = "";
         this.§<!9§ = param3.§[!2§;
         this.§,!$§();
      }
      
      private function §7!S§(param1:MouseEvent) : void
      {
         this.§-"!§();
         mClip.errorMessage.text = "";
         this.§!!l§ = new §3d§();
         this.§!!l§.addEventListener(Event.COMPLETE,this.§9!y§);
         this.§!!l§.addEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
         this.§!!l§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
         this.§!!l§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!'§);
         this.§!!l§.addEventListener(§9G§.§33§,this.§?e§);
         this.§!!l§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/claimfreebundle/" + this.§<!9§);
         _loc2_.method = URLRequestMethod.GET;
         this.§!!l§.load(_loc2_);
      }
      
      private function §,!$§() : void
      {
         (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = false;
      }
      
      private function §-"!§() : void
      {
         (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = true;
      }
      
      private function §+!'§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §9!y§(param1:Event) : void
      {
         var jsonOb:Object = null;
         var e:Event = param1;
         this.§,!$§();
         if(e.currentTarget.data)
         {
            try
            {
               jsonOb = JSON.parse(e.currentTarget.data);
            }
            catch(e:Error)
            {
               §;"G§({"errorMessage":"Something went wrong. Please try again later."});
               return;
            }
            if(jsonOb.errorCode)
            {
               this.§;"G§(jsonOb);
            }
            else
            {
               this.§&! §(jsonOb);
            }
         }
      }
      
      private function §?e§(param1:ErrorEvent) : void
      {
         this.§,!$§();
         this.§;"G§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §&! §(param1:Object) : void
      {
         §#!,§.§&"5§.§@J§();
         this.close();
      }
      
      private function §;"G§(param1:Object) : void
      {
         mClip.errorMessage.text = param1.errorMessage;
      }
      
      override public function close() : void
      {
         if(this.§!!l§)
         {
            this.§!!l§.removeEventListener(Event.COMPLETE,this.§9!y§);
            this.§!!l§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
            this.§!!l§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
            this.§!!l§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!'§);
            this.§!!l§.removeEventListener(§9G§.§33§,this.§?e§);
         }
         super.close();
      }
   }
}
