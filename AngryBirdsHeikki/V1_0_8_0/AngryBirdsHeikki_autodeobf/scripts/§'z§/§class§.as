package §'z§
{
   import § !3§.§[a§;
   import §#!+§.§"$§;
   import §-!V§.§+V§;
   import §1!J§.§>!Q§;
   import §1!J§.§>!U§;
   import §2!D§.§'!7§;
   import §3!^§.§<!O§;
   import §9!?§.§!2§;
   import §;!0§.§4!I§;
   import §[,§.§3!<§;
   import §]e§.§&!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §class§ extends Popup implements §>!Q§
   {
      
      private static var §]!a§:Class = §<Y§;
       
      
      private var §`9§:StatePopupManager;
      
      private var §;!Y§:§3!<§;
      
      public function §class§(param1:§"$§, param2:StatePopupManager, param3:§3!<§)
      {
         super(§[a§.§`l§(§]!a§),param1);
         §8T§ = param1;
         this.§`9§ = param2;
         this.§;!Y§ = param3;
         this.§`9§.addEventListener(§&!U§.§^!b§,this.onUiInteraction);
         (§8T§.getItemByName("TextField_UserNameFieldForgotPassword") as §+V§).§3x§.addEventListener(MouseEvent.CLICK,this.§<!!§);
         new §!2§((param1.getItemByName("TextField_UserNameFieldForgotPassword") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
      }
      
      private function onUiInteraction(param1:§&!U§) : void
      {
         this.uiInteractionHandler(param1.§5!f§,param1.§]!@§,param1.§6!7§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§`!1§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§8T§.getItemByName("TextField_UserNameFieldForgotPassword") as §+V§).§3x§.removeEventListener(MouseEvent.CLICK,this.§<!!§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§;!Y§ as §3!<§).§[!5§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§`s§ != null)
            {
               §`s§.stop();
            }
            §`s§ = §'!7§.§=,§.§5Z§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§'!7§.§4z§);
            §`s§.play();
         }
         super.open(param1);
         §8T§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §<!!§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §8T§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §8T§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§;!Y§ as §3!<§).§[!5§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§;!Y§ as §3!<§).§[!5§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§`s§ != null)
            {
               §`s§.stop();
            }
            §`s§ = §'!7§.§=,§.§5Z§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§'!7§.§+d§);
            §`s§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§`9§.removeEventListener(§&!U§.§^!b§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §`!1§() : void
      {
         var _loc1_:String = §8T§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§3Q§(§>!U§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§3Q§(§>!U§.INVALID_EMAIL);
            return;
         }
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object;
         (_loc6_ = {}).id = _loc1_;
         var _loc7_:Object = {
            "type":"mail",
            "player":_loc6_
         };
         var _loc8_:§<!O§ = new §<!O§(_loc7_,§2!S§.§1,§ + "mail",this,§<!O§.§#e§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§3Q§(§>!U§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
      }
      
      private function §3Q§(param1:String) : void
      {
         §8T§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§;!Y§ as §3!<§).§[!5§.show(param1);
      }
   }
}
