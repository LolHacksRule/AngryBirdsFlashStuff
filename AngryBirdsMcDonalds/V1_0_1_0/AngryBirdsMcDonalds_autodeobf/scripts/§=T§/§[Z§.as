package §=T§
{
   import § !1§.§8!Y§;
   import § !1§.§[n§;
   import §%<§.§+V§;
   import §'Y§.§6Q§;
   import §,![§.§'!S§;
   import §-1§.§%#§;
   import §1!D§.§0S§;
   import §3l§.§9m§;
   import §8!P§.§5e§;
   import §8!X§.§'f§;
   import §9!8§.§0!7§;
   import §?H§.§>!!§;
   import §^5§.§]!,§;
   import §`!W§.§^!e§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §[Z§ extends Popup implements §[n§
   {
      
      private static var §+!§:Class = §58§;
       
      
      private var §>V§:StatePopupManager;
      
      private var §%O§:§]!,§;
      
      private var §%^§:Boolean = false;
      
      private var §%!K§:String = "";
      
      public function §[Z§(param1:§0!7§, param2:StatePopupManager, param3:§]!,§)
      {
         super(§^!e§.§=j§(§+!§),param1);
         §+!H§ = param1;
         this.§>V§ = param2;
         this.§%O§ = param3;
         this.§>V§.addEventListener(§'f§.§5a§,this.onUiInteraction);
         (§+!H§.getItemByName("TextField_CodeEnterInput") as §'!S§).§<j§(§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§'f§) : void
      {
         this.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
         this.§%O§.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "SUBMIT_CODE":
               _loc4_ = §+!H§.getText("TextField_CodeEnterInput");
               this.§+x§(_loc4_);
               break;
            case "CANCEL_CODE":
               this.preClose();
         }
      }
      
      private function §+x§(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:§6Q§ = null;
         var _loc2_:String = §0S§.§>E§.§4Z§("LevelSelectionStateCustom","Incorrect_Code");
         var _loc3_:String = §0S§.§>E§.§4Z§("LevelSelectionStateCustom","Code_Used");
         if(this.§%^§ == false)
         {
            _loc4_ = "code";
            _loc5_ = {
               "playerId":§>!!§.§^!4§.email,
               "code":param1
            };
            _loc6_ = new §6Q§(_loc5_,§;!4§.§'!O§ + _loc4_,this,§6Q§.§&!0§);
            this.§%^§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §8!Y§.§%f§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§%^§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §0S§.§>E§.§4Z§("Error_Messages","Incorrect_Code");
            this.§1!M§("");
            this.preClose();
            §0!%§.§&!=§(§+!H§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §0S§.§>E§.§4Z§("Error_Messages","Code_Used");
            this.§1!M§("");
            this.preClose();
            §0!%§.§&!=§(§+!H§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §5e§.§>E§.§8!L§(_loc4_);
            this.preClose();
            §0!%§.§&!=§(§+!H§);
            this.§1!M§("");
         }
      }
      
      private function §1!M§(param1:String) : void
      {
         var _loc2_:§'!S§ = null;
         if(param1 != "")
         {
            if(§+!H§)
            {
               this.§%!K§ = §+!H§.getText("TextField_CodeEnterInput");
               §+!H§.setText(param1,"TextField_CodeEnterInput");
               _loc2_ = §+!H§.getItemByName("TextField_CodeEnterInput") as §'!S§;
               if(_loc2_ && _loc2_.§'!Z§)
               {
                  _loc2_.§'!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'@§);
               }
            }
         }
      }
      
      private function §'@§(param1:MouseEvent) : void
      {
         (§+!H§.getItemByName("TextField_CodeEnterInput") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'@§);
         §+!H§.setText(this.§%!K§,"TextField_CodeEnterInput");
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
         this.§1!M§("Incorrect code");
         this.§%^§ = false;
      }
      
      override public function updateTextFields() : void
      {
         §0S§.§>E§.updateTextFields(§+!H§,"CodeEnter_Popup");
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §+V§.sHighscoreSidebar.enableLoginButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9m§.§'e§);
            §>]§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9m§.§+y§);
            §>]§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§>V§.removeEventListener(§'f§.§5a§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
