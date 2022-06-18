package § h§
{
   import §2$;§.§-$5§;
   import §7"1§.§!"`§;
   import §7"1§.§"$D§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.AbstractPopup;
   import §<"I§.§^#o§;
   import §<8§.§;"k§;
   import §>#Y§.§!",§;
   import §[#A§.§&n§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §-;§ extends AbstractPopup
   {
       
      
      private var §!$E§:§"$D§;
      
      private var §]$3§:String = "";
      
      private var §=$A§:§^#o§;
      
      public function §-;§(param1:int, param2:int, param3:§^#o§)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_ClaimBundlePopup[0]);
         this.§=$A§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §'o§.getItemByName("MovieClip_ClaimBundle_" + this.§=$A§.definition).setVisibility(true);
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         §'o§.mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§,!_§);
         (§'o§.getItemByName("TextField_Header") as §-$5§).setText(this.§=$A§.§[E§);
         (§'o§.getItemByName("TextField_Content") as §-$5§).setText(this.§=$A§.description);
         §'o§.mClip.errorMessage.text = "";
         this.§]$3§ = this.§=$A§.definition;
         this.§5$A§();
      }
      
      private function §,!_§(param1:MouseEvent) : void
      {
         this.§#!=§();
         §'o§.mClip.errorMessage.text = "";
         this.§!$E§ = new §5"f§();
         this.§!$E§.addEventListener(Event.COMPLETE,this.§,!P§);
         this.§!$E§.addEventListener(IOErrorEvent.IO_ERROR,this.§7#C§);
         this.§!$E§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7#C§);
         this.§!$E§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`Y§);
         this.§!$E§.addEventListener(§;" §.§`S§,this.§7#C§);
         this.§!$E§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + this.§]$3§);
         _loc2_.method = URLRequestMethod.GET;
         this.§!$E§.load(_loc2_);
      }
      
      private function §5$A§() : void
      {
         (§'o§.getItemByName("MovieClip_Popup_Loading") as §;"k§).visible = false;
      }
      
      private function §#!=§() : void
      {
         (§'o§.getItemByName("MovieClip_Popup_Loading") as §;"k§).visible = true;
      }
      
      private function §`Y§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §,!P§(param1:Event) : void
      {
         var _loc2_:Object = null;
         this.§5$A§();
         if(param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
            if(_loc2_.errorCode)
            {
               this.§4#T§(_loc2_);
            }
            else
            {
               this.§-!o§(_loc2_);
            }
         }
      }
      
      private function §7#C§(param1:ErrorEvent) : void
      {
         this.§5$A§();
         this.§4#T§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §-!o§(param1:Object) : void
      {
         §!",§.§3"1§.§,"&§();
         this.close();
      }
      
      private function §4#T§(param1:Object) : void
      {
         §'o§.mClip.errorMessage.text = param1.errorMessage;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§!$E§)
         {
            this.§!$E§.removeEventListener(Event.COMPLETE,this.§,!P§);
            this.§!$E§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7#C§);
            this.§!$E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7#C§);
            this.§!$E§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`Y§);
            this.§!$E§.removeEventListener(§;" §.§`S§,this.§7#C§);
         }
         super.hide(param1,param2);
      }
   }
}
