package §^^§
{
   import § ^§.§0c§;
   import § ^§.§@#§;
   import § q§.§>!Z§;
   import § true§.*;
   import §""§.§]!^§;
   import §#!8§.§&!'§;
   import §%!W§.§9!K§;
   import §&W§.§7L§;
   import §-!+§.§6"6§;
   import §-!H§.§0!]§;
   import §0!C§.§,!h§;
   import §07§.§^P§;
   import §0I§.§`!m§;
   import §1!5§.§;!F§;
   import §1!5§.§]P§;
   import §2b§.§8!m§;
   import §2x§.§!!6§;
   import §4!j§.*;
   import §7!g§.§?!i§;
   import §;W§.§!%§;
   import §;W§.§"w§;
   import §;W§.§%!§;
   import §;W§.§6!F§;
   import §;W§.§7"§;
   import §;W§.§`J§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §?!D§.§0"4§;
   import com.rovio.assets.§=#§;
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
   
   public class StateLevelEditor extends §>!T§ implements IEventDispatcher
   {
      
      public static const §,!Q§:String = "BuildChannel";
      
      public static const §%!x§:String = "MainMenuChannel";
      
      public static const §>H§:String = "StateLevelEditor";
      
      private static const §&$§:int = 20000;
       
      
      private const §<!a§:Boolean = false;
      
      private var §1i§:EventDispatcher;
      
      private var §`5§:§0c§;
      
      private var §0Q§:Boolean = false;
      
      private var §0J§:Shape = null;
      
      private var §6!U§:Vector.<§6!F§>;
      
      private var §?!c§:Boolean = false;
      
      private var §0W§:String = "";
      
      private var §&"6§:String = "";
      
      private var §]!#§:§!%§;
      
      private var §;""§:Boolean = false;
      
      private var §7#§:Boolean;
      
      private var §!!X§:Boolean = false;
      
      private var §5"9§:int = -1;
      
      private var §in §:Vector.<§[!f§>;
      
      private var §5"§:Vector.<§@#§>;
      
      private var §'l§:§`J§;
      
      private var §`R§:§]P§;
      
      private var § !?§:MovieClip;
      
      private var §]T§:Vector.<DisplayObject>;
      
      private var §3"<§:§;!F§;
      
      private var §=!P§:§>!Z§;
      
      private var §@!o§:§0"4§;
      
      private var §%C§:int = 20000;
      
      private var §'!I§:Vector.<Function>;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§1i§ = new EventDispatcher();
         this.§6!U§ = new Vector.<§6!F§>();
         this.§in § = new Vector.<§[!f§>();
         this.§]T§ = new Vector.<DisplayObject>();
         this.§'!I§ = new Vector.<Function>();
         super(param1,param2);
         §&!'§.registerMethod("openEditor",this.§?b§);
         §&!'§.registerMethod("snapshot",this.save);
         §7L§.log("External methods registered.");
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §"w§(this);
         §8!m§.§&!<§(true);
         this.§`5§ = new §0c§(this);
         if(!this.§'l§)
         {
            this.§'l§ = new §`J§(this,this.§`5§.§6%§);
         }
         new §7"§(this.§2!o§());
         §6"6§.§^F§.start();
         this.§<I§(false);
         var _loc1_:Class = §=#§.§1v§("HighlightArrow");
         this.§ !?§ = new _loc1_();
         this.§ !?§.visible = false;
         §3?§.movieClip.addChild(this.§ !?§);
         this.§@!o§ = new §0"4§(§,!h§.§`C§.Views.View_Settings[0],super.§3?§.container);
         this.§@!o§.visible = true;
         §5;§.§9L§(§,!Q§,3,1);
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5;§.playSound("BadPiggies_Building",§,!Q§);
         §8!m§.§&!<§(true);
         §5!U§.resume();
         this.§`5§.activate();
         §5!U§.§7!t§(this.§`5§.§0!Y§);
         this.§`5§.§0!Y§.§=o§(true);
         §3?§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§5!"§);
         §3?§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§4!M§);
         §9!K§.§8!?§().addEventListener(Event.CHANGE,this.§6S§);
         this.§6S§();
         (this.§2!o§().getItemByName("ButtonGravity") as §""3§).setComponentState(§""3§.§!`§);
         (this.§2!o§().getItemByName("ButtonGravity") as §""3§).setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Function = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§5!U§.isPaused)
         {
            this.§`5§.update(param1);
            for each(_loc3_ in this.§'!I§)
            {
               _loc3_(param1);
            }
         }
         this.§^g§(this.§`5§.§6%§.§9"&§.objects.getJoints());
         this.§2!o§().§4"7§(param1);
         §7"§.§7!?§.§2!t§();
         this.§#!a§(param1);
         if(this.§]!#§)
         {
            this.§]!#§.update(param1);
         }
         if(this.§0Q§)
         {
            this.dispatchEvent(new §?!i§(§?!i§.PLAY));
            §1§.loadLevel(this.§`5§.§6%§.§#"6§,StateLevelEditorTestPlay.§>H§);
            mNextState = §1§.§>H§;
            this.§0Q§ = false;
         }
         if(mNextState.length > 0)
         {
            if(mNextState == §!!6§.§>H§)
            {
               this.§`5§.§+"9§.§["<§();
            }
            §@#§.§7!?§.§'!y§();
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         if(§@#§.§7!?§.§<"$§())
         {
            this.§%C§ -= param1;
            if(this.§%C§ <= 0)
            {
               this.§%C§ = §&$§;
               this.save();
            }
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §5;§.§8X§();
         §^P§.§0! § = this.§`5§.§6%§.§#"6§;
         this.§9",§(null);
         §3?§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§5!"§);
      }
      
      private function §5!"§(param1:MouseEvent) : void
      {
         if(this.§]!#§)
         {
            this.§]!#§.onEnterGUI();
         }
         this.§;""§ = true;
      }
      
      private function §4!M§(param1:MouseEvent) : void
      {
         if(this.§]!#§)
         {
            this.§]!#§.onLeaveGUI();
         }
         this.§;""§ = false;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §""3§.COMPONENT_STATE_ACTIVE_DEFAULT : §""3§.§!`§;
         (§3?§.getItemByName(param1) as §8K§).setComponentState(_loc3_);
      }
      
      public function §0!O§() : Boolean
      {
         return this.§7#§;
      }
      
      public function §<I§(param1:Boolean) : void
      {
         if(this.§7#§ == param1)
         {
            return;
         }
         this.§7#§ = param1;
         this.dispatchEvent(new §?!i§(§?!i§.§0E§));
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         var _loc4_:§8K§ = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.dispatchEvent(new Event("close_popups"));
               break;
            case "SELECT_THEME":
               this.§`5§.§0!Y§.§<!>§((param3 as §%!§).getItemName());
               break;
            case "CONTINUE":
               §5;§.playSound("Sound_Button_Click");
               this.§6!<§();
               break;
            case "PUBLISH":
               §5;§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §?!i§(§?!i§.PUBLISH));
               break;
            case "CANCEL":
               §5;§.playSound("Sound_Button_Click");
               this.cancel();
               break;
            case "PLAY":
               §5;§.playSound("Sound_Button_Click");
               this.cancel();
               §&!'§.doJsCall("play");
               break;
            case "SAVE":
               this.save();
               break;
            case "HELP_BUTTON":
               §5;§.playSound("Sound_Button_Click");
               if(!this.§3"<§)
               {
                  this.§3"<§ = new §;!F§(§3?§,§,!h§.§`C§.Views.PopupView_EditorHelp[0]);
               }
               this.§3"<§.getItemByName("Container_Advanced").setVisibility(false);
               this.§3"<§.getItemByName("Container_Tips").setVisibility(true);
               this.§3"<§.open();
               break;
            case "HELP_ADVANCED":
               §5;§.playSound("Sound_Button_Click");
               §]!^§.§5"8§();
               break;
            case "HELP_BACK":
               §5;§.playSound("Sound_Button_Click");
               this.§3"<§.getItemByName("Container_Advanced").setVisibility(false);
               this.§3"<§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               §5;§.playSound("Sound_Button_Click");
               this.§!!X§ = !this.§!!X§;
               AngryBirdsFP11.§2p§.§`W§();
               this.§@!o§.§%7§();
               break;
            case "HELP_CLOSE":
               (_loc4_ = this.§@!o§.getItemByName("Button_Help") as §8K§).§@! §();
               this.§3"<§.close();
               this.§3"<§ = null;
               break;
            case "ZOOM_DRAG":
               this.§`5§.§0!Y§.setZoomRatio(1 - (param3 as §[!h§).§5t§());
               break;
            case "TOGGLE_PHYSICS":
               §5;§.playSound("Sound_Button_Click");
               this.§#4§();
            case "SHOW_QUEST_INFO":
               break;
            case "HIDE_QUEST_INFO":
               break;
            case "SHOP_BUTTON":
               §5;§.playSound("Sound_Button_Click");
               this.§=!P§ = new §>!Z§(§,!h§.§`C§.Views.PopupView_Shop[0],this.§2!o§());
               this.§=!P§.open();
               break;
            case "SHOP_CLOSE":
               §5;§.playSound("Sound_Button_Back");
               if(this.§=!P§)
               {
                  this.§=!P§.close();
               }
               break;
            case "SETTINGS_BUTTON":
               §5;§.playSound("Sound_Button_Click");
               if(this.§@!o§)
               {
                  this.§@!o§.§%7§();
               }
               break;
            case "TOGGLE_SOUNDS":
               §5;§.playSound("Sound_Button_Click");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               break;
            case "RESOURCE_ADD_BLOCKS":
               §5;§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §?!i§(§?!i§.§6j§));
               break;
            case "RESOURCE_ADD_BOLTS":
               §5;§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §?!i§(§?!i§.§>!q§));
               break;
            case "RESOURCE_ADD_COINS":
               §5;§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §?!i§(§?!i§.§ !C§));
               break;
            default:
               if(!§5!U§.isPaused)
               {
                  this.dispatchEvent(new §?!i§(param2));
                  break;
               }
         }
      }
      
      private function §6!<§() : void
      {
         this.dispatchEvent(new §?!i§(§?!i§.CONTINUE));
      }
      
      private function cancel() : void
      {
         this.dispatchEvent(new §?!i§(§?!i§.CANCEL));
      }
      
      private function §#4§() : void
      {
         this.dispatchEvent(new §?!i§(§?!i§.§"!,§));
      }
      
      private function §6S§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§5!U§.isPaused)
         {
            return;
         }
         §5!U§.§ !t§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§2!o§().§^![§())
            {
               this.§2!o§().§5!4§();
            }
            else
            {
               this.§2!o§().§^J§("Blocks");
               this.§2!o§().§'S§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§#4§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§6!<§();
         }
         else if(param1.keyCode == Keyboard.I && param1.ctrlKey)
         {
            (AngryBirdsFP11.§"!c§ as §0!]§).§8!Y§();
         }
         else if(param1.keyCode == Keyboard.X && param1.ctrlKey)
         {
            mNextState = §!!6§.§>H§;
         }
         this.dispatchEvent(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §5!U§.§ !t§.keyUp(param1);
         this.dispatchEvent(param1);
      }
      
      public function §?b§(param1:Object) : void
      {
         §7L§.log("onOpenEditorRequest! " + param1[0]);
         if(§@=§.§%"2§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §1§.§!"#§(StateLevelEditor.§>H§);
            }
            else
            {
               §1§.§?A§(StateLevelEditor.§>H§,param1[0]);
            }
            §@=§.§2p§.§4>§(§1§.§>H§);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         if(§%w§)
         {
            this.dispatchEvent(new §?!i§(§?!i§.SAVE));
         }
      }
      
      public function §+!%§(param1:int, param2:int) : void
      {
      }
      
      public function §4!i§(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§0J§ != null)
            {
               this.§0J§.graphics.clear();
            }
            return;
         }
         if(this.§0J§ == null)
         {
            this.§0J§ = new Shape();
            §3?§.addChildAt(this.§0J§,0);
         }
         this.§0J§.graphics.clear();
         this.§0J§.graphics.beginFill(65280,0.1);
         this.§0J§.graphics.lineStyle(1,43520,0.2);
         this.§0J§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§0J§.graphics.endFill();
      }
      
      public function §^g§(param1:Vector.<§`!m§>) : void
      {
         this.§'l§.update(param1);
      }
      
      public function §#!a§(param1:int) : void
      {
         var deltaTime:int = param1;
         this.§6!U§ = this.§6!U§.filter(function(param1:§6!F§, param2:int, param3:Vector.<§6!F§>):Boolean
         {
            return param1.update(deltaTime);
         });
      }
      
      public function § !<§(param1:int, param2:int) : void
      {
         var _loc3_:§6!F§ = new §6!F§(param1,param2);
         this.§6!U§.push(_loc3_);
         §3?§.addChildAt(_loc3_,0);
      }
      
      public function §2!o§() : §"w§
      {
         return §3?§ as §"w§;
      }
      
      public function §9",§(param1:§!%§) : void
      {
         if(this.§]!#§)
         {
            §3?§.removeChild(this.§]!#§);
         }
         this.§]!#§ = param1;
         if(this.§]!#§)
         {
            §3?§.addChildAt(this.§]!#§,0);
            if(this.§;""§)
            {
               this.§]!#§.onEnterGUI();
            }
         }
      }
      
      public function get §4Y§() : Boolean
      {
         return this.§;""§;
      }
      
      public function §&h§(param1:Function) : void
      {
         this.§'!I§.push(param1);
      }
      
      public function §+3§() : void
      {
         this.§0Q§ = true;
      }
      
      public function §,j§(param1:Boolean) : void
      {
         §&!'§.doJsCall("onLevelDataChanged",param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§1i§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§1i§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1i§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§1i§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1i§.willTrigger(param1);
      }
   }
}
