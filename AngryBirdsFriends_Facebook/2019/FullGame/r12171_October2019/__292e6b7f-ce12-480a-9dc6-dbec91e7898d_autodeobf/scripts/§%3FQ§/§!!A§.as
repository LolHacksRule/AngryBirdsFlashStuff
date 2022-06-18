package §?Q§
{
   import § "L§.§7`§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §,#,§.§]§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §4S§.§@§;
   import §9T§.§[!2§;
   import §^"3§.§ #&§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §!!A§ extends AbstractPopup
   {
       
      
      private var §5!5§:§@#1§;
      
      private var §]"5§:String = "";
      
      private var §5$4§:§[!2§;
      
      public function §!!A§(param1:int, param2:int, param3:§[!2§)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_ClaimBundlePopup[0]);
         this.§5$4§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §;#'§.getItemByName("MovieClip_ClaimBundle_" + this.§5$4§.definition).setVisibility(true);
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         §;#'§.mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§8"J§);
         (§;#'§.getItemByName("TextField_Header") as §7`§).setText(this.§5$4§.§"l§);
         (§;#'§.getItemByName("TextField_Content") as §7`§).setText(this.§5$4§.description);
         §;#'§.mClip.errorMessage.text = "";
         this.§]"5§ = this.§5$4§.definition;
         this.§ U§();
      }
      
      private function §8"J§(param1:MouseEvent) : void
      {
         this.§!7§();
         §;#'§.mClip.errorMessage.text = "";
         this.§5!5§ = new §-$C§();
         this.§5!5§.addEventListener(Event.COMPLETE,this.§%!S§);
         this.§5!5§.addEventListener(IOErrorEvent.IO_ERROR,this.§="&§);
         this.§5!5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="&§);
         this.§5!5§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?$ §);
         this.§5!5§.addEventListener(§+!p§.§2$9§,this.§="&§);
         this.§5!5§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + this.§]"5§);
         _loc2_.method = URLRequestMethod.GET;
         this.§5!5§.load(_loc2_);
      }
      
      private function § U§() : void
      {
         (§;#'§.getItemByName("MovieClip_Popup_Loading") as § #&§).visible = false;
      }
      
      private function §!7§() : void
      {
         (§;#'§.getItemByName("MovieClip_Popup_Loading") as § #&§).visible = true;
      }
      
      private function §?$ §(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §%!S§(param1:Event) : void
      {
         var _loc2_:Object = null;
         this.§ U§();
         if(param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
            if(_loc2_.errorCode)
            {
               this.§@!D§(_loc2_);
            }
            else
            {
               this.§+K§(_loc2_);
            }
         }
      }
      
      private function §="&§(param1:ErrorEvent) : void
      {
         this.§ U§();
         this.§@!D§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §+K§(param1:Object) : void
      {
         §]#0§.§+!,§.§@!z§();
         this.close();
      }
      
      private function §@!D§(param1:Object) : void
      {
         §;#'§.mClip.errorMessage.text = param1.errorMessage;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§5!5§)
         {
            this.§5!5§.removeEventListener(Event.COMPLETE,this.§%!S§);
            this.§5!5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§="&§);
            this.§5!5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="&§);
            this.§5!5§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?$ §);
            this.§5!5§.removeEventListener(§+!p§.§2$9§,this.§="&§);
         }
         super.hide(param1,param2);
      }
   }
}
