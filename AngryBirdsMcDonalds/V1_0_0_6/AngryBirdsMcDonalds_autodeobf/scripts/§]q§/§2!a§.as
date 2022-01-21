package §]q§
{
   import § e§.§&!&§;
   import §"f§.§%1§;
   import §,§.§6!,§;
   import §0;§.§3=§;
   import §31§.§?![§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §7!>§.§0!_§;
   import §7!Q§.§[!5§;
   import §8<§.§with§;
   import §>!<§.§-E§;
   import §[l§.§,Q§;
   import §`!@§.§!!Y§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §2!a§ extends Popup implements §[!X§
   {
      
      private static var §,c§:Class = §#v§;
       
      
      private var §=!P§:StatePopupManager;
      
      private var §43§:§1!b§;
      
      private var §^n§:Boolean = false;
      
      private var §=!=§:String = "";
      
      public function §2!a§(param1:§3=§, param2:StatePopupManager, param3:§1!b§)
      {
         super(§with§.§ !0§(§,c§),param1);
         §"]§ = param1;
         this.§=!P§ = param2;
         this.§43§ = param3;
         this.§=!P§.addEventListener(§6!,§.§;I§,this.onUiInteraction);
         (§"]§.getItemByName("TextField_CodeEnterInput") as §?![§).§8!,§(§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§6!,§) : void
      {
         this.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
         this.§43§.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "SUBMIT_CODE":
               _loc4_ = §"]§.getText("TextField_CodeEnterInput");
               this.§+!C§(_loc4_);
               break;
            case "CANCEL_CODE":
               this.preClose();
         }
      }
      
      private function §+!C§(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:§-E§ = null;
         var _loc2_:String = §&!&§.§+j§.§'f§("LevelSelectionStateCustom","Incorrect_Code");
         var _loc3_:String = §&!&§.§+j§.§'f§("LevelSelectionStateCustom","Code_Used");
         if(this.§^n§ == false)
         {
            _loc4_ = "code";
            _loc5_ = {
               "playerId":§[!5§.§7!h§.email,
               "code":param1
            };
            _loc6_ = new §-E§(_loc5_,§ 4§.§=R§ + _loc4_,this,§-E§.§]!,§);
            this.§^n§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §!!Y§.§@M§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§^n§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §&!&§.§+j§.§'f§("Error_Messages","Incorrect_Code");
            this.§0!2§("");
            this.preClose();
            §6l§.§[!7§(§"]§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §&!&§.§+j§.§'f§("Error_Messages","Code_Used");
            this.§0!2§("");
            this.preClose();
            §6l§.§[!7§(§"]§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §0!_§.§+j§.§?@§(_loc4_);
            this.preClose();
            §6l§.§[!7§(§"]§);
            this.§0!2§("");
         }
      }
      
      private function §0!2§(param1:String) : void
      {
         var _loc2_:§?![§ = null;
         if(param1 != "")
         {
            if(§"]§)
            {
               this.§=!=§ = §"]§.getText("TextField_CodeEnterInput");
               §"]§.setText(param1,"TextField_CodeEnterInput");
               _loc2_ = §"]§.getItemByName("TextField_CodeEnterInput") as §?![§;
               if(_loc2_ && _loc2_.§&t§)
               {
                  _loc2_.§&t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`h§);
               }
            }
         }
      }
      
      private function §`h§(param1:MouseEvent) : void
      {
         (§"]§.getItemByName("TextField_CodeEnterInput") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`h§);
         §"]§.setText(this.§=!=§,"TextField_CodeEnterInput");
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
         this.§0!2§("Incorrect code");
         this.§^n§ = false;
      }
      
      override public function updateTextFields() : void
      {
         §&!&§.§+j§.updateTextFields(§"]§,"CodeEnter_Popup");
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §,Q§.sHighscoreSidebar.enableLoginButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§%1§.§=!1§);
            §<!J§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§%1§.§&!P§);
            §<!J§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§=!P§.removeEventListener(§6!,§.§;I§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
