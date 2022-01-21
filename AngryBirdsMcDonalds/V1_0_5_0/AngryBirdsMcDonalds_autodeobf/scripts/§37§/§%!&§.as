package §37§
{
   import §#!q§.§`q§;
   import §+$§.§[!a§;
   import §0i§.§@^§;
   import §1!^§.§,!n§;
   import §3!S§.§-!^§;
   import §3<§.§-2§;
   import §7!N§.§0-§;
   import §7E§.§ =§;
   import §<! §.§1!6§;
   import §<! §.§<<§;
   import §[h§.§ set§;
   import §]w§.§8!L§;
   import §^m§.§=!a§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §%!&§ extends Popup implements §<<§
   {
      
      private static var § T§:Class = §%!U§;
       
      
      private var §-W§:StatePopupManager;
      
      private var §8p§:§ =§;
      
      private var §>j§:Boolean = false;
      
      private var § f§:String = "";
      
      public function §%!&§(param1:§-2§, param2:StatePopupManager, param3:§ =§)
      {
         super(§@^§.§'K§(§ T§),param1);
         §9K§ = param1;
         this.§-W§ = param2;
         this.§8p§ = param3;
         this.§-W§.addEventListener(§-!^§.§?!G§,this.onUiInteraction);
         (§9K§.getItemByName("TextField_CodeEnterInput") as § set§).§,O§(§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§-!^§) : void
      {
         this.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
         this.§8p§.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "SUBMIT_CODE":
               _loc4_ = §9K§.getText("TextField_CodeEnterInput");
               this.§[+§(_loc4_);
               break;
            case "CANCEL_CODE":
               this.preClose();
         }
      }
      
      private function §[+§(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:§,!n§ = null;
         var _loc2_:String = §`q§.§9$§.§&7§("LevelSelectionStateCustom","Incorrect_Code");
         var _loc3_:String = §`q§.§9$§.§&7§("LevelSelectionStateCustom","Code_Used");
         if(this.§>j§ == false)
         {
            _loc4_ = "code";
            _loc5_ = {
               "playerId":§0-§.§6!&§.email,
               "code":param1
            };
            _loc6_ = new §,!n§(_loc5_,§9!_§.§?!k§ + _loc4_,this,§,!n§.§-I§);
            this.§>j§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §1!6§.§>o§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§>j§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §`q§.§9$§.§&7§("Error_Messages","Incorrect_Code");
            this.§7!R§("");
            this.preClose();
            §&!;§.§&X§(§9K§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §`q§.§9$§.§&7§("Error_Messages","Code_Used");
            this.§7!R§("");
            this.preClose();
            §&!;§.§&X§(§9K§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §8!L§.§9$§.§12§(_loc4_);
            this.preClose();
            §&!;§.§&X§(§9K§);
            this.§7!R§("");
         }
      }
      
      private function §7!R§(param1:String) : void
      {
         var _loc2_:§ set§ = null;
         if(param1 != "")
         {
            if(§9K§)
            {
               this.§ f§ = §9K§.getText("TextField_CodeEnterInput");
               §9K§.setText(param1,"TextField_CodeEnterInput");
               _loc2_ = §9K§.getItemByName("TextField_CodeEnterInput") as § set§;
               if(_loc2_ && _loc2_.§ !K§)
               {
                  _loc2_.§ !K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7X§);
               }
            }
         }
      }
      
      private function §7X§(param1:MouseEvent) : void
      {
         (§9K§.getItemByName("TextField_CodeEnterInput") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7X§);
         §9K§.setText(this.§ f§,"TextField_CodeEnterInput");
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
         this.§7!R§("Incorrect code");
         this.§>j§ = false;
      }
      
      override public function updateTextFields() : void
      {
         §`q§.§9$§.updateTextFields(§9K§,"CodeEnter_Popup");
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §2'§.sHighscoreSidebar.enableLoginButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§=!a§.§@!m§);
            §+!Y§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§=!a§.§%!R§);
            §+!Y§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§-W§.removeEventListener(§-!^§.§?!G§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
