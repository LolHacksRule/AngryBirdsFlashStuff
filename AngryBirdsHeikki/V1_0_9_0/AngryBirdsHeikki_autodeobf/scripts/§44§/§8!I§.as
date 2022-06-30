package §44§
{
   import §#Q§.§8Y§;
   import §0i§.§[K§;
   import §1Q§.§'!`§;
   import §3r§.§+!G§;
   import §4V§.§>u§;
   import §4V§.§@!Y§;
   import §5!O§.§%!O§;
   import §8!-§.§2!B§;
   import §@!]§.§%!S§;
   import §`E§.§8D§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import §function§.§'"§;
   
   public class §8!I§ extends Popup implements §@!Y§
   {
      
      private static var §0v§:Class = §,B§;
       
      
      private var §>y§:StatePopupManager;
      
      private var §%!+§:§'"§;
      
      public function §8!I§(param1:§8Y§, param2:StatePopupManager, param3:§'"§)
      {
         super(§[K§.§0T§(§0v§),param1);
         §7O§ = param1;
         this.§>y§ = param2;
         this.§%!+§ = param3;
         this.§>y§.addEventListener(§8D§.§=!5§,this.onUiInteraction);
         (§7O§.getItemByName("TextField_UserNameFieldForgotPassword") as §%!S§).§9!"§.addEventListener(MouseEvent.CLICK,this.§[!&§);
         new §+!G§((param1.getItemByName("TextField_UserNameFieldForgotPassword") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
      }
      
      private function onUiInteraction(param1:§8D§) : void
      {
         this.uiInteractionHandler(param1.§%B§,param1.§%'§,param1.§0!$§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§<!M§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§7O§.getItemByName("TextField_UserNameFieldForgotPassword") as §%!S§).§9!"§.removeEventListener(MouseEvent.CLICK,this.§[!&§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§%!+§ as §'"§).§`!V§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§,'§ != null)
            {
               §,'§.stop();
            }
            §,'§ = §2!B§.§,!U§.§%!K§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§2!B§.§6p§);
            §,'§.play();
         }
         super.open(param1);
         §7O§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §7O§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §7O§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§%!+§ as §'"§).§`!V§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§%!+§ as §'"§).§`!V§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§,'§ != null)
            {
               §,'§.stop();
            }
            §,'§ = §2!B§.§,!U§.§%!K§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§2!B§.§8!@§);
            §,'§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§>y§.removeEventListener(§8D§.§=!5§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §<!M§() : void
      {
         var _loc1_:String = §7O§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§9X§(§>u§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§9X§(§>u§.INVALID_EMAIL);
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
         var _loc8_:§%!O§ = new §%!O§(_loc7_,§"H§.§4O§ + "mail",this,§%!O§.§4!-§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§9X§(§>u§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
      }
      
      private function §9X§(param1:String) : void
      {
         §7O§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§%!+§ as §'"§).§`!V§.show(param1);
      }
   }
}
