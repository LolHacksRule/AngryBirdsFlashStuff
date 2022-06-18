package § o§
{
   import § $%§.§%§;
   import § $%§.§0#`§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import §%#A§.§^!4§;
   import §&"J§.§4"W§;
   import §8#D§.§=>§;
   import §;P§.§;"'§;
   import §<"1§.§@!N§;
   import §<#m§.AbstractPopup;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class § !M§ extends AbstractPopup
   {
       
      
      private var §6"'§:§0#`§;
      
      private var §3"3§:String = "";
      
      private var §4]§:§;"'§;
      
      public function § !M§(param1:int, param2:int, param3:§;"'§)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_ClaimBundlePopup[0]);
         this.§4]§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §1"6§.getItemByName("MovieClip_ClaimBundle_" + this.§4]§.definition).setVisibility(true);
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         §1"6§.mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§;",§);
         (§1"6§.getItemByName("TextField_Header") as §^!4§).setText(this.§4]§.§,!&§);
         (§1"6§.getItemByName("TextField_Content") as §^!4§).setText(this.§4]§.description);
         §1"6§.mClip.errorMessage.text = "";
         this.§3"3§ = this.§4]§.definition;
         this.§2H§();
      }
      
      private function §;",§(param1:MouseEvent) : void
      {
         this.§5!_§();
         §1"6§.mClip.errorMessage.text = "";
         this.§6"'§ = new §4"v§();
         this.§6"'§.addEventListener(Event.COMPLETE,this.§?"i§);
         this.§6"'§.addEventListener(IOErrorEvent.IO_ERROR,this.§5!9§);
         this.§6"'§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!9§);
         this.§6"'§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%`§);
         this.§6"'§.addEventListener(§]e§.§5!;§,this.§5!9§);
         this.§6"'§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + this.§3"3§);
         _loc2_.method = URLRequestMethod.GET;
         this.§6"'§.load(_loc2_);
      }
      
      private function §2H§() : void
      {
         (§1"6§.getItemByName("MovieClip_Popup_Loading") as §@!N§).visible = false;
      }
      
      private function §5!_§() : void
      {
         (§1"6§.getItemByName("MovieClip_Popup_Loading") as §@!N§).visible = true;
      }
      
      private function §%`§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §?"i§(param1:Event) : void
      {
         var _loc2_:Object = null;
         this.§2H§();
         if(param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
            if(_loc2_.errorCode)
            {
               this.§3$'§(_loc2_);
            }
            else
            {
               this.§0#V§(_loc2_);
            }
         }
      }
      
      private function §5!9§(param1:ErrorEvent) : void
      {
         this.§2H§();
         this.§3$'§({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function §0#V§(param1:Object) : void
      {
         §4"W§.§ "D§.§@!z§();
         this.close();
      }
      
      private function §3$'§(param1:Object) : void
      {
         §1"6§.mClip.errorMessage.text = param1.errorMessage;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§6"'§)
         {
            this.§6"'§.removeEventListener(Event.COMPLETE,this.§?"i§);
            this.§6"'§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5!9§);
            this.§6"'§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!9§);
            this.§6"'§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%`§);
            this.§6"'§.removeEventListener(§]e§.§5!;§,this.§5!9§);
         }
         super.hide(param1,param2);
      }
   }
}
