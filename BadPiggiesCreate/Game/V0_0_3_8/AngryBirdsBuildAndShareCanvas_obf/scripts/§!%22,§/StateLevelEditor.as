package §!",§
{
   import §!!T§.§"!S§;
   import §!D§.*;
   import §&"+§.§<!1§;
   import §,m§.§?"%§;
   import §0!F§.§^d§;
   import §1S§.§-!b§;
   import §1S§.§`"$§;
   import §4!7§.§]!1§;
   import §4u§.§<!L§;
   import §9!7§.*;
   import §9e§.§"!e§;
   import §>,§.§?A§;
   import §>0§.§=D§;
   import §>w§.§4E§;
   import §?!V§.§"a§;
   import §@!H§.§!!&§;
   import §@!H§.§,!=§;
   import §@!H§.§,!a§;
   import §@!H§.§78§;
   import §@!H§.§;!L§;
   import §@!H§.§[!<§;
   import §]!b§.§]?§;
   import §]!l§.§-"&§;
   import §^"0§.§1!p§;
   import §`%§.§8!0§;
   import com.rovio.assets.§%"4§;
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
   
   public class StateLevelEditor extends §4E§ implements IEventDispatcher
   {
      
      public static const §#!w§:String = "StateLevelEditor";
      
      private static const §;"%§:int = 20000;
       
      
      private const §9G§:Boolean = false;
      
      private var §^2§:EventDispatcher;
      
      private var §8O§:§]?§;
      
      private var §<c§:Boolean = false;
      
      private var §1!&§:Boolean = false;
      
      private var §?!5§:Shape = null;
      
      private var §@!<§:Vector.<§!!&§>;
      
      private var §+w§:Boolean = false;
      
      private var §8f§:String = "";
      
      private var §%W§:String = "";
      
      private var §0!s§:§78§;
      
      private var §^%§:Boolean = false;
      
      private var §^!§:Boolean;
      
      private var §^3§:Boolean = false;
      
      private var §%_§:int = -1;
      
      private var §[!4§:Vector.<§0!`§>;
      
      private var §>!s§:Vector.<§]!1§>;
      
      private var §#",§:§,!=§;
      
      private var §75§:§-!b§;
      
      private var §4!=§:MovieClip;
      
      private var §8!a§:Vector.<DisplayObject>;
      
      private var §1V§:§`"$§;
      
      private var §"!+§:§1!p§;
      
      private var §[!x§:§?A§;
      
      private var §7j§:int = 20000;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§^2§ = new EventDispatcher();
         this.§@!<§ = new Vector.<§!!&§>();
         this.§[!4§ = new Vector.<§0!`§>();
         this.§8!a§ = new Vector.<DisplayObject>();
         super(param1,param2);
         §"!S§.registerMethod("openEditor",this.§,K§);
         §"!S§.registerMethod("snapshot",this.save);
         §<!L§.log("External methods registered.");
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new §,!a§(this);
         §=D§.§0!E§(true);
         this.§8O§ = new §]?§(this);
         if(!this.§#",§)
         {
            this.§#",§ = new §,!=§(this,this.§8O§.§4+§);
         }
         new §[!<§(this.§<!9§());
         §^d§.§+!f§.start();
         this.§&!Y§(false);
         var _loc1_:Class = §%"4§.§>!v§("HighlightArrow");
         this.§4!=§ = new _loc1_();
         this.§4!=§.visible = false;
         §1!j§.movieClip.addChild(this.§4!=§);
         this.§[!x§ = new §?A§(§"a§.§-!g§.Views.View_Settings[0],super.§1!j§.container);
         this.§[!x§.visible = true;
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=D§.§0!E§(true);
         §8!0§.resume();
         this.§8O§.activate();
         if(this.§1!&§)
         {
            this.§1!&§ = false;
         }
         §8!0§.§#8§(this.§8O§.§!!@§);
         this.§8O§.§!!@§.§@v§(true);
         §1!j§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§+&§);
         §1!j§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§3R§);
         §-"&§.§?!Q§().addEventListener(Event.CHANGE,this.§;!B§);
         this.§;!B§();
         (this.§<!9§().getItemByName("ButtonGravity") as §6"0§).setComponentState(§6"0§.§ B§);
         (this.§<!9§().getItemByName("ButtonGravity") as §6"0§).setVisibility(true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§8!0§.isPaused)
         {
            this.§8O§.update(param1);
         }
         this.§default§(this.§8O§.§4+§.§]!D§.objects.getJoints());
         this.§<!9§().§8!n§(param1);
         §[!<§.§9j§.§;!R§();
         this.§<D§(param1);
         if(this.§0!s§)
         {
            this.§0!s§.update(param1);
         }
         if(this.§<c§)
         {
            §"F§.loadLevel(this.§8O§.§4+§.§]!D§.§>7§(),StateLevelEditorTestPlay.§#!w§);
            mNextState = §"F§.§#!w§;
            this.§<c§ = false;
            this.§1!&§ = true;
         }
         if(mNextState.length > 0)
         {
            §]!1§.§9j§.§>!;§();
            return §4E§.STATE_STATUS_COMPLETED;
         }
         if(§]!1§.§9j§.canSave())
         {
            this.§7j§ -= param1;
            if(this.§7j§ <= 0)
            {
               this.§7j§ = §;"%§;
               this.save();
            }
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      public function § "+§() : Boolean
      {
         return this.§1!&§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§^y§(null);
         §1!j§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§+&§);
      }
      
      private function §+&§(param1:MouseEvent) : void
      {
         if(this.§0!s§)
         {
            this.§0!s§.onEnterGUI();
         }
         this.§^%§ = true;
      }
      
      private function §3R§(param1:MouseEvent) : void
      {
         if(this.§0!s§)
         {
            this.§0!s§.onLeaveGUI();
         }
         this.§^%§ = false;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT : §6"0§.§ B§;
         (§1!j§.getItemByName(param1) as §3!6§).setComponentState(_loc3_);
      }
      
      public function §>t§() : Boolean
      {
         return this.§^!§;
      }
      
      public function §&!Y§(param1:Boolean) : void
      {
         if(this.§^!§ == param1)
         {
            return;
         }
         this.§^!§ = param1;
         this.dispatchEvent(new §?"%§(§?"%§.dynamic));
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         var _loc4_:§3!6§ = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.dispatchEvent(new Event("close_popups"));
               break;
            case "SELECT_THEME":
               this.§8O§.§!!@§.§,!F§((param3 as §;!L§).getItemName());
               break;
            case "CONTINUE":
               this.§7!#§();
               break;
            case "PUBLISH":
               this.dispatchEvent(new §?"%§(§?"%§.PUBLISH));
               break;
            case "CANCEL":
               this.cancel();
               break;
            case "SAVE":
               this.save();
               break;
            case "HELP_BUTTON":
               this.§1V§ = new §`"$§(§1!j§,§"a§.§-!g§.Views.PopupView_EditorHelp[0]);
               this.§1V§.getItemByName("Container_Advanced").setVisibility(false);
               this.§1V§.getItemByName("Container_Tips").setVisibility(true);
               this.§1V§.open();
               break;
            case "HELP_ADVANCED":
               this.§1V§.getItemByName("Container_Advanced").setVisibility(true);
               this.§1V§.getItemByName("Container_Tips").setVisibility(false);
               break;
            case "HELP_BACK":
               this.§1V§.getItemByName("Container_Advanced").setVisibility(false);
               this.§1V§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               this.§^3§ = !this.§^3§;
               §"!S§.doJsCall("onFullscreenToggle");
               this.§[!x§.§1!t§();
               break;
            case "HELP_CLOSE":
               (_loc4_ = this.§[!x§.getItemByName("Button_Help") as §3!6§).§2!C§();
               this.§1V§.close();
               break;
            case "ZOOM_DRAG":
               this.§8O§.§!!@§.setZoomRatio(1 - (param3 as §@!M§).§"C§());
               break;
            case "TOGGLE_PHYSICS":
               this.§`h§();
            case "SHOW_QUEST_INFO":
               break;
            case "HIDE_QUEST_INFO":
               break;
            case "SHOP_BUTTON":
               this.§"!+§ = new §1!p§(§"a§.§-!g§.Views.PopupView_Shop[0],this.§<!9§());
               this.§"!+§.open();
               break;
            case "SHOP_CLOSE":
               if(this.§"!+§)
               {
                  this.§"!+§.close();
               }
               break;
            case "SETTINGS_BUTTON":
               if(this.§[!x§)
               {
                  this.§[!x§.§1!t§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               break;
            default:
               if(!§8!0§.isPaused)
               {
                  this.dispatchEvent(new §?"%§(param2));
                  break;
               }
         }
      }
      
      private function §7!#§() : void
      {
         this.dispatchEvent(new §?"%§(§?"%§.CONTINUE));
      }
      
      private function cancel() : void
      {
         this.dispatchEvent(new §?"%§(§?"%§.CANCEL));
      }
      
      private function §`h§() : void
      {
         this.dispatchEvent(new §?"%§(§?"%§.§@p§));
      }
      
      private function §;!B§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§8!0§.isPaused)
         {
            return;
         }
         §8!0§.§00§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§<!9§().§ !R§())
            {
               this.§<!9§().§<z§();
            }
            else
            {
               this.§<!9§().§'p§("Blocks");
               this.§<!9§().§]!n§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§`h§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§7!#§();
         }
         else if(param1.keyCode == Keyboard.I && param1.ctrlKey)
         {
            (AngryBirdsFP11.§8!v§ as §"!e§).§'O§();
         }
         this.dispatchEvent(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §8!0§.§00§.keyUp(param1);
         this.dispatchEvent(param1);
      }
      
      public function §,K§(param1:Object) : void
      {
         §<!L§.log("onOpenEditorRequest! " + param1[0]);
         if(§3!P§.§!!t§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §"F§.§9!B§(StateLevelEditor.§#!w§);
            }
            else
            {
               §"F§.§@"3§(StateLevelEditor.§#!w§,param1[0]);
            }
            §3!P§.§"!U§.§6?§(§"F§.§#!w§);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         this.dispatchEvent(new §?"%§(§?"%§.SAVE));
      }
      
      public function §'!y§(param1:int, param2:int) : void
      {
      }
      
      public function §6!§(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§?!5§ != null)
            {
               this.§?!5§.graphics.clear();
            }
            return;
         }
         if(this.§?!5§ == null)
         {
            this.§?!5§ = new Shape();
            §1!j§.addChildAt(this.§?!5§,0);
         }
         this.§?!5§.graphics.clear();
         this.§?!5§.graphics.beginFill(65280,0.1);
         this.§?!5§.graphics.lineStyle(1,43520,0.2);
         this.§?!5§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§?!5§.graphics.endFill();
      }
      
      public function §default§(param1:Vector.<§<!1§>) : void
      {
         this.§#",§.update(param1);
      }
      
      public function §<D§(param1:int) : void
      {
         var deltaTime:int = param1;
         this.§@!<§ = this.§@!<§.filter(function(param1:§!!&§, param2:int, param3:Vector.<§!!&§>):Boolean
         {
            return param1.update(deltaTime);
         });
      }
      
      public function §#"1§(param1:int, param2:int) : void
      {
         var _loc3_:§!!&§ = new §!!&§(param1,param2);
         this.§@!<§.push(_loc3_);
         §1!j§.addChildAt(_loc3_,0);
      }
      
      public function §<!9§() : §,!a§
      {
         return §1!j§ as §,!a§;
      }
      
      public function §^y§(param1:§78§) : void
      {
         if(this.§0!s§)
         {
            §1!j§.removeChild(this.§0!s§);
         }
         this.§0!s§ = param1;
         if(this.§0!s§)
         {
            §1!j§.addChildAt(this.§0!s§,0);
            if(this.§^%§)
            {
               this.§0!s§.onEnterGUI();
            }
         }
      }
      
      public function § g§() : void
      {
         this.§<c§ = true;
      }
      
      public function §4!Z§(param1:Boolean) : void
      {
         §"!S§.doJsCall("onLevelDataChanged",param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§^2§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§^2§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^2§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§^2§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^2§.willTrigger(param1);
      }
   }
}
