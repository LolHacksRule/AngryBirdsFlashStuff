package §7N§
{
   import §8!-§.Item;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §["@§.§["%§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
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
   
   public class §@!,§ extends Popup
   {
       
      
      private var §^!n§:§,!S§;
      
      private const §7#§:String = "Type code here...";
      
      public function §@!,§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_RedeemGreenDayCode[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.btnSend.addEventListener(MouseEvent.CLICK,this.§1R§);
         TextField(mClip.codeTextField).addEventListener(FocusEvent.FOCUS_IN,this.§#"3§);
         mClip.errorMessage.text = "";
      }
      
      private function §1R§(param1:MouseEvent) : void
      {
         mClip.errorMessage.text = "";
         var _loc2_:String = mClip.codeTextField.text;
         if(_loc2_ == this.§7#§)
         {
            return;
         }
         this.§^!n§ = new §,!S§();
         this.§^!n§.addEventListener(Event.COMPLETE,this.§2h§);
         this.§^!n§.addEventListener(IOErrorEvent.IO_ERROR,this.§!r§);
         this.§^!n§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!r§);
         this.§^!n§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5F§);
         this.§^!n§.addEventListener(§"!n§.§"+§,this.§!r§);
         this.§^!n§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:URLRequest = §4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/code/redeem/" + _loc2_);
         _loc3_.method = URLRequestMethod.GET;
         this.§^!n§.load(_loc3_);
      }
      
      private function §5F§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §#"3§(param1:FocusEvent) : void
      {
         if(TextField(mClip.codeTextField).text == this.§7#§)
         {
            TextField(mClip.codeTextField).text = "";
         }
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §2h§(param1:Event) : void
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
               §[o§({"errorMessage":"Something went wrong. Please try again later."});
               return;
            }
            if(jsonOb.errorCode)
            {
               this.§[o§(jsonOb);
            }
            else
            {
               this.§%!7§(jsonOb);
            }
         }
      }
      
      private function §!r§(param1:ErrorEvent) : void
      {
         this.§[o§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §%!7§(param1:Object) : void
      {
         close();
         var _loc2_:Item = §["%§.§3U§(param1.avatarParts[0]);
         §43§.§-U§(_loc2_);
      }
      
      private function §[o§(param1:Object) : void
      {
         mClip.errorMessage.text = param1.errorMessage;
      }
   }
}
