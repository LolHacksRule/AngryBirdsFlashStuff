package §>z§
{
   import §!#C§.§ $?§;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §,!Q§.§+!2§;
   import §-;§.§0h§;
   import §0!s§.AbstractPopup;
   import §1L§.§!!o§;
   import §1L§.§9#f§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §4"V§ extends AbstractPopup
   {
       
      
      private var §%$9§:§9#f§;
      
      private var §'!8§:String = "";
      
      private var §63§:§0h§;
      
      public function §4"V§(param1:int, param2:int, param3:§0h§)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_ClaimBundlePopup[0]);
         this.§63§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §&!M§.getItemByName("MovieClip_ClaimBundle_" + this.§63§.definition).setVisibility(true);
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         §&!M§.mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§@"!§);
         (§&!M§.getItemByName("TextField_Header") as §`"$§).setText(this.§63§.§ #=§);
         (§&!M§.getItemByName("TextField_Content") as §`"$§).setText(this.§63§.description);
         §&!M§.mClip.errorMessage.text = "";
         this.§'!8§ = this.§63§.definition;
         this.§6#Z§();
      }
      
      private function §@"!§(param1:MouseEvent) : void
      {
         this.§+"D§();
         §&!M§.mClip.errorMessage.text = "";
         this.§%$9§ = new §!!o§();
         this.§%$9§.addEventListener(Event.COMPLETE,this.§2;§);
         this.§%$9§.addEventListener(IOErrorEvent.IO_ERROR,this.§=#=§);
         this.§%$9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#=§);
         this.§%$9§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7#P§);
         this.§%$9§.addEventListener(§>5§.§@!@§,this.§=#=§);
         this.§%$9§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + this.§'!8§);
         _loc2_.method = URLRequestMethod.GET;
         this.§%$9§.load(_loc2_);
      }
      
      private function §6#Z§() : void
      {
         (§&!M§.getItemByName("MovieClip_Popup_Loading") as §+!2§).visible = false;
      }
      
      private function §+"D§() : void
      {
         (§&!M§.getItemByName("MovieClip_Popup_Loading") as §+!2§).visible = true;
      }
      
      private function §7#P§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §2;§(param1:Event) : void
      {
         var _loc2_:Object = null;
         this.§6#Z§();
         if(param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
            if(_loc2_.errorCode)
            {
               this.§>#Z§(_loc2_);
            }
            else
            {
               this.§4#b§(_loc2_);
            }
         }
      }
      
      private function §=#=§(param1:ErrorEvent) : void
      {
         this.§6#Z§();
         this.§>#Z§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §4#b§(param1:Object) : void
      {
         § $?§.§`"H§.§-!P§();
         this.close();
      }
      
      private function §>#Z§(param1:Object) : void
      {
         §&!M§.mClip.errorMessage.text = param1.errorMessage;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§%$9§)
         {
            this.§%$9§.removeEventListener(Event.COMPLETE,this.§2;§);
            this.§%$9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=#=§);
            this.§%$9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#=§);
            this.§%$9§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7#P§);
            this.§%$9§.removeEventListener(§>5§.§@!@§,this.§=#=§);
         }
         super.hide(param1,param2);
      }
   }
}
