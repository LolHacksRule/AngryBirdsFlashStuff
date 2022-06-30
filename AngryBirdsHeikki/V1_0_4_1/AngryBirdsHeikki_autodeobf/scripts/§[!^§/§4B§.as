package §[!^§
{
   import §#!&§.§1![§;
   import §%!$§.§2!I§;
   import §+!9§.§0!M§;
   import §4!9§.§;!9§;
   import §6-§.§"H§;
   import §7!X§.§7g§;
   import §9i§.§+A§;
   import §;<§.§%!I§;
   import §;<§.§%K§;
   import §>R§.§4%§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import §var§.§+!^§;
   
   public class §4B§ extends Popup implements §%!I§
   {
      
      private static var §3G§:Class = §<G§;
       
      
      private var §!`§:StatePopupManager;
      
      private var §2f§:§0!M§;
      
      public function §4B§(param1:§7g§, param2:StatePopupManager, param3:§0!M§)
      {
         super(§2!I§.§;n§(§3G§),param1);
         § !D§ = param1;
         this.§!`§ = param2;
         this.§2f§ = param3;
         this.§!`§.addEventListener(§4%§.§"! §,this.onUiInteraction);
         (§ !D§.getItemByName("TextField_UserNameFieldForgotPassword") as §1![§).§2q§.addEventListener(MouseEvent.CLICK,this.§try§);
         new §;!9§((param1.getItemByName("TextField_UserNameFieldForgotPassword") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
      }
      
      private function onUiInteraction(param1:§4%§) : void
      {
         this.uiInteractionHandler(param1.§'P§,param1.§@O§,param1.§!J§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§>^§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§ !D§.getItemByName("TextField_UserNameFieldForgotPassword") as §1![§).§2q§.removeEventListener(MouseEvent.CLICK,this.§try§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§2f§ as §0!M§).§83§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§&&§ != null)
            {
               §&&§.stop();
            }
            §&&§ = §"H§.§'![§.§8Y§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"H§.§ Y§);
            §&&§.play();
         }
         super.open(param1);
         § !D§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §try§(param1:MouseEvent) : void
      {
         if(param1.target.parent == § !D§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            § !D§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§2f§ as §0!M§).§83§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§2f§ as §0!M§).§83§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§&&§ != null)
            {
               §&&§.stop();
            }
            §&&§ = §"H§.§'![§.§8Y§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§"H§.§!u§);
            §&&§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§!`§.removeEventListener(§4%§.§"! §,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §>^§() : void
      {
         var _loc1_:String = § !D§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§]!B§(§%K§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§]!B§(§%K§.INVALID_EMAIL);
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
         var _loc8_:§+A§ = new §+A§(_loc7_,§1F§.§&1§ + "mail",this,§+A§.§<!&§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§]!B§(§%K§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
      }
      
      private function §]!B§(param1:String) : void
      {
         § !D§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§2f§ as §0!M§).§83§.show(param1);
      }
   }
}
