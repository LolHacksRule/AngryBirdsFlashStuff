package §20§
{
   import §'!N§.§[!%§;
   import §'!O§.StatePlay;
   import §3Q§.§+!]§;
   import §3Y§.§4!_§;
   import §5!1§.§"!X§;
   import §8P§.§1A§;
   import §9I§.§+J§;
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
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §]!Z§ extends Popup implements §>!=§
   {
      
      private static var §&%§:Class = §6!&§;
       
      
      private var §!!f§:StatePopupManager;
      
      private var §#R§:StatePlay;
      
      private var §@!;§:Boolean = false;
      
      private var §9V§:String = "";
      
      public function §]!Z§(param1:§]!Q§, param2:StatePopupManager, param3:StatePlay)
      {
         super(set.§=!^§(§&%§),param1);
         §>K§ = param1;
         this.§!!f§ = param2;
         this.§#R§ = param3;
         this.§!!f§.addEventListener(§+!]§.§0!S§,this.onUiInteraction);
         new §'!4§((param1.getItemByName("TextField_HeikkiCodeEnter") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
      }
      
      private function onUiInteraction(param1:§+!]§) : void
      {
         this.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
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
               _loc4_ = §>K§.getText("TextField_HeikkiCodeEnter");
               this.§[!d§(_loc4_);
         }
      }
      
      private function §[!d§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§#!`§ = null;
         if(this.§@!;§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§4!_§.§,t§.§5!D§,
               "code":param1
            };
            _loc4_ = new §#!`§(_loc3_,§,L§.§2;§ + _loc2_,this,§#!`§.§`!1§);
            this.§@!;§ = true;
         }
      }
      
      override public function close() : void
      {
         §>K§.setText("","TextField_HeikkiCodeEnter");
         (§>K§.getItemByName("TextField_HeikkiCodeEnter") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         §>K§.setText("","TextField_HeikkiCodeEnter");
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
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
         if(§,L§.§8!F§.§"!1§)
         {
            this.§#R§.§[!-§ = true;
         }
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§@!;§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §,L§.§8!F§.§"!1§ = true;
            this.preClose();
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§`!5§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§`!5§(_loc3_);
         }
      }
      
      private function §`!5§(param1:String) : void
      {
         var _loc2_:§[!%§ = null;
         if(param1 != "")
         {
            if(§>K§)
            {
               this.§9V§ = §>K§.getText("TextField_HeikkiCodeEnter");
               §>K§.setText(param1,"TextField_HeikkiCodeEnter");
               _loc2_ = §>K§.getItemByName("TextField_HeikkiCodeEnter") as §[!%§;
               if(_loc2_ && _loc2_.§^!1§)
               {
                  _loc2_.§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
               }
            }
         }
      }
      
      private function §-R§(param1:MouseEvent) : void
      {
         (§>K§.getItemByName("TextField_HeikkiCodeEnter") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
         §>K§.setText(this.§9V§,"TextField_HeikkiCodeEnter");
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         this.§`!5§("Incorrect code");
         this.§@!;§ = false;
      }
   }
}
