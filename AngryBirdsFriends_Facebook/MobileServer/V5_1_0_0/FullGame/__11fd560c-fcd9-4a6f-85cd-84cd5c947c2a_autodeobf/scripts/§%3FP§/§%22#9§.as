package §?P§
{
   import § %§.§1Q§;
   import §&$!§.§5l§;
   import §1!=§.AbstractPopup;
   import §2G§.§-#+§;
   import §3#T§.§,#[§;
   import §<h§.§%M§;
   import §@V§.§1"V§;
   import §@V§.§6"§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §"#9§ extends AbstractPopup
   {
       
      
      private var §6#Y§:§6"§;
      
      private var §&!5§:String = "";
      
      private var §;!U§:§5l§;
      
      public function §"#9§(param1:int, param2:int, param3:§5l§)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_ClaimBundlePopup[0]);
         this.§;!U§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.getItemByName("MovieClip_ClaimBundle_" + this.§;!U§.definition).setVisibility(true);
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         §,#2§.mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§]#o§);
         (§,#2§.getItemByName("TextField_Header") as §%M§).setText(this.§;!U§.§9§);
         (§,#2§.getItemByName("TextField_Content") as §%M§).setText(this.§;!U§.description);
         §,#2§.mClip.errorMessage.text = "";
         this.§&!5§ = this.§;!U§.definition;
         this.§3"7§();
      }
      
      private function §]#o§(param1:MouseEvent) : void
      {
         this.§["1§();
         §,#2§.mClip.errorMessage.text = "";
         this.§6#Y§ = new §1"V§();
         this.§6#Y§.addEventListener(Event.COMPLETE,this.§!"U§);
         this.§6#Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§4S§);
         this.§6#Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4S§);
         this.§6#Y§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§8w§);
         this.§6#Y§.addEventListener(§;m§.§!$5§,this.§4S§);
         this.§6#Y§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + this.§&!5§);
         _loc2_.method = URLRequestMethod.GET;
         this.§6#Y§.load(_loc2_);
      }
      
      private function §3"7§() : void
      {
         (§,#2§.getItemByName("MovieClip_Popup_Loading") as §,#[§).visible = false;
      }
      
      private function §["1§() : void
      {
         (§,#2§.getItemByName("MovieClip_Popup_Loading") as §,#[§).visible = true;
      }
      
      private function §8w§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §!"U§(param1:Event) : void
      {
         var _loc2_:Object = null;
         this.§3"7§();
         if(param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
            if(_loc2_.errorCode)
            {
               this.§6!n§(_loc2_);
            }
            else
            {
               this.§8!@§(_loc2_);
            }
         }
      }
      
      private function §4S§(param1:ErrorEvent) : void
      {
         this.§3"7§();
         this.§6!n§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §8!@§(param1:Object) : void
      {
         §-#+§.§6!§.§<"k§();
         this.close();
      }
      
      private function §6!n§(param1:Object) : void
      {
         §,#2§.mClip.errorMessage.text = param1.errorMessage;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§6#Y§)
         {
            this.§6#Y§.removeEventListener(Event.COMPLETE,this.§!"U§);
            this.§6#Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4S§);
            this.§6#Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4S§);
            this.§6#Y§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§8w§);
            this.§6#Y§.removeEventListener(§;m§.§!$5§,this.§4S§);
         }
         super.hide(param1,param2);
      }
   }
}
