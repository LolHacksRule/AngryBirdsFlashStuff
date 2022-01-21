package §]q§
{
   import § e§.§&!&§;
   import §"f§.§%1§;
   import §,§.§6!,§;
   import §0;§.§3=§;
   import §31§.§?![§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §8<§.§with§;
   import §>!<§.§-E§;
   import §[l§.§ A§;
   import §[l§.§,Q§;
   import §`!@§.§#e§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §^0§ extends Popup implements §[!X§
   {
      
      private static var §@G§:Class = §<!^§;
       
      
      private var §=!P§:StatePopupManager;
      
      private var §43§:§1!b§;
      
      public function §^0§(param1:§3=§, param2:StatePopupManager, param3:§1!b§)
      {
         super(§with§.§ !0§(§@G§),param1);
         §"]§ = param1;
         this.§=!P§ = param2;
         this.§43§ = param3;
         this.§=!P§.addEventListener(§6!,§.§;I§,this.onUiInteraction);
         (§"]§.getItemByName("TextField_UserNameFieldForgotPassword") as §?![§).§&t§.addEventListener(MouseEvent.CLICK,this.§2U§);
         (param1.getItemByName("TextField_UserNameFieldForgotPassword") as §?![§).§8!,§(§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         §&!&§.§+j§.updateTextFields(§"]§,"ForgotPassword_Popup");
      }
      
      private function onUiInteraction(param1:§6!,§) : void
      {
         this.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§<&§();
               break;
            case "CANCEL_SEND_PASSWORD":
               (this.§43§ as § A§).§8O§.hide();
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§"]§.getItemByName("TextField_UserNameFieldForgotPassword") as §?![§).§&t§.removeEventListener(MouseEvent.CLICK,this.§2U§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§43§ as § A§).§8O§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§%1§.§=!1§);
            §<!J§.play();
         }
         super.open(param1);
         §"]§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §2U§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §"]§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §"]§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§43§ as § A§).§8O§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         if(param1)
         {
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§%1§.§&!P§);
            §<!J§.play();
         }
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         §,Q§.sHighscoreSidebar.enableLoginButton(false);
         this.§=!P§.removeEventListener(§6!,§.§;I§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §<&§() : void
      {
         var _loc1_:String = §"]§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§+!Q§(§#e§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§+!Q§(§#e§.INVALID_EMAIL);
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
            "language":§&!&§.§+j§.getLanguage()
         };
         var _loc8_:§-E§ = new §-E§(_loc7_,§ 4§.§=R§ + "forgotPassword",this,§-E§.§]!,§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§+!Q§(§#e§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
      }
      
      override public function updateTextFields() : void
      {
         §&!&§.§+j§.updateTextFields(§"]§,"ForgotPassword_Popup");
      }
      
      private function §+!Q§(param1:String) : void
      {
         §"]§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§43§ as § A§).§8O§.show(param1);
      }
   }
}
