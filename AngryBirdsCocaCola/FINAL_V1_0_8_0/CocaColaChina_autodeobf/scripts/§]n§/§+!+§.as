package §]n§
{
   import §!!4§.§8>§;
   import §&V§.§9t§;
   import §68§.§9v§;
   import §7H§.§8Q§;
   import §9L§.§7!M§;
   import §9L§.§?%§;
   import §>I§.§1!Q§;
   import §?8§.§%!]§;
   import §^6§.§;l§;
   import §^=§.§4S§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §+!+§ extends Popup implements §?%§
   {
      
      private static var §`!I§:Class = §!!-§;
       
      
      private var §4!]§:StatePopupManager;
      
      private var §6,§:§1!Q§;
      
      public function §+!+§(param1:§;l§, param2:StatePopupManager, param3:§1!Q§)
      {
         super(§4S§.§+X§(§`!I§),param1);
         §'B§ = param1;
         this.§4!]§ = param2;
         this.§6,§ = param3;
         this.§4!]§.addEventListener(§%!]§.§]V§,this.onUiInteraction);
         (§'B§.getItemByName("TextField_UserNameFieldForgotPassword") as §9v§).§@!G§.addEventListener(MouseEvent.CLICK,this.§=N§);
         §'B§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §'B§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      private function onUiInteraction(param1:§%!]§) : void
      {
         this.uiInteractionHandler(param1.§>N§,param1.§ !=§,param1.§?E§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§4@§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§'B§.getItemByName("TextField_UserNameFieldForgotPassword") as §9v§).§@!G§.removeEventListener(MouseEvent.CLICK,this.§=N§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§6,§ as §1!Q§).§;!8§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§@!M§ != null)
            {
               §@!M§.stop();
            }
            §@!M§ = §8Q§.§]!D§.§^w§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§8Q§.§,j§);
            §@!M§.play();
         }
         super.open(param1);
         §'B§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §=N§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §'B§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §'B§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§6,§ as §1!Q§).§;!8§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§6,§ as §1!Q§).§;!8§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§@!M§ != null)
            {
               §@!M§.stop();
            }
            §@!M§ = §8Q§.§]!D§.§^w§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§8Q§.§;!'§);
            §@!M§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§4!]§.removeEventListener(§%!]§.§]V§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §4@§() : void
      {
         var _loc1_:String = §'B§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§!&§(§7!M§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§!&§(§7!M§.INVALID_EMAIL);
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
         var _loc8_:§8>§ = new §8>§(_loc7_,§-!#§.§>+§ + "mail",this,§8>§.§+!O§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         (this.§6,§ as §1!Q§).§;!8§.show("FORGOT_PASSWORD");
      }
      
      public function §#!5§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0!B§(param1:IOErrorEvent) : void
      {
      }
      
      private function §!&§(param1:String) : void
      {
         §'B§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§6,§ as §1!Q§).§;!8§.show(param1);
      }
   }
}
