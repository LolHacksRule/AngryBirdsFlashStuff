package §]c§
{
   import § !Y§.§if§;
   import §1!K§.§=t§;
   import §1!a§.§7!I§;
   import §1!a§.§`r§;
   import §6p§.§,!K§;
   import §93§.§^!H§;
   import §97§.§1j§;
   import §=!S§.§;7§;
   import §=!c§.§#=§;
   import §>!_§.§9!+§;
   import §^i§.§;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §var § extends Popup implements §7!I§
   {
      
      private static var §%!9§:Class = §1"§;
       
      
      private var §]A§:StatePopupManager;
      
      private var §-N§:§1j§;
      
      public function §var §(param1:§if§, param2:StatePopupManager, param3:§1j§)
      {
         super(§=t§.§1X§(§%!9§),param1);
         §%a§ = param1;
         this.§]A§ = param2;
         this.§-N§ = param3;
         this.§]A§.addEventListener(§,!K§.§+!,§,this.onUiInteraction);
         (§%a§.getItemByName("TextField_UserNameFieldForgotPassword") as §#=§).§5!R§.addEventListener(MouseEvent.CLICK,this.§]^§);
         new §;7§((param1.getItemByName("TextField_UserNameFieldForgotPassword") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
      }
      
      private function onUiInteraction(param1:§,!K§) : void
      {
         this.uiInteractionHandler(param1.§,Z§,param1.§@!F§,param1.§+!=§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§0n§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§%a§.getItemByName("TextField_UserNameFieldForgotPassword") as §#=§).§5!R§.removeEventListener(MouseEvent.CLICK,this.§]^§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§-N§ as §1j§).§]w§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§%T§ != null)
            {
               §%T§.stop();
            }
            §%T§ = §9!+§.§;!F§.§`!'§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9!+§.§8!_§);
            §%T§.play();
         }
         super.open(param1);
         §%a§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §]^§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §%a§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §%a§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§-N§ as §1j§).§]w§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§-N§ as §1j§).§]w§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§%T§ != null)
            {
               §%T§.stop();
            }
            §%T§ = §9!+§.§;!F§.§`!'§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9!+§.§#! §);
            §%T§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§]A§.removeEventListener(§,!K§.§+!,§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §0n§() : void
      {
         var _loc1_:String = §%a§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§6!L§(§`r§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§6!L§(§`r§.INVALID_EMAIL);
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
         var _loc8_:§;§ = new §;§(_loc7_,§,-§.§ 6§ + "mail",this,§;§.§@<§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§6!L§(§`r§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
      }
      
      private function §6!L§(param1:String) : void
      {
         §%a§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§-N§ as §1j§).§]w§.show(param1);
      }
   }
}
