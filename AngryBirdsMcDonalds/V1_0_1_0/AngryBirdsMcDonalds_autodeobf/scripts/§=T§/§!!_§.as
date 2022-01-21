package §=T§
{
   import § !1§.§@!g§;
   import § !1§.§[n§;
   import §%<§.§+V§;
   import §%<§.§=@§;
   import §'Y§.§6Q§;
   import §,![§.§'!S§;
   import §-1§.§%#§;
   import §1!D§.§0S§;
   import §3l§.§9m§;
   import §8!X§.§'f§;
   import §9!8§.§0!7§;
   import §^5§.§]!,§;
   import §`!W§.§^!e§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §!!_§ extends Popup implements §[n§
   {
      
      private static var §@c§:Class = §9Y§;
       
      
      private var §>V§:StatePopupManager;
      
      private var §%O§:§]!,§;
      
      public function §!!_§(param1:§0!7§, param2:StatePopupManager, param3:§]!,§)
      {
         super(§^!e§.§=j§(§@c§),param1);
         §+!H§ = param1;
         this.§>V§ = param2;
         this.§%O§ = param3;
         this.§>V§.addEventListener(§'f§.§5a§,this.onUiInteraction);
         (§+!H§.getItemByName("TextField_UserNameFieldForgotPassword") as §'!S§).§'!Z§.addEventListener(MouseEvent.CLICK,this.§]4§);
         (param1.getItemByName("TextField_UserNameFieldForgotPassword") as §'!S§).§<j§(§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         §0S§.§>E§.updateTextFields(§+!H§,"ForgotPassword_Popup");
      }
      
      private function onUiInteraction(param1:§'f§) : void
      {
         this.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§#!_§();
               break;
            case "CANCEL_SEND_PASSWORD":
               (this.§%O§ as §=@§).§9!"§.hide();
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§+!H§.getItemByName("TextField_UserNameFieldForgotPassword") as §'!S§).§'!Z§.removeEventListener(MouseEvent.CLICK,this.§]4§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§%O§ as §=@§).§9!"§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9m§.§'e§);
            §>]§.play();
         }
         super.open(param1);
         §+!H§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §]4§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §+!H§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §+!H§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§%O§ as §=@§).§9!"§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         if(param1)
         {
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9m§.§+y§);
            §>]§.play();
         }
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         §+V§.sHighscoreSidebar.enableLoginButton(false);
         this.§>V§.removeEventListener(§'f§.§5a§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §#!_§() : void
      {
         var _loc1_:String = §+!H§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§ !L§(§@!g§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§ !L§(§@!g§.INVALID_EMAIL);
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
            "language":§0S§.§>E§.getLanguage()
         };
         var _loc8_:§6Q§ = new §6Q§(_loc7_,§;!4§.§'!O§ + "forgotPassword",this,§6Q§.§&!0§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§ !L§(§@!g§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
      }
      
      override public function updateTextFields() : void
      {
         §0S§.§>E§.updateTextFields(§+!H§,"ForgotPassword_Popup");
      }
      
      private function § !L§(param1:String) : void
      {
         §+!H§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§%O§ as §=@§).§9!"§.show(param1);
      }
   }
}
