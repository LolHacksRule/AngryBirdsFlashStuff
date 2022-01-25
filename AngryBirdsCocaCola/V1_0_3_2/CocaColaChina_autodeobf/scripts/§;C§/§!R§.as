package §;C§
{
   import §'b§.§6!-§;
   import §3!`§.§8h§;
   import §6!§.§%H§;
   import §6!Q§.§,![§;
   import §6l§.§#!Z§;
   import §<o§.§#D§;
   import §>!8§.§4!0§;
   import §@!P§.§7!<§;
   import §^>§.§5b§;
   import §^>§.§9i§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §!R§ extends Popup implements §5b§
   {
      
      private static var §3!9§:Class = §2G§;
       
      
      private var §;!B§:StatePopupManager;
      
      private var §2$§:§7!<§;
      
      public function §!R§(param1:§4!0§, param2:StatePopupManager, param3:§7!<§)
      {
         super(§,![§.§6b§(§3!9§),param1);
         §0D§ = param1;
         this.§;!B§ = param2;
         this.§2$§ = param3;
         this.§;!B§.addEventListener(§%H§.§&!6§,this.onUiInteraction);
         (§0D§.getItemByName("TextField_UserNameFieldForgotPassword") as §6!-§).§`!C§.addEventListener(MouseEvent.CLICK,this.§9!_§);
         §0D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §0D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      private function onUiInteraction(param1:§%H§) : void
      {
         this.uiInteractionHandler(param1.§%+§,param1.§=a§,param1.§&2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§=W§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§0D§.getItemByName("TextField_UserNameFieldForgotPassword") as §6!-§).§`!C§.removeEventListener(MouseEvent.CLICK,this.§9!_§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§2$§ as §7!<§).§3h§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§,!_§ != null)
            {
               §,!_§.stop();
            }
            §,!_§ = §8h§.§`G§.§[O§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§8h§.§#H§);
            §,!_§.play();
         }
         super.open(param1);
         §0D§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §9!_§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §0D§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §0D§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§2$§ as §7!<§).§3h§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§2$§ as §7!<§).§3h§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§,!_§ != null)
            {
               §,!_§.stop();
            }
            §,!_§ = §8h§.§`G§.§[O§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§8h§.§3!E§);
            §,!_§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§;!B§.removeEventListener(§%H§.§&!6§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §=W§() : void
      {
         var _loc1_:String = §0D§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§"Y§(§9i§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§"Y§(§9i§.INVALID_EMAIL);
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
         var _loc8_:§#D§ = new §#D§(_loc7_,§=i§.§'<§ + "mail",this,§#D§.§ !a§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         (this.§2$§ as §7!<§).§3h§.show("FORGOT_PASSWORD");
      }
      
      public function §5x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'1§(param1:IOErrorEvent) : void
      {
      }
      
      private function §"Y§(param1:String) : void
      {
         §0D§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§2$§ as §7!<§).§3h§.show(param1);
      }
   }
}
