package §&!"§
{
   import § !i§.§=?§;
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §`!?§.Item;
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
   
   public class §'"8§ extends Popup
   {
       
      
      private var §,!L§:§9!S§;
      
      private const §8!G§:String = "Type code here...";
      
      public function §'"8§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupView_RedeemGreenDayCode[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.btnSend.addEventListener(MouseEvent.CLICK,this.§=!5§);
         TextField(mClip.codeTextField).addEventListener(FocusEvent.FOCUS_IN,this.§=!w§);
         mClip.errorMessage.text = "";
      }
      
      private function §=!5§(param1:MouseEvent) : void
      {
         mClip.errorMessage.text = "";
         var _loc2_:String = mClip.codeTextField.text;
         if(_loc2_ == this.§8!G§)
         {
            return;
         }
         this.§,!L§ = new §9!S§();
         this.§,!L§.addEventListener(Event.COMPLETE,this.§3M§);
         this.§,!L§.addEventListener(IOErrorEvent.IO_ERROR,this.§ !9§);
         this.§,!L§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ !9§);
         this.§,!L§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-"§);
         this.§,!L§.addEventListener(§="B§.§2"B§,this.§ !9§);
         this.§,!L§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:URLRequest = §?x§.§>t§(AngryBirdsFP11.§#"@§ + "/code/redeem/" + _loc2_);
         _loc3_.method = URLRequestMethod.GET;
         this.§,!L§.load(_loc3_);
      }
      
      private function §-"§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §=!w§(param1:FocusEvent) : void
      {
         if(TextField(mClip.codeTextField).text == this.§8!G§)
         {
            TextField(mClip.codeTextField).text = "";
         }
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §3M§(param1:Event) : void
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
               §<a§({"errorMessage":"Something went wrong. Please try again later."});
               return;
            }
            if(jsonOb.errorCode)
            {
               this.§<a§(jsonOb);
            }
            else
            {
               this.§>!B§(jsonOb);
            }
         }
      }
      
      private function § !9§(param1:ErrorEvent) : void
      {
         this.§<a§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §>!B§(param1:Object) : void
      {
         close();
         var _loc2_:Item = §=?§.§7[§(param1.avatarParts[0]);
         §`B§.§8;§(_loc2_);
      }
      
      private function §<a§(param1:Object) : void
      {
         mClip.errorMessage.text = param1.errorMessage;
      }
   }
}
