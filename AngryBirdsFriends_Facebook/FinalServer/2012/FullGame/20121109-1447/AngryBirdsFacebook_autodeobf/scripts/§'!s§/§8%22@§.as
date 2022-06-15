package §'!s§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §!K§.Item;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0p§.§3!D§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   public class §8"@§ extends Popup
   {
       
      
      private var §<0§:§0]§;
      
      private const §!!s§:String = "Type code here...";
      
      public function §8"@§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_RedeemGreenDayCode[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.btnSend.addEventListener(MouseEvent.CLICK,this.§2" §);
         TextField(mClip.codeTextField).addEventListener(FocusEvent.FOCUS_IN,this.§&"9§);
         mClip.errorMessage.text = "";
      }
      
      private function §2" §(param1:MouseEvent) : void
      {
         mClip.errorMessage.text = "";
         var _loc2_:String = mClip.codeTextField.text;
         if(_loc2_ == this.§!!s§)
         {
            return;
         }
         this.§<0§ = new §0]§();
         this.§<0§.addEventListener(Event.COMPLETE,this.§2p§);
         this.§<0§.addEventListener(IOErrorEvent.IO_ERROR,this.§>%§);
         this.§<0§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>%§);
         this.§<0§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+X§);
         this.§<0§.addEventListener(§+!D§.§25§,this.§>%§);
         this.§<0§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:URLRequest = §-!l§.§%""§(AngryBirdsFP11.§76§ + "/code/redeem/" + _loc2_);
         _loc3_.method = URLRequestMethod.GET;
         this.§<0§.load(_loc3_);
      }
      
      private function §+X§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §&"9§(param1:FocusEvent) : void
      {
         if(TextField(mClip.codeTextField).text == this.§!!s§)
         {
            TextField(mClip.codeTextField).text = "";
         }
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §2p§(param1:Event) : void
      {
         var jsonOb:Object = null;
         var e:Event = param1;
         if(e.currentTarget.data)
         {
            try
            {
               jsonOb = JSON.parse(e.currentTarget.data);
            }
            catch(e:Error)
            {
               §"!8§({"errorMessage":"Something went wrong. Please try again later."});
               return;
            }
            if(jsonOb.errorCode)
            {
               this.§"!8§(jsonOb);
            }
            else
            {
               this.§%!b§(jsonOb);
            }
         }
      }
      
      private function §>%§(param1:ErrorEvent) : void
      {
         this.§"!8§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §%!b§(param1:Object) : void
      {
         close();
         var _loc2_:Item = §3!D§.§ @§(param1.avatarParts[0]);
         §%?§.§&'§(_loc2_);
      }
      
      private function §"!8§(param1:Object) : void
      {
         mClip.errorMessage.text = param1.errorMessage;
      }
   }
}
