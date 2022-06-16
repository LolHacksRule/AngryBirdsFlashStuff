package §?"R§
{
   import §%$!§.§%h§;
   import §'!U§.§4P§;
   import §'"-§.§5!"§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §]$9§.§5$!§;
   import §]$9§.§5$5§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.AbstractPopup;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §0!5§ extends AbstractPopup
   {
       
      
      private var §[!v§:§5$5§;
      
      private var §1"V§:String = "";
      
      private var §-!!§:§5!"§;
      
      public function §0!5§(param1:int, param2:int, param3:§5!"§)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_ClaimBundlePopup[0]);
         this.§-!!§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §7!j§.getItemByName("MovieClip_ClaimBundle_" + this.§-!!§.definition).setVisibility(true);
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §7!j§.mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§<!,§);
         (§7!j§.getItemByName("TextField_Header") as §]$!§).setText(this.§-!!§.§["u§);
         (§7!j§.getItemByName("TextField_Content") as §]$!§).setText(this.§-!!§.description);
         §7!j§.mClip.errorMessage.text = "";
         this.§1"V§ = this.§-!!§.definition;
         this.§=!A§();
      }
      
      private function §<!,§(param1:MouseEvent) : void
      {
         this.§+"q§();
         §7!j§.mClip.errorMessage.text = "";
         this.§[!v§ = new §5$!§();
         this.§[!v§.addEventListener(Event.COMPLETE,this.§9#L§);
         this.§[!v§.addEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
         this.§[!v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
         this.§[!v§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2Z§);
         this.§[!v§.addEventListener(§>#J§.§-$%§,this.§[^§);
         this.§[!v§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + this.§1"V§);
         _loc2_.method = URLRequestMethod.GET;
         this.§[!v§.load(_loc2_);
      }
      
      private function §=!A§() : void
      {
         (§7!j§.getItemByName("MovieClip_Popup_Loading") as §4P§).visible = false;
      }
      
      private function §+"q§() : void
      {
         (§7!j§.getItemByName("MovieClip_Popup_Loading") as §4P§).visible = true;
      }
      
      private function §2Z§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §9#L§(param1:Event) : void
      {
         var _loc2_:Object = null;
         this.§=!A§();
         if(param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
            if(_loc2_.errorCode)
            {
               this.§^!K§(_loc2_);
            }
            else
            {
               this.§#"2§(_loc2_);
            }
         }
      }
      
      private function §[^§(param1:ErrorEvent) : void
      {
         this.§=!A§();
         this.§^!K§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §#"2§(param1:Object) : void
      {
         §%h§.§3!]§.§=L§();
         this.close();
      }
      
      private function §^!K§(param1:Object) : void
      {
         §7!j§.mClip.errorMessage.text = param1.errorMessage;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§[!v§)
         {
            this.§[!v§.removeEventListener(Event.COMPLETE,this.§9#L§);
            this.§[!v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
            this.§[!v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
            this.§[!v§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2Z§);
            this.§[!v§.removeEventListener(§>#J§.§-$%§,this.§[^§);
         }
         super.hide(param1,param2);
      }
   }
}
