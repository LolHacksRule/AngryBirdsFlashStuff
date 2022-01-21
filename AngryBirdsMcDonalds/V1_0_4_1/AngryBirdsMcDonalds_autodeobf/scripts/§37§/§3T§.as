package §37§
{
   import §#!q§.§`q§;
   import §+$§.§[!a§;
   import §0i§.§@^§;
   import §1!^§.§,!n§;
   import §3!S§.§-!^§;
   import §3<§.§-2§;
   import §7E§.§ =§;
   import §<! §.§#!b§;
   import §<! §.§<<§;
   import §[h§.§ set§;
   import §^m§.§=!a§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §3T§ extends Popup implements §<<§
   {
      
      private static var §"6§:Class = §^!2§;
       
      
      private var §-W§:StatePopupManager;
      
      private var §8p§:§ =§;
      
      public function §3T§(param1:§-2§, param2:StatePopupManager, param3:§ =§)
      {
         super(§@^§.§'K§(§"6§),param1);
         §9K§ = param1;
         this.§-W§ = param2;
         this.§8p§ = param3;
         this.§-W§.addEventListener(§-!^§.§?!G§,this.onUiInteraction);
         (§9K§.getItemByName("TextField_UserNameFieldForgotPassword") as § set§).§ !K§.addEventListener(MouseEvent.CLICK,this.§'!j§);
         (param1.getItemByName("TextField_UserNameFieldForgotPassword") as § set§).§,O§(§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         §`q§.§9$§.updateTextFields(§9K§,"ForgotPassword_Popup");
      }
      
      private function onUiInteraction(param1:§-!^§) : void
      {
         this.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§=E§();
               break;
            case "CANCEL_SEND_PASSWORD":
               (this.§8p§ as § try§).§2M§.hide();
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§9K§.getItemByName("TextField_UserNameFieldForgotPassword") as § set§).§ !K§.removeEventListener(MouseEvent.CLICK,this.§'!j§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§8p§ as § try§).§2M§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§=!a§.§@!m§);
            §+!Y§.play();
         }
         super.open(param1);
         §9K§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §'!j§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §9K§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §9K§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§8p§ as § try§).§2M§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         if(param1)
         {
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§=!a§.§%!R§);
            §+!Y§.play();
         }
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         §2'§.sHighscoreSidebar.enableLoginButton(false);
         this.§-W§.removeEventListener(§-!^§.§?!G§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §=E§() : void
      {
         var _loc1_:String = §9K§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§2!P§(§#!b§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§2!P§(§#!b§.INVALID_EMAIL);
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
            "language":§`q§.§9$§.getLanguage()
         };
         var _loc8_:§,!n§ = new §,!n§(_loc7_,§9!_§.§?!k§ + "forgotPassword",this,§,!n§.§-I§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§2!P§(§#!b§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
      }
      
      override public function updateTextFields() : void
      {
         §`q§.§9$§.updateTextFields(§9K§,"ForgotPassword_Popup");
      }
      
      private function §2!P§(param1:String) : void
      {
         §9K§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§8p§ as § try§).§2M§.show(param1);
      }
   }
}
