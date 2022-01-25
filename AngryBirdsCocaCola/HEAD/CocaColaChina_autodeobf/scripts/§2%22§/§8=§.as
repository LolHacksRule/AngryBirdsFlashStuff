package §2"§
{
   import § C§.§ !X§;
   import § C§.§+Q§;
   import §%n§.§^3§;
   import §'!G§.§4!§;
   import §'P§.§5!_§;
   import §2!<§.§<!R§;
   import §7]§.§;T§;
   import §?k§.§[n§;
   import §[!=§.§!!K§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §8=§ extends Popup implements §+Q§
   {
      
      private static var §?!_§:Class = §"Y§;
       
      
      private var §#Z§:StatePopupManager;
      
      private var §0!"§:§^3§;
      
      public function §8=§(param1:§^R§, param2:StatePopupManager, param3:§^3§)
      {
         super(§4!§.§[!a§(§?!_§),param1);
         §&!Q§ = param1;
         this.§#Z§ = param2;
         this.§0!"§ = param3;
         this.§#Z§.addEventListener(§<!R§.§]!K§,this.onUiInteraction);
         (§&!Q§.getItemByName("TextField_UserNameFieldForgotPassword") as §5!_§).§5r§.addEventListener(MouseEvent.CLICK,this.§"!A§);
         §&!Q§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §&!Q§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      private function onUiInteraction(param1:§<!R§) : void
      {
         this.uiInteractionHandler(param1.§+!P§,param1.§;D§,param1.§in§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§+S§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§&!Q§.getItemByName("TextField_UserNameFieldForgotPassword") as §5!_§).§5r§.removeEventListener(MouseEvent.CLICK,this.§"!A§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§0!"§ as §^3§).§ A§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§@!c§.§'!H§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§!!K§.§#,§);
            §6!L§.play();
         }
         super.open(param1);
         §&!Q§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §"!A§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §&!Q§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §&!Q§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§0!"§ as §^3§).§ A§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§0!"§ as §^3§).§ A§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§@!c§.§'!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§!!K§.§<!G§);
            §6!L§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§#Z§.removeEventListener(§<!R§.§]!K§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §+S§() : void
      {
         var _loc1_:String = §&!Q§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§4=§(§ !X§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§4=§(§ !X§.INVALID_EMAIL);
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
         var _loc8_:§[n§ = new §[n§(_loc7_,§"!@§.§4w§ + "mail",this,§[n§.§,!b§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         (this.§0!"§ as §^3§).§ A§.show("FORGOT_PASSWORD");
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
      }
      
      private function §4=§(param1:String) : void
      {
         §&!Q§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§0!"§ as §^3§).§ A§.show(param1);
      }
   }
}
