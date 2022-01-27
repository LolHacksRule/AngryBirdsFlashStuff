package §[!^§
{
   import §#!&§.§1![§;
   import §%!$§.§2!I§;
   import §+!9§.StatePlay;
   import §1!6§.§ !3§;
   import §4!9§.§;!9§;
   import §6-§.§"H§;
   import §7!X§.§7g§;
   import §9i§.§+A§;
   import §;<§.§%!I§;
   import §;<§.§7!K§;
   import §>R§.§4%§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §var§.§+!^§;
   
   public class native extends Popup implements §%!I§
   {
      
      private static var §3G§:Class = §-R§;
       
      
      private var §!`§:StatePopupManager;
      
      private var §2f§:StatePlay;
      
      private var §;`§:Boolean = false;
      
      private var §=!b§:String = "";
      
      public function native(param1:§7g§, param2:StatePopupManager, param3:StatePlay)
      {
         super(§2!I§.§;n§(§3G§),param1);
         § !D§ = param1;
         this.§!`§ = param2;
         this.§2f§ = param3;
         this.§!`§.addEventListener(§4%§.§"! §,this.onUiInteraction);
         new §;!9§((param1.getItemByName("TextField_HeikkiCodeEnter") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
      }
      
      private function onUiInteraction(param1:§4%§) : void
      {
         this.uiInteractionHandler(param1.§'P§,param1.§@O§,param1.§!J§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "VISIT":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
               break;
            case "LATER":
               this.preClose();
               break;
            case "SUBMIT":
               _loc4_ = § !D§.getText("TextField_HeikkiCodeEnter");
               this.§ k§(_loc4_);
         }
      }
      
      private function § k§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§+A§ = null;
         if(this.§;`§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§ !3§.§@!`§.§#!3§,
               "code":param1
            };
            _loc4_ = new §+A§(_loc3_,§1F§.§&1§ + _loc2_,this,§+A§.§<!&§);
            this.§;`§ = true;
         }
      }
      
      override public function close() : void
      {
         § !D§.setText("","TextField_HeikkiCodeEnter");
         (§ !D§.getItemByName("TextField_HeikkiCodeEnter") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!L§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         § !D§.setText("","TextField_HeikkiCodeEnter");
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
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
         if(§1F§.§=l§.§1n§)
         {
            this.§2f§.§ for§ = true;
         }
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §7!K§.§>e§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§;`§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §1F§.§=l§.§1n§ = true;
            this.preClose();
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§2R§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§2R§(_loc3_);
         }
      }
      
      private function §2R§(param1:String) : void
      {
         var _loc2_:§1![§ = null;
         if(param1 != "")
         {
            if(§ !D§)
            {
               this.§=!b§ = § !D§.getText("TextField_HeikkiCodeEnter");
               § !D§.setText(param1,"TextField_HeikkiCodeEnter");
               _loc2_ = § !D§.getItemByName("TextField_HeikkiCodeEnter") as §1![§;
               if(_loc2_ && _loc2_.§2q§)
               {
                  _loc2_.§2q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!L§);
               }
            }
         }
      }
      
      private function §3!L§(param1:MouseEvent) : void
      {
         (§ !D§.getItemByName("TextField_HeikkiCodeEnter") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!L§);
         § !D§.setText(this.§=!b§,"TextField_HeikkiCodeEnter");
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
         this.§2R§("Incorrect code");
         this.§;`§ = false;
      }
   }
}
