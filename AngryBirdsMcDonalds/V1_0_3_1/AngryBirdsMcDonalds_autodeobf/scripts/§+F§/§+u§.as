package §+F§
{
   import §&!V§.§=O§;
   import §,i§.§7;§;
   import §2y§.§?`§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   import §7-§.§[!$§;
   import §8T§.§[!R§;
   import §<Z§.§!!W§;
   import §<Z§.§"!8§;
   import §=b§.§,!G§;
   import §?7§.§87§;
   import §?I§.§`E§;
   import §`!"§.§;i§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §+u§ extends Popup implements §!!W§
   {
      
      private static var §8+§:Class = §%l§;
       
      
      private var §?E§:StatePopupManager;
      
      private var §'A§:§=O§;
      
      private var §;Z§:Boolean = false;
      
      private var §7+§:String = "";
      
      public function §+u§(param1:§"!n§, param2:StatePopupManager, param3:§=O§)
      {
         super(§1[§.§4L§(§8+§),param1);
         §<D§ = param1;
         this.§?E§ = param2;
         this.§'A§ = param3;
         this.§?E§.addEventListener(§[!R§.§11§,this.onUiInteraction);
         (§<D§.getItemByName("TextField_CodeEnterInput") as §?`§).§;!!§(§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§[!R§) : void
      {
         this.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
         this.§'A§.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "SUBMIT_CODE":
               _loc4_ = §<D§.getText("TextField_CodeEnterInput");
               this.§9U§(_loc4_);
               break;
            case "CANCEL_CODE":
               this.preClose();
         }
      }
      
      private function §9U§(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:§7;§ = null;
         var _loc2_:String = §`E§.§@!7§.§!!>§("LevelSelectionStateCustom","Incorrect_Code");
         var _loc3_:String = §`E§.§@!7§.§!!>§("LevelSelectionStateCustom","Code_Used");
         if(this.§;Z§ == false)
         {
            _loc4_ = "code";
            _loc5_ = {
               "playerId":§,!G§.§-!8§.email,
               "code":param1
            };
            _loc6_ = new §7;§(_loc5_,§2!M§.§`8§ + _loc4_,this,§7;§.§[%§);
            this.§;Z§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §"!8§.§&!p§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§;Z§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §`E§.§@!7§.§!!>§("Error_Messages","Incorrect_Code");
            this.§#4§("");
            this.preClose();
            § !J§.§ 9§(§<D§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §`E§.§@!7§.§!!>§("Error_Messages","Code_Used");
            this.§#4§("");
            this.preClose();
            § !J§.§ 9§(§<D§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §87§.§@!7§.§>&§(_loc4_);
            this.preClose();
            § !J§.§ 9§(§<D§);
            this.§#4§("");
         }
      }
      
      private function §#4§(param1:String) : void
      {
         var _loc2_:§?`§ = null;
         if(param1 != "")
         {
            if(§<D§)
            {
               this.§7+§ = §<D§.getText("TextField_CodeEnterInput");
               §<D§.setText(param1,"TextField_CodeEnterInput");
               _loc2_ = §<D§.getItemByName("TextField_CodeEnterInput") as §?`§;
               if(_loc2_ && _loc2_.§0!j§)
               {
                  _loc2_.§0!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]!C§);
               }
            }
         }
      }
      
      private function §]!C§(param1:MouseEvent) : void
      {
         (§<D§.getItemByName("TextField_CodeEnterInput") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]!C§);
         §<D§.setText(this.§7+§,"TextField_CodeEnterInput");
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
         this.§#4§("Incorrect code");
         this.§;Z§ = false;
      }
      
      override public function updateTextFields() : void
      {
         §`E§.§@!7§.updateTextFields(§<D§,"CodeEnter_Popup");
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §[!$§.sHighscoreSidebar.enableLoginButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;i§.§<l§);
            §"! §.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;i§.§3C§);
            §"! §.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§?E§.removeEventListener(§[!R§.§11§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
