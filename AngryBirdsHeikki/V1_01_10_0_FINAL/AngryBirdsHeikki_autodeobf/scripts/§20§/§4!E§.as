package §20§
{
   import §'!N§.§[!%§;
   import §'!O§.§#!_§;
   import §3Q§.§+!]§;
   import §5!1§.§"!X§;
   import §8P§.§1A§;
   import §9I§.§1F§;
   import §9I§.§>!=§;
   import §<!!§.§#!`§;
   import §<u§.§]!Q§;
   import §=! §.§'!4§;
   import §@R§.set;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §4!E§ extends Popup implements §>!=§
   {
      
      private static var §&%§:Class = §"3§;
       
      
      private var §!!f§:StatePopupManager;
      
      private var §#R§:§#!_§;
      
      public function §4!E§(param1:§]!Q§, param2:StatePopupManager, param3:§#!_§)
      {
         super(set.§=!^§(§&%§),param1);
         §>K§ = param1;
         this.§!!f§ = param2;
         this.§#R§ = param3;
         this.§!!f§.addEventListener(§+!]§.§0!S§,this.onUiInteraction);
         (§>K§.getItemByName("TextField_UserNameFieldForgotPassword") as §[!%§).§^!1§.addEventListener(MouseEvent.CLICK,this.§5!2§);
         new §'!4§((param1.getItemByName("TextField_UserNameFieldForgotPassword") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
      }
      
      private function onUiInteraction(param1:§+!]§) : void
      {
         this.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§]!W§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§>K§.getItemByName("TextField_UserNameFieldForgotPassword") as §[!%§).§^!1§.removeEventListener(MouseEvent.CLICK,this.§5!2§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§#R§ as §#!_§).§1!D§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§@J§ != null)
            {
               §@J§.stop();
            }
            §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"!X§.§<!e§);
            §@J§.play();
         }
         super.open(param1);
         §>K§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §5!2§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §>K§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §>K§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§#R§ as §#!_§).§1!D§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§#R§ as §#!_§).§1!D§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§@J§ != null)
            {
               §@J§.stop();
            }
            §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§"!X§.§@4§);
            §@J§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§!!f§.removeEventListener(§+!]§.§0!S§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §]!W§() : void
      {
         var _loc1_:String = §>K§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§^<§(§1F§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§^<§(§1F§.INVALID_EMAIL);
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
         var _loc8_:§#!`§ = new §#!`§(_loc7_,§,L§.§2;§ + "mail",this,§#!`§.§`!1§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§^<§(§1F§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
      }
      
      private function §^<§(param1:String) : void
      {
         §>K§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§#R§ as §#!_§).§1!D§.show(param1);
      }
   }
}
