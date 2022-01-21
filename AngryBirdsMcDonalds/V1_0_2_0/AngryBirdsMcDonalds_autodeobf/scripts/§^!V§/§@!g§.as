package §^!V§
{
   import § v§.§!!^§;
   import §!!h§.§1H§;
   import §"%§.§,!n§;
   import §2!6§.§^"§;
   import §4%§.§%0§;
   import §6!Q§.§ !"§;
   import §7"§.§1! §;
   import §7"§.§[!K§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=<§.§ !Y§;
   import §>G§.§]!W§;
   import §@`§.§>!S§;
   import §@w§.§'!#§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §@!g§ extends Popup implements §1! §
   {
      
      private static var §0P§:Class = §8!h§;
       
      
      private var §3`§:StatePopupManager;
      
      private var §-!6§:§ !"§;
      
      private var §6H§:Boolean = false;
      
      private var §^3§:String = "";
      
      public function §@!g§(param1:§>!S§, param2:StatePopupManager, param3:§ !"§)
      {
         super(§ !Y§.§^t§(§0P§),param1);
         §]E§ = param1;
         this.§3`§ = param2;
         this.§-!6§ = param3;
         this.§3`§.addEventListener(§^"§.§'!2§,this.onUiInteraction);
         (§]E§.getItemByName("TextField_CodeEnterInput") as §]!W§).§"h§(§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§^"§) : void
      {
         this.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
         this.§-!6§.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "SUBMIT_CODE":
               _loc4_ = §]E§.getText("TextField_CodeEnterInput");
               this.§[v§(_loc4_);
               break;
            case "CANCEL_CODE":
               this.preClose();
         }
      }
      
      private function §[v§(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:§1H§ = null;
         var _loc2_:String = §[!<§.§'!S§.§-!B§("LevelSelectionStateCustom","Incorrect_Code");
         var _loc3_:String = §[!<§.§'!S§.§-!B§("LevelSelectionStateCustom","Code_Used");
         if(this.§6H§ == false)
         {
            _loc4_ = "code";
            _loc5_ = {
               "playerId":§!!^§.§,!a§.email,
               "code":param1
            };
            _loc6_ = new §1H§(_loc5_,§'j§.§2H§ + _loc4_,this,§1H§.§`P§);
            this.§6H§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §[!K§.§,!j§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§6H§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §[!<§.§'!S§.§-!B§("Error_Messages","Incorrect_Code");
            this.§#!O§("");
            this.preClose();
            §^!j§.§!f§(§]E§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §[!<§.§'!S§.§-!B§("Error_Messages","Code_Used");
            this.§#!O§("");
            this.preClose();
            §^!j§.§!f§(§]E§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §'!#§.§'!S§.§?c§(_loc4_);
            this.preClose();
            §^!j§.§!f§(§]E§);
            this.§#!O§("");
         }
      }
      
      private function §#!O§(param1:String) : void
      {
         var _loc2_:§]!W§ = null;
         if(param1 != "")
         {
            if(§]E§)
            {
               this.§^3§ = §]E§.getText("TextField_CodeEnterInput");
               §]E§.setText(param1,"TextField_CodeEnterInput");
               _loc2_ = §]E§.getItemByName("TextField_CodeEnterInput") as §]!W§;
               if(_loc2_ && _loc2_.§^!m§)
               {
                  _loc2_.§^!m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!V§);
               }
            }
         }
      }
      
      private function §3!V§(param1:MouseEvent) : void
      {
         (§]E§.getItemByName("TextField_CodeEnterInput") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!V§);
         §]E§.setText(this.§^3§,"TextField_CodeEnterInput");
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
         this.§#!O§("Incorrect code");
         this.§6H§ = false;
      }
      
      override public function updateTextFields() : void
      {
         §[!<§.§'!S§.updateTextFields(§]E§,"CodeEnter_Popup");
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §%0§.sHighscoreSidebar.enableLoginButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"!2§.§3d§);
            §?!A§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§"!2§.§+!^§);
            §?!A§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§3`§.removeEventListener(§^"§.§'!2§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
