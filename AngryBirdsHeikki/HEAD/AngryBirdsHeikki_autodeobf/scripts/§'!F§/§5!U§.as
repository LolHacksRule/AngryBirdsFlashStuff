package §'!F§
{
   import §&!b§.§2!L§;
   import §+!M§.§7!0§;
   import §+B§.§#!b§;
   import §-!f§.§ else§;
   import §0!X§.§!!Z§;
   import §0!X§.§&!4§;
   import §1!d§.§9m§;
   import §9!Q§.§&o§;
   import §9!f§.§3!N§;
   import §>!M§.§2?§;
   import §]!&§.§1E§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §5!U§ extends Popup implements §!!Z§
   {
      
      private static var §7@§:Class = §0!F§;
       
      
      private var §+M§:StatePopupManager;
      
      private var §!b§:§#!b§;
      
      public function §5!U§(param1:§ else§, param2:StatePopupManager, param3:§#!b§)
      {
         super(§2!L§.§-!7§(§7@§),param1);
         §<8§ = param1;
         this.§+M§ = param2;
         this.§!b§ = param3;
         this.§+M§.addEventListener(§3!N§.§+<§,this.onUiInteraction);
         (§<8§.getItemByName("TextField_UserNameFieldForgotPassword") as §1E§).§;+§.addEventListener(MouseEvent.CLICK,this.§ X§);
         new §&o§((param1.getItemByName("TextField_UserNameFieldForgotPassword") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
      }
      
      private function onUiInteraction(param1:§3!N§) : void
      {
         this.uiInteractionHandler(param1.§`!g§,param1.§[t§,param1.§^r§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§[![§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§<8§.getItemByName("TextField_UserNameFieldForgotPassword") as §1E§).§;+§.removeEventListener(MouseEvent.CLICK,this.§ X§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§!b§ as §#!b§).§1!!§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§3x§ != null)
            {
               §3x§.stop();
            }
            §3x§ = §9m§.§?! §.§]C§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9m§.§7l§);
            §3x§.play();
         }
         super.open(param1);
         §<8§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function § X§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §<8§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §<8§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§!b§ as §#!b§).§1!!§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§!b§ as §#!b§).§1!!§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§3x§ != null)
            {
               §3x§.stop();
            }
            §3x§ = §9m§.§?! §.§]C§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9m§.§4`§);
            §3x§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§+M§.removeEventListener(§3!N§.§+<§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §[![§() : void
      {
         var _loc1_:String = §<8§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§2!0§(§&!4§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§2!0§(§&!4§.INVALID_EMAIL);
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
         var _loc8_:§2?§ = new §2?§(_loc7_,§"!R§.§['§ + "mail",this,§2?§.§&!g§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         this.§2!0§(§&!4§.FORGOT_PASSWORD_EMAIL_SENT);
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
      }
      
      private function §2!0§(param1:String) : void
      {
         §<8§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§!b§ as §#!b§).§1!!§.show(param1);
      }
   }
}
