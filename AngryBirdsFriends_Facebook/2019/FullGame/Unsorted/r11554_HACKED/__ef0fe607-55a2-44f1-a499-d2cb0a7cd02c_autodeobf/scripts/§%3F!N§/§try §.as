package §?!N§
{
   import §%#v§.§0"j§;
   import §-#R§.§&7§;
   import §4!n§.§'!V§;
   import §5!$§.§-#j§;
   import §;$5§.AbstractPopup;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>"Q§.§7"2§;
   import §]"'§.§#$D§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §try § extends AbstractPopup
   {
       
      
      private var §!#,§:§7"2§;
      
      private var §`#L§:String = "";
      
      private var §'!w§:§&7§;
      
      public function §try §(param1:int, param2:int, param3:§&7§)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_ClaimBundlePopup[0]);
         this.§'!w§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §8#Y§.getItemByName("MovieClip_ClaimBundle_" + this.§'!w§.definition).setVisibility(true);
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         §8#Y§.mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§ !I§);
         (§8#Y§.getItemByName("TextField_Header") as §-#j§).setText(this.§'!w§.§[L§);
         (§8#Y§.getItemByName("TextField_Content") as §-#j§).setText(this.§'!w§.description);
         §8#Y§.mClip.errorMessage.text = "";
         this.§`#L§ = this.§'!w§.definition;
         this.§'#t§();
      }
      
      private function § !I§(param1:MouseEvent) : void
      {
         this.§,!4§();
         §8#Y§.mClip.errorMessage.text = "";
         this.§!#,§ = new §'!n§();
         this.§!#,§.addEventListener(Event.COMPLETE,this.§&1§);
         this.§!#,§.addEventListener(IOErrorEvent.IO_ERROR,this.§#O§);
         this.§!#,§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#O§);
         this.§!#,§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5Q§);
         this.§!#,§.addEventListener(§"!;§.§ #x§,this.§#O§);
         this.§!#,§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + this.§`#L§);
         _loc2_.method = URLRequestMethod.GET;
         this.§!#,§.load(_loc2_);
      }
      
      private function §'#t§() : void
      {
         (§8#Y§.getItemByName("MovieClip_Popup_Loading") as §'!V§).visible = false;
      }
      
      private function §,!4§() : void
      {
         (§8#Y§.getItemByName("MovieClip_Popup_Loading") as §'!V§).visible = true;
      }
      
      private function §5Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §&1§(param1:Event) : void
      {
         var _loc2_:Object = null;
         this.§'#t§();
         if(param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
            if(_loc2_.errorCode)
            {
               this.§8",§(_loc2_);
            }
            else
            {
               this.§4"S§(_loc2_);
            }
         }
      }
      
      private function §#O§(param1:ErrorEvent) : void
      {
         this.§'#t§();
         this.§8",§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §4"S§(param1:Object) : void
      {
         §#$D§.§?q§.§>!'§();
         this.close();
      }
      
      private function §8",§(param1:Object) : void
      {
         §8#Y§.mClip.errorMessage.text = param1.errorMessage;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§!#,§)
         {
            this.§!#,§.removeEventListener(Event.COMPLETE,this.§&1§);
            this.§!#,§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#O§);
            this.§!#,§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#O§);
            this.§!#,§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5Q§);
            this.§!#,§.removeEventListener(§"!;§.§ #x§,this.§#O§);
         }
         super.hide(param1,param2);
      }
   }
}
