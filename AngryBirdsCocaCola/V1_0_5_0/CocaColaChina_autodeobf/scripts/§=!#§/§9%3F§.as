package §=!#§
{
   import §%3§.§7b§;
   import §+n§.§0l§;
   import §+n§.§;!+§;
   import §,H§.§4!L§;
   import §6a§.§;!a§;
   import §7!H§.§12§;
   import §8!<§.§#u§;
   import §<!!§.§=§;
   import §<"§.§7!'§;
   import §=!<§.§%P§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §9?§ extends Popup implements §0l§
   {
      
      private static var §`!F§:Class = §?A§;
       
      
      private var §]a§:StatePopupManager;
      
      private var § <§:§4!L§;
      
      public function §9?§(param1:§7b§, param2:StatePopupManager, param3:§4!L§)
      {
         super(§=§.§!B§(§`!F§),param1);
         §]o§ = param1;
         this.§]a§ = param2;
         this.§ <§ = param3;
         this.§]a§.addEventListener(§7!'§.§=&§,this.onUiInteraction);
         (§]o§.getItemByName("TextField_UserNameFieldForgotPassword") as §#u§).§=J§.addEventListener(MouseEvent.CLICK,this.§4Q§);
         §]o§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §]o§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      private function onUiInteraction(param1:§7!'§) : void
      {
         this.uiInteractionHandler(param1.§,!<§,param1.§`+§,param1.§<?§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§9R§();
               break;
            case "CANCEL":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         (§]o§.getItemByName("TextField_UserNameFieldForgotPassword") as §#u§).§=J§.removeEventListener(MouseEvent.CLICK,this.§4Q§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (this.§ <§ as §4!L§).§ C§.hide();
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§3!_§ != null)
            {
               §3!_§.stop();
            }
            §3!_§ = §;!a§.§0%§.§,w§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;!a§.§!!D§);
            §3!_§.play();
         }
         super.open(param1);
         §]o§.setText("","TextField_UserNameFieldForgotPassword");
      }
      
      private function §4Q§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §]o§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §]o§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
            (this.§ <§ as §4!L§).§ C§.hide();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         (this.§ <§ as §4!L§).§ C§.hide();
         super.preClose(param1);
         if(param1)
         {
            if(§3!_§ != null)
            {
               §3!_§.stop();
            }
            §3!_§ = §;!a§.§0%§.§,w§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;!a§.§5!L§);
            §3!_§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§]a§.removeEventListener(§7!'§.§=&§,this.onUiInteraction);
         super.deActivate();
      }
      
      private function §9R§() : void
      {
         var _loc1_:String = §]o§.getText("TextField_UserNameFieldForgotPassword");
         if(_loc1_.length == 0)
         {
            this.§,!9§(§;!+§.INVALID_EMAIL);
            return;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(_loc1_))
         {
            this.§,!9§(§;!+§.INVALID_EMAIL);
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
         var _loc8_:§%P§ = new §%P§(_loc7_,§6T§.§&H§ + "mail",this,§%P§.§]!J§);
      }
      
      public function onComplete(param1:Event) : void
      {
         this.preClose();
         (this.§ <§ as §4!L§).§ C§.show("FORGOT_PASSWORD");
      }
      
      public function §9!%§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=p§(param1:IOErrorEvent) : void
      {
      }
      
      private function §,!9§(param1:String) : void
      {
         §]o§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         (this.§ <§ as §4!L§).§ C§.show(param1);
      }
   }
}
