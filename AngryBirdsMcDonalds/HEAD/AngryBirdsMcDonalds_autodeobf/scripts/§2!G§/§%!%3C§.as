package §2!G§
{
   import §#!1§.§!!X§;
   import §&6§.§,!Y§;
   import §&6§.§`!T§;
   import §'+§.§<@§;
   import §,!C§.§3!&§;
   import §,!H§.§ for§;
   import §,E§.§"!K§;
   import §4!A§.§7#§;
   import §5!W§.§,!B§;
   import §5!W§.§`X§;
   import §7p§.§%g§;
   import §9s§.§!!`§;
   import §@-§.§[y§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §%!<§ extends Popup implements §`!T§
   {
      
      private static var §in§:Class = §4N§;
       
      
      private var §;5§:StatePopupManager;
      
      private var §%!g§:§ for§;
      
      public function §%!<§(param1:§%g§, param2:StatePopupManager, param3:§ for§)
      {
         super(§<@§.§,'§(§in§),param1);
         §7Y§ = param1;
         this.§;5§ = param2;
         this.§%!g§ = param3;
         this.§;5§.addEventListener(§!!`§.§5!R§,this.onUiInteraction);
         (§7Y§.getItemByName("TextField_UserNameFieldForgotPassword") as §3!&§).§>!3§.addEventListener(MouseEvent.CLICK,this.§1!B§);
         (param1.getItemByName("TextField_UserNameFieldForgotPassword") as §3!&§).§1S§(§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         §!!X§.§5!!§.updateTextFields(§7Y§,"ForgotPassword_Popup");
      }
      
      private function onUiInteraction(param1:§!!`§) : void
      {
         this.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§5!Z§();
               break;
            case "CANCEL_SEND_PASSWORD":
               (this.§%!g§ as §,!B§).§;![§.hide();
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§7Y§.getItemByName("TextField_UserNameFieldForgotPassword") as §3!&§).§>!3§.removeEventListener(MouseEvent.CLICK,this.§1!B§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§%!g§ as §,!B§).§;![§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§7#§.§=Y§);
            §]R§.play();
         }
         super.open(param1);
         §7Y§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §1!B§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §7Y§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §7Y§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§%!g§ as §,!B§).§;![§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         if(param1)
         {
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§7#§.§4@§);
            §]R§.play();
         }
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         §`X§.sHighscoreSidebar.enableLoginButton(false);
         this.§;5§.removeEventListener(§!!`§.§5!R§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §5!Z§() : void
      {
         var _loc1_:String = §7Y§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§>m§(§,!Y§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§>m§(§,!Y§.INVALID_EMAIL);
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
            "language":§!!X§.§5!!§.getLanguage()
         };
         var _loc8_:§"!K§ = new §"!K§(_loc7_,§3![§.§=![§ + "forgotPassword",this,§"!K§.§<!4§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§>m§(§,!Y§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
      }
      
      override public function updateTextFields() : void
      {
         §!!X§.§5!!§.updateTextFields(§7Y§,"ForgotPassword_Popup");
      }
      
      private function §>m§(param1:String) : void
      {
         §7Y§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§%!g§ as §,!B§).§;![§.show(param1);
      }
   }
}
