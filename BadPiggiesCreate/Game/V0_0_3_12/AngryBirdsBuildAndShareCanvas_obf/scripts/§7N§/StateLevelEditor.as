package §7N§
{
   import §"p§.§@8§;
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §,!x§.§0!s§;
   import §,!x§.§]S§;
   import §,r§.§5!L§;
   import §-!@§.§6P§;
   import §-=§.§8"1§;
   import §0!6§.§&l§;
   import §1!"§.§[f§;
   import §2!n§.§!!2§;
   import §3",§.§0"<§;
   import §5!8§.*;
   import §7!%§.§%h§;
   import §7!%§.§3![§;
   import §7"1§.§%W§;
   import §=e§.§1!@§;
   import §>!#§.§-""§;
   import §>";§.§#§;
   import §?",§.§7"?§;
   import §@">§.§#! §;
   import §@r§.§[i§;
   import §^H§.§"!i§;
   import §^H§.§&E§;
   import §^H§.§1l§;
   import §^H§.§;k§;
   import §^H§.§[!G§;
   import §^H§.§`J§;
   import §^x§.*;
   import com.rovio.assets.§!"'§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class StateLevelEditor extends §,v§ implements IEventDispatcher
   {
      
      public static const §?!#§:String = "BuildChannel";
      
      public static const §=!-§:String = "MainMenuChannel";
      
      public static const §8n§:String = "StateLevelEditor";
      
      private static const §+!B§:int = 20000;
       
      
      private const §-!x§:Boolean = false;
      
      private var §1^§:EventDispatcher;
      
      private var §[",§:§]S§;
      
      private var §@!n§:Boolean = false;
      
      private var §9!j§:Shape = null;
      
      private var §0n§:Vector.<§`J§>;
      
      private var §7f§:Boolean = false;
      
      private var §-z§:String = "";
      
      private var §'D§:String = "";
      
      private var §<!>§:§;k§;
      
      private var §5!X§:Boolean = false;
      
      private var §;"!§:Boolean;
      
      private var §<Y§:Boolean = false;
      
      private var §0!>§:int = -1;
      
      private var §?"<§:Vector.<§3!r§>;
      
      private var §^K§:Vector.<§0!s§>;
      
      private var §"!u§:§[!G§;
      
      private var §=!q§:§3![§;
      
      private var §>§:MovieClip;
      
      private var §53§:Vector.<DisplayObject>;
      
      private var §2!^§:§%h§;
      
      private var §#"<§:§!!2§;
      
      private var §;!S§:§&l§;
      
      private var §>X§:int = 20000;
      
      private var §7g§:Vector.<Function>;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§1^§ = new EventDispatcher();
         this.§0n§ = new Vector.<§`J§>();
         this.§?"<§ = new Vector.<§3!r§>();
         this.§53§ = new Vector.<DisplayObject>();
         this.§7g§ = new Vector.<Function>();
         super(param1,param2);
         §1!@§.registerMethod("openEditor",this.§-!J§);
         §1!@§.registerMethod("snapshot",this.save);
         §@8§.log("External methods registered.");
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §1l§(this);
         §[i§.§@b§(true);
         this.§[",§ = new §]S§(this);
         if(!this.§"!u§)
         {
            this.§"!u§ = new §[!G§(this,this.§[",§.§<" §);
         }
         new §&E§(this.§!!=§());
         §0"<§.§<?§.start();
         this.§]U§(false);
         var _loc1_:Class = §!"'§.§%!Q§("HighlightArrow");
         this.§>§ = new _loc1_();
         this.§>§.visible = false;
         §?F§.movieClip.addChild(this.§>§);
         this.§;!S§ = new §&l§(§#! §.§5!;§.Views.View_Settings[0],super.§?F§.container);
         this.§;!S§.visible = true;
         §^k§.§>7§(§?!#§,1,1);
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §^k§.playSound("BadPiggies_Building",§?!#§);
         §[i§.§@b§(true);
         §%W§.resume();
         this.§[",§.activate();
         §%W§.§92§(this.§[",§.§7I§);
         this.§[",§.§7I§.§0!w§(true);
         §?F§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§7F§);
         §?F§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§>c§);
         §[f§.§@"3§().addEventListener(Event.CHANGE,this.§'!f§);
         this.§'!f§();
         (this.§!!=§().getItemByName("ButtonGravity") as §;_§).setComponentState(§;_§.§ "2§);
         (this.§!!=§().getItemByName("ButtonGravity") as §;_§).setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Function = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§%W§.isPaused)
         {
            this.§[",§.update(param1);
            for each(_loc3_ in this.§7g§)
            {
               _loc3_(param1);
            }
         }
         this.§?L§(this.§[",§.§<" §.§9!8§.objects.getJoints());
         this.§!!=§().§<"1§(param1);
         §&E§.§ "!§.§`!q§();
         this.§'8§(param1);
         if(this.§<!>§)
         {
            this.§<!>§.update(param1);
         }
         if(this.§@!n§)
         {
            this.dispatchEvent(new §8"1§(§8"1§.§;S§));
            §@!x§.loadLevel(this.§[",§.§<" §.§=c§,StateLevelEditorTestPlay.§8n§);
            mNextState = §@!x§.§8n§;
            this.§@!n§ = false;
         }
         if(mNextState.length > 0)
         {
            if(mNextState == §5!L§.§8n§)
            {
               this.§[",§.§3!V§.§'I§();
            }
            §0!s§.§ "!§.§6f§();
            return §,v§.STATE_STATUS_COMPLETED;
         }
         if(§0!s§.§ "!§.§-U§())
         {
            this.§>X§ -= param1;
            if(this.§>X§ <= 0)
            {
               this.§>X§ = §+!B§;
               this.save();
            }
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §^k§.§3,§();
         §-""§.§,,§ = this.§[",§.§<" §.§=c§;
         this.§<^§(null);
         §?F§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§7F§);
      }
      
      private function §7F§(param1:MouseEvent) : void
      {
         if(this.§<!>§)
         {
            this.§<!>§.onEnterGUI();
         }
         this.§5!X§ = true;
      }
      
      private function §>c§(param1:MouseEvent) : void
      {
         if(this.§<!>§)
         {
            this.§<!>§.onLeaveGUI();
         }
         this.§5!X§ = false;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §;_§.COMPONENT_STATE_ACTIVE_DEFAULT : §;_§.§ "2§;
         (§?F§.getItemByName(param1) as §;!Z§).setComponentState(_loc3_);
      }
      
      public function §false§() : Boolean
      {
         return this.§;"!§;
      }
      
      public function §]U§(param1:Boolean) : void
      {
         if(this.§;"!§ == param1)
         {
            return;
         }
         this.§;"!§ = param1;
         this.dispatchEvent(new §8"1§(§8"1§.§#!t§));
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         var _loc4_:§;!Z§ = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.dispatchEvent(new Event("close_popups"));
               break;
            case "SELECT_THEME":
               this.§[",§.§7I§.§<>§((param3 as §"!i§).getItemName());
               break;
            case "CONTINUE":
               §^k§.playSound("Sound_Button_Click");
               this.§6!N§();
               break;
            case "PUBLISH":
               §^k§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §8"1§(§8"1§.PUBLISH));
               break;
            case "CANCEL":
               §^k§.playSound("Sound_Button_Click");
               this.cancel();
               break;
            case "SAVE":
               this.save();
               break;
            case "HELP_BUTTON":
               §^k§.playSound("Sound_Button_Click");
               if(!this.§2!^§)
               {
                  this.§2!^§ = new §%h§(§?F§,§#! §.§5!;§.Views.PopupView_EditorHelp[0]);
               }
               this.§2!^§.getItemByName("Container_Advanced").setVisibility(false);
               this.§2!^§.getItemByName("Container_Tips").setVisibility(true);
               this.§2!^§.open();
               break;
            case "HELP_ADVANCED":
               §^k§.playSound("Sound_Button_Click");
               §6P§.§[!b§();
               break;
            case "HELP_BACK":
               §^k§.playSound("Sound_Button_Click");
               this.§2!^§.getItemByName("Container_Advanced").setVisibility(false);
               this.§2!^§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               §^k§.playSound("Sound_Button_Click");
               this.§<Y§ = !this.§<Y§;
               AngryBirdsFP11.§"!V§.§=!C§();
               this.§;!S§.§>!o§();
               break;
            case "HELP_CLOSE":
               (_loc4_ = this.§;!S§.getItemByName("Button_Help") as §;!Z§).§<!_§();
               this.§2!^§.close();
               this.§2!^§ = null;
               break;
            case "ZOOM_DRAG":
               this.§[",§.§7I§.setZoomRatio(1 - (param3 as §1!Y§).§;!X§());
               break;
            case "TOGGLE_PHYSICS":
               §^k§.playSound("Sound_Button_Click");
               this.§4!,§();
            case "SHOW_QUEST_INFO":
               break;
            case "HIDE_QUEST_INFO":
               break;
            case "SHOP_BUTTON":
               §^k§.playSound("Sound_Button_Click");
               this.§#"<§ = new §!!2§(§#! §.§5!;§.Views.PopupView_Shop[0],this.§!!=§());
               this.§#"<§.open();
               break;
            case "SHOP_CLOSE":
               §^k§.playSound("Sound_Button_Back");
               if(this.§#"<§)
               {
                  this.§#"<§.close();
               }
               break;
            case "SETTINGS_BUTTON":
               §^k§.playSound("Sound_Button_Click");
               if(this.§;!S§)
               {
                  this.§;!S§.§>!o§();
               }
               break;
            case "TOGGLE_SOUNDS":
               §^k§.playSound("Sound_Button_Click");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               break;
            case "RESOURCE_ADD_BLOCKS":
               §^k§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §8"1§(§8"1§.§,!S§));
               break;
            case "RESOURCE_ADD_BOLTS":
               §^k§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §8"1§(§8"1§.§7!0§));
               break;
            case "RESOURCE_ADD_COINS":
               §^k§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §8"1§(§8"1§.§8"8§));
               break;
            default:
               if(!§%W§.isPaused)
               {
                  this.dispatchEvent(new §8"1§(param2));
                  break;
               }
         }
      }
      
      private function §6!N§() : void
      {
         this.dispatchEvent(new §8"1§(§8"1§.CONTINUE));
      }
      
      private function cancel() : void
      {
         this.dispatchEvent(new §8"1§(§8"1§.CANCEL));
      }
      
      private function §4!,§() : void
      {
         this.dispatchEvent(new §8"1§(§8"1§.§'i§));
      }
      
      private function §'!f§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§%W§.isPaused)
         {
            return;
         }
         §%W§.§6h§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§!!=§().§5!T§())
            {
               this.§!!=§().§;"%§();
            }
            else
            {
               this.§!!=§().§8"=§("Blocks");
               this.§!!=§().§0"8§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§4!,§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§6!N§();
         }
         else if(param1.keyCode == Keyboard.I && param1.ctrlKey)
         {
            (AngryBirdsFP11.§`!j§ as §#§).§1,§();
         }
         else if(param1.keyCode == Keyboard.X && param1.ctrlKey)
         {
            mNextState = §5!L§.§8n§;
         }
         this.dispatchEvent(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §%W§.§6h§.keyUp(param1);
         this.dispatchEvent(param1);
      }
      
      public function §-!J§(param1:Object) : void
      {
         §@8§.log("onOpenEditorRequest! " + param1[0]);
         if(§%"$§.§;U§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §@!x§.§?=§(StateLevelEditor.§8n§);
            }
            else
            {
               §@!x§.§]"0§(StateLevelEditor.§8n§,param1[0]);
            }
            §%"$§.§"!V§.§0!Q§(§@!x§.§8n§);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         if(§0"&§)
         {
            this.dispatchEvent(new §8"1§(§8"1§.SAVE));
         }
      }
      
      public function §+!p§(param1:int, param2:int) : void
      {
      }
      
      public function §#!a§(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§9!j§ != null)
            {
               this.§9!j§.graphics.clear();
            }
            return;
         }
         if(this.§9!j§ == null)
         {
            this.§9!j§ = new Shape();
            §?F§.addChildAt(this.§9!j§,0);
         }
         this.§9!j§.graphics.clear();
         this.§9!j§.graphics.beginFill(65280,0.1);
         this.§9!j§.graphics.lineStyle(1,43520,0.2);
         this.§9!j§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§9!j§.graphics.endFill();
      }
      
      public function §?L§(param1:Vector.<§7"?§>) : void
      {
         this.§"!u§.update(param1);
      }
      
      public function §'8§(param1:int) : void
      {
         var deltaTime:int = param1;
         this.§0n§ = this.§0n§.filter(function(param1:§`J§, param2:int, param3:Vector.<§`J§>):Boolean
         {
            return param1.update(deltaTime);
         });
      }
      
      public function §8"-§(param1:int, param2:int) : void
      {
         var _loc3_:§`J§ = new §`J§(param1,param2);
         this.§0n§.push(_loc3_);
         §?F§.addChildAt(_loc3_,0);
      }
      
      public function §!!=§() : §1l§
      {
         return §?F§ as §1l§;
      }
      
      public function §<^§(param1:§;k§) : void
      {
         if(this.§<!>§)
         {
            §?F§.removeChild(this.§<!>§);
         }
         this.§<!>§ = param1;
         if(this.§<!>§)
         {
            §?F§.addChildAt(this.§<!>§,0);
            if(this.§5!X§)
            {
               this.§<!>§.onEnterGUI();
            }
         }
      }
      
      public function get §0&§() : Boolean
      {
         return this.§5!X§;
      }
      
      public function §0!+§(param1:Function) : void
      {
         this.§7g§.push(param1);
      }
      
      public function §5!2§() : void
      {
         this.§@!n§ = true;
      }
      
      public function §<r§(param1:Boolean) : void
      {
         §1!@§.doJsCall("onLevelDataChanged",param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§1^§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§1^§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1^§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§1^§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1^§.willTrigger(param1);
      }
   }
}
