package §2!G§
{
   import §#!1§.§!!X§;
   import §&6§.§`!T§;
   import §&6§.§`!q§;
   import §'+§.§<@§;
   import §,!C§.§3!&§;
   import §,!H§.§ for§;
   import §,E§.§"!K§;
   import §0$§.§!t§;
   import §2S§.§6!P§;
   import §4!A§.§7#§;
   import §5!W§.§`X§;
   import §7p§.§%g§;
   import §9s§.§!!`§;
   import §@-§.§[y§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §`!_§ extends Popup implements §`!T§
   {
      
      private static var §&+§:Class = §@P§;
       
      
      private var §;5§:StatePopupManager;
      
      private var §%!g§:§ for§;
      
      private var §5!e§:Boolean = false;
      
      private var §'M§:String = "";
      
      public function §`!_§(param1:§%g§, param2:StatePopupManager, param3:§ for§)
      {
         super(§<@§.§,'§(§&+§),param1);
         §7Y§ = param1;
         this.§;5§ = param2;
         this.§%!g§ = param3;
         this.§;5§.addEventListener(§!!`§.§5!R§,this.onUiInteraction);
         (§7Y§.getItemByName("TextField_CodeEnterInput") as §3!&§).§1S§(§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§!!`§) : void
      {
         this.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
         this.§%!g§.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "SUBMIT_CODE":
               _loc4_ = §7Y§.getText("TextField_CodeEnterInput");
               this.§ !?§(_loc4_);
               break;
            case "CANCEL_CODE":
               this.preClose();
         }
      }
      
      private function § !?§(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:§"!K§ = null;
         var _loc2_:String = §!!X§.§5!!§.§"9§("LevelSelectionStateCustom","Incorrect_Code");
         var _loc3_:String = §!!X§.§5!!§.§"9§("LevelSelectionStateCustom","Code_Used");
         if(this.§5!e§ == false)
         {
            _loc4_ = "code";
            _loc5_ = {
               "playerId":§!t§.§<1§.email,
               "code":param1
            };
            _loc6_ = new §"!K§(_loc5_,§3![§.§=![§ + _loc4_,this,§"!K§.§<!4§);
            this.§5!e§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §`!q§.§-`§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§5!e§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §!!X§.§5!!§.§"9§("Error_Messages","Incorrect_Code");
            this.§3m§("");
            this.preClose();
            §-!3§.§+F§(§7Y§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §!!X§.§5!!§.§"9§("Error_Messages","Code_Used");
            this.§3m§("");
            this.preClose();
            §-!3§.§+F§(§7Y§,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §6!P§.§5!!§.§<4§(_loc4_);
            this.preClose();
            §-!3§.§+F§(§7Y§);
            this.§3m§("");
         }
      }
      
      private function §3m§(param1:String) : void
      {
         var _loc2_:§3!&§ = null;
         if(param1 != "")
         {
            if(§7Y§)
            {
               this.§'M§ = §7Y§.getText("TextField_CodeEnterInput");
               §7Y§.setText(param1,"TextField_CodeEnterInput");
               _loc2_ = §7Y§.getItemByName("TextField_CodeEnterInput") as §3!&§;
               if(_loc2_ && _loc2_.§>!3§)
               {
                  _loc2_.§>!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§+2§);
               }
            }
         }
      }
      
      private function §+2§(param1:MouseEvent) : void
      {
         (§7Y§.getItemByName("TextField_CodeEnterInput") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+2§);
         §7Y§.setText(this.§'M§,"TextField_CodeEnterInput");
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
         this.§3m§("Incorrect code");
         this.§5!e§ = false;
      }
      
      override public function updateTextFields() : void
      {
         §!!X§.§5!!§.updateTextFields(§7Y§,"CodeEnter_Popup");
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §`X§.sHighscoreSidebar.enableLoginButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§7#§.§=Y§);
            §]R§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§7#§.§4@§);
            §]R§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§;5§.removeEventListener(§!!`§.§5!R§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
