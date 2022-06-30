package §44§
{
   import §#Q§.§8Y§;
   import §0i§.§[K§;
   import §1Q§.§'!`§;
   import §3r§.§+!G§;
   import §4V§.§=!=§;
   import §4V§.§@!Y§;
   import §5!O§.§%!O§;
   import §8!-§.§2!B§;
   import §@!]§.§%!S§;
   import §^E§.§9!Q§;
   import §`E§.§8D§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §function§.StatePlay;
   
   public class §5u§ extends Popup implements §@!Y§
   {
      
      private static var §0v§:Class = §@§;
       
      
      private var §>y§:StatePopupManager;
      
      private var §%!+§:StatePlay;
      
      private var §5!-§:Boolean = false;
      
      private var §#g§:String = "";
      
      public function §5u§(param1:§8Y§, param2:StatePopupManager, param3:StatePlay)
      {
         super(§[K§.§0T§(§0v§),param1);
         §7O§ = param1;
         this.§>y§ = param2;
         this.§%!+§ = param3;
         this.§>y§.addEventListener(§8D§.§=!5§,this.onUiInteraction);
         new §+!G§((param1.getItemByName("TextField_HeikkiCodeEnter") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
      }
      
      private function onUiInteraction(param1:§8D§) : void
      {
         this.uiInteractionHandler(param1.§%B§,param1.§%'§,param1.§0!$§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
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
               _loc4_ = §7O§.getText("TextField_HeikkiCodeEnter");
               this.§-1§(_loc4_);
         }
      }
      
      private function §-1§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§%!O§ = null;
         if(this.§5!-§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§9!Q§.§`!$§.§%^§,
               "code":param1
            };
            _loc4_ = new §%!O§(_loc3_,§"H§.§4O§ + _loc2_,this,§%!O§.§4!-§);
            this.§5!-§ = true;
         }
      }
      
      override public function close() : void
      {
         §7O§.setText("","TextField_HeikkiCodeEnter");
         (§7O§.getItemByName("TextField_HeikkiCodeEnter") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`3§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         §7O§.setText("","TextField_HeikkiCodeEnter");
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
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
         if(§"H§.§""§.§?@§)
         {
            this.§%!+§.§;!5§ = true;
         }
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §=!=§.§=!a§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§5!-§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §"H§.§""§.§?@§ = true;
            this.preClose();
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§0+§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§0+§(_loc3_);
         }
      }
      
      private function §0+§(param1:String) : void
      {
         var _loc2_:§%!S§ = null;
         if(param1 != "")
         {
            if(§7O§)
            {
               this.§#g§ = §7O§.getText("TextField_HeikkiCodeEnter");
               §7O§.setText(param1,"TextField_HeikkiCodeEnter");
               _loc2_ = §7O§.getItemByName("TextField_HeikkiCodeEnter") as §%!S§;
               if(_loc2_ && _loc2_.§9!"§)
               {
                  _loc2_.§9!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`3§);
               }
            }
         }
      }
      
      private function §`3§(param1:MouseEvent) : void
      {
         (§7O§.getItemByName("TextField_HeikkiCodeEnter") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`3§);
         §7O§.setText(this.§#g§,"TextField_HeikkiCodeEnter");
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
         this.§0+§("Incorrect code");
         this.§5!-§ = false;
      }
   }
}
