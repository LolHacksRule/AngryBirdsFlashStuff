package §'4§
{
   import §!E§.§,!B§;
   import §%!G§.§ !G§;
   import §%n§.§^3§;
   import §2!$§.§<!%§;
   import §87§.§ C§;
   import §87§.§31§;
   import §?@§.§^!M§;
   import §?k§.§[n§;
   import §@O§.§7;§;
   import §[!=§.§!!K§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §4!>§ extends Popup implements § C§
   {
      
      private static var §"Z§:Class = §>b§;
       
      
      private var §1%§:StatePopupManager;
      
      private var §9=§:§^3§;
      
      public function §4!>§(param1:§ !G§, param2:StatePopupManager, param3:§^3§)
      {
         super(§^!M§.§2!^§(§"Z§),param1);
         §!!#§ = param1;
         this.§1%§ = param2;
         this.§9=§ = param3;
         this.§1%§.addEventListener(§7;§.§;D§,this.onUiInteraction);
         (§!!#§.getItemByName("TextField_UserNameFieldForgotPassword") as §,!B§).§&J§.addEventListener(MouseEvent.CLICK,this.§4P§);
         §!!#§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §!!#§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      private function onUiInteraction(param1:§7;§) : void
      {
         this.uiInteractionHandler(param1.§2!<§,param1.§<!R§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§ !W§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§!!#§.getItemByName("TextField_UserNameFieldForgotPassword") as §,!B§).§&J§.removeEventListener(MouseEvent.CLICK,this.§4P§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§9=§ as §^3§).§ A§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§'!C§.§'!H§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§!!K§.§#,§);
            §6!L§.play();
         }
         super.open(param1);
         §!!#§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §4P§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §!!#§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §!!#§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§9=§ as §^3§).§ A§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§9=§ as §^3§).§ A§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§'!C§.§'!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§!!K§.§<!G§);
            §6!L§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§1%§.removeEventListener(§7;§.§;D§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function § !W§() : void
      {
         var _loc1_:String = §!!#§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§4=§(§31§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§4=§(§31§.INVALID_EMAIL);
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
         var _loc8_:§[n§ = new §[n§(_loc7_,§"!@§.§ !d§ + "mail",this,§[n§.§,!b§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         (this.§9=§ as §^3§).§ A§.show("FORGOT_PASSWORD");
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
      }
      
      private function §4=§(param1:String) : void
      {
         §!!#§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§9=§ as §^3§).§ A§.show(param1);
      }
   }
}
