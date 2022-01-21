package §+F§
{
   import §&!V§.§=O§;
   import §,i§.§7;§;
   import §2y§.§?`§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   import §7-§.§-e§;
   import §7-§.§[!$§;
   import §8T§.§[!R§;
   import §<Z§.§!!W§;
   import §<Z§.§1!X§;
   import §?I§.§`E§;
   import §`!"§.§;i§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<]§ extends Popup implements §!!W§
   {
      
      private static var §6>§:Class = §>#§;
       
      
      private var §?E§:StatePopupManager;
      
      private var §'A§:§=O§;
      
      public function §<]§(param1:§"!n§, param2:StatePopupManager, param3:§=O§)
      {
         super(§1[§.§4L§(§6>§),param1);
         §<D§ = param1;
         this.§?E§ = param2;
         this.§'A§ = param3;
         this.§?E§.addEventListener(§[!R§.§11§,this.onUiInteraction);
         (§<D§.getItemByName("TextField_UserNameFieldForgotPassword") as §?`§).§0!j§.addEventListener(MouseEvent.CLICK,this.§%6§);
         (param1.getItemByName("TextField_UserNameFieldForgotPassword") as §?`§).§;!!§(§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         §`E§.§@!7§.updateTextFields(§<D§,"ForgotPassword_Popup");
      }
      
      private function onUiInteraction(param1:§[!R§) : void
      {
         this.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§`C§();
               break;
            case "CANCEL_SEND_PASSWORD":
               (this.§'A§ as §-e§).§5!0§.hide();
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§<D§.getItemByName("TextField_UserNameFieldForgotPassword") as §?`§).§0!j§.removeEventListener(MouseEvent.CLICK,this.§%6§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§'A§ as §-e§).§5!0§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;i§.§<l§);
            §"! §.play();
         }
         super.open(param1);
         §<D§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §%6§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §<D§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §<D§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§'A§ as §-e§).§5!0§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         if(param1)
         {
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;i§.§3C§);
            §"! §.play();
         }
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         §[!$§.sHighscoreSidebar.enableLoginButton(false);
         this.§?E§.removeEventListener(§[!R§.§11§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §`C§() : void
      {
         var _loc1_:String = §<D§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§`!%§(§1!X§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§`!%§(§1!X§.INVALID_EMAIL);
            return;
         }
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object;
         (_loc6_ = {}).email = _loc1_;
         var _loc7_:Object = {
            "type":"forgotPassword",
            "player":_loc6_,
            "language":§`E§.§@!7§.getLanguage()
         };
         var _loc8_:§7;§ = new §7;§(_loc7_,§2!M§.§`8§ + "forgotPassword",this,§7;§.§[%§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§`!%§(§1!X§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
      }
      
      override public function updateTextFields() : void
      {
         §`E§.§@!7§.updateTextFields(§<D§,"ForgotPassword_Popup");
      }
      
      private function §`!%§(param1:String) : void
      {
         §<D§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§'A§ as §-e§).§5!0§.show(param1);
      }
   }
}
