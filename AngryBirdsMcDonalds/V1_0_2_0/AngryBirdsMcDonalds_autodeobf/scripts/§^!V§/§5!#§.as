package §^!V§
{
   import §!!h§.§1H§;
   import §"%§.§,!n§;
   import §2!6§.§^"§;
   import §4%§.§%0§;
   import §4%§.§9!Z§;
   import §6!Q§.§ !"§;
   import §7"§.§1! §;
   import §7"§.§8!#§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=<§.§ !Y§;
   import §>G§.§]!W§;
   import §@`§.§>!S§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §5!#§ extends Popup implements §1! §
   {
      
      private static var §'-§:Class = §4!o§;
       
      
      private var §3`§:StatePopupManager;
      
      private var §-!6§:§ !"§;
      
      public function §5!#§(param1:§>!S§, param2:StatePopupManager, param3:§ !"§)
      {
         super(§ !Y§.§^t§(§'-§),param1);
         §]E§ = param1;
         this.§3`§ = param2;
         this.§-!6§ = param3;
         this.§3`§.addEventListener(§^"§.§'!2§,this.onUiInteraction);
         (§]E§.getItemByName("TextField_UserNameFieldForgotPassword") as §]!W§).§^!m§.addEventListener(MouseEvent.CLICK,this.§>9§);
         (param1.getItemByName("TextField_UserNameFieldForgotPassword") as §]!W§).§"h§(§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         §[!<§.§'!S§.updateTextFields(§]E§,"ForgotPassword_Popup");
      }
      
      private function onUiInteraction(param1:§^"§) : void
      {
         this.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§2!?§();
               break;
            case "CANCEL_SEND_PASSWORD":
               (this.§-!6§ as §9!Z§).§]§.hide();
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§]E§.getItemByName("TextField_UserNameFieldForgotPassword") as §]!W§).§^!m§.removeEventListener(MouseEvent.CLICK,this.§>9§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§-!6§ as §9!Z§).§]§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"!2§.§3d§);
            §?!A§.play();
         }
         super.open(param1);
         §]E§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §>9§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §]E§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §]E§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§-!6§ as §9!Z§).§]§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         if(param1)
         {
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§"!2§.§+!^§);
            §?!A§.play();
         }
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         §%0§.sHighscoreSidebar.enableLoginButton(false);
         this.§3`§.removeEventListener(§^"§.§'!2§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §2!?§() : void
      {
         var _loc1_:String = §]E§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§3Y§(§8!#§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§3Y§(§8!#§.INVALID_EMAIL);
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
            "language":§[!<§.§'!S§.getLanguage()
         };
         var _loc8_:§1H§ = new §1H§(_loc7_,§'j§.§2H§ + "forgotPassword",this,§1H§.§`P§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§3Y§(§8!#§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
      }
      
      override public function updateTextFields() : void
      {
         §[!<§.§'!S§.updateTextFields(§]E§,"ForgotPassword_Popup");
      }
      
      private function §3Y§(param1:String) : void
      {
         §]E§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§-!6§ as §9!Z§).§]§.show(param1);
      }
   }
}
