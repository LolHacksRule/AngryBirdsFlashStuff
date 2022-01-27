package §'z§
{
   import § !3§.§[a§;
   import §#!+§.§"$§;
   import §-!V§.§+V§;
   import §0;§.§]U§;
   import §1!J§.§6Y§;
   import §1!J§.§>!Q§;
   import §2!D§.§'!7§;
   import §3!^§.§<!O§;
   import §9!?§.§!2§;
   import §;!0§.§4!I§;
   import §[,§.StatePlay;
   import §]e§.§&!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §`§ extends Popup implements §>!Q§
   {
      
      private static var §]!a§:Class = §>J§;
       
      
      private var §`9§:StatePopupManager;
      
      private var §;!Y§:StatePlay;
      
      private var §=!F§:Boolean = false;
      
      private var §"'§:String = "";
      
      public function §`§(param1:§"$§, param2:StatePopupManager, param3:StatePlay)
      {
         super(§[a§.§`l§(§]!a§),param1);
         §8T§ = param1;
         this.§`9§ = param2;
         this.§;!Y§ = param3;
         this.§`9§.addEventListener(§&!U§.§^!b§,this.onUiInteraction);
         new §!2§((param1.getItemByName("TextField_HeikkiCodeEnter") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
      }
      
      private function onUiInteraction(param1:§&!U§) : void
      {
         this.uiInteractionHandler(param1.§5!f§,param1.§]!@§,param1.§6!7§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
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
               _loc4_ = §8T§.getText("TextField_HeikkiCodeEnter");
               this.§ !d§(_loc4_);
         }
      }
      
      private function § !d§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§<!O§ = null;
         if(this.§=!F§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§]U§.§-v§.§"!S§,
               "code":param1
            };
            _loc4_ = new §<!O§(_loc3_,§2!S§.§1,§ + _loc2_,this,§<!O§.§#e§);
            this.§=!F§ = true;
         }
      }
      
      override public function close() : void
      {
         §8T§.setText("","TextField_HeikkiCodeEnter");
         (§8T§.getItemByName("TextField_HeikkiCodeEnter") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0D§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§`s§ != null)
            {
               §`s§.stop();
            }
            §`s§ = §'!7§.§=,§.§5Z§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§'!7§.§4z§);
            §`s§.play();
         }
         super.open(param1);
         §8T§.setText("","TextField_HeikkiCodeEnter");
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§`s§ != null)
            {
               §`s§.stop();
            }
            §`s§ = §'!7§.§=,§.§5Z§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§'!7§.§+d§);
            §`s§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§`9§.removeEventListener(§&!U§.§^!b§,this.onUiInteraction);
         if(§2!S§.§<P§.§'Q§)
         {
            this.§;!Y§.§;T§ = true;
         }
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §6Y§.static((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§=!F§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §2!S§.§<P§.§'Q§ = true;
            this.preClose();
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§+!=§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§+!=§(_loc3_);
         }
      }
      
      private function §+!=§(param1:String) : void
      {
         var _loc2_:§+V§ = null;
         if(param1 != "")
         {
            if(§8T§)
            {
               this.§"'§ = §8T§.getText("TextField_HeikkiCodeEnter");
               §8T§.setText(param1,"TextField_HeikkiCodeEnter");
               _loc2_ = §8T§.getItemByName("TextField_HeikkiCodeEnter") as §+V§;
               if(_loc2_ && _loc2_.§3x§)
               {
                  _loc2_.§3x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0D§);
               }
            }
         }
      }
      
      private function §0D§(param1:MouseEvent) : void
      {
         (§8T§.getItemByName("TextField_HeikkiCodeEnter") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0D§);
         §8T§.setText(this.§"'§,"TextField_HeikkiCodeEnter");
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
         this.§+!=§("Incorrect code");
         this.§=!F§ = false;
      }
   }
}
