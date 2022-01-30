package §!!+§
{
   import §!q§.§ %§;
   import §!q§.§84§;
   import §%!I§.§3g§;
   import §%!Z§.§ !,§;
   import §%!Z§.§^u§;
   import §0!d§.*;
   import §1!p§.§`!#§;
   import §1U§.§"!V§;
   import §2!§.§>B§;
   import §3;§.§#!C§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §5!5§.§^e§;
   import §7!&§.§!!k§;
   import §7[§.§8!,§;
   import §8!G§.§;T§;
   import §8"'§.§?!`§;
   import §9!G§.§]!e§;
   import §9!z§.§%L§;
   import §9!z§.§'Y§;
   import §9!z§.§5"!§;
   import §9!z§.§8!8§;
   import §9!z§.§=T§;
   import §9!z§.§^!_§;
   import §<8§.*;
   import com.rovio.assets.§5!+§;
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
   
   public class StateLevelEditor extends §0!K§ implements IEventDispatcher
   {
      
      public static const §]"2§:String = "StateLevelEditor";
      
      private static const §<"-§:int = 20000;
       
      
      private const § [§:Boolean = false;
      
      private var §=0§:EventDispatcher;
      
      private var §5!V§:§84§;
      
      private var §4!E§:Boolean = false;
      
      private var §!!&§:Boolean = false;
      
      private var §?!n§:Shape = null;
      
      private var §0d§:Vector.<§=T§>;
      
      private var §1!M§:Boolean = false;
      
      private var §7!V§:String = "";
      
      private var §;",§:String = "";
      
      private var §<i§:§^!_§;
      
      private var §5!_§:Boolean = false;
      
      private var §4y§:Boolean;
      
      private var §^!5§:Boolean = false;
      
      private var §7K§:int = -1;
      
      private var §!b§:Vector.<§'X§>;
      
      private var §<^§:Vector.<§ %§>;
      
      private var §-"&§:§%L§;
      
      private var §#!$§:§^u§;
      
      private var §"!Y§:MovieClip;
      
      private var §1E§:Vector.<DisplayObject>;
      
      private var §'!B§:§ !,§;
      
      private var §""3§:§8!,§;
      
      private var §^h§:§;T§;
      
      private var §=z§:int = 20000;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§=0§ = new EventDispatcher();
         this.§0d§ = new Vector.<§=T§>();
         this.§!b§ = new Vector.<§'X§>();
         this.§1E§ = new Vector.<DisplayObject>();
         super(param1,param2);
         §?!`§.registerMethod("openEditor",this.§]!>§);
         §?!`§.registerMethod("snapshot",this.save);
         §]!e§.log("External methods registered.");
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §'Y§(this);
         §>B§.§^"-§(true);
         this.§5!V§ = new §84§(this);
         if(!this.§-"&§)
         {
            this.§-"&§ = new §%L§(this,this.§5!V§.§"j§);
         }
         new §8!8§(this.§#Y§());
         §^e§.§-_§.start();
         this.§+!f§(false);
         var _loc1_:Class = §5!+§.§,]§("HighlightArrow");
         this.§"!Y§ = new _loc1_();
         this.§"!Y§.visible = false;
         §'K§.movieClip.addChild(this.§"!Y§);
         this.§^h§ = new §;T§(§1!=§.§8X§.Views.View_Settings[0],super.§'K§.container);
         this.§^h§.visible = true;
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §>B§.§^"-§(true);
         §"!V§.resume();
         this.§5!V§.activate();
         if(this.§!!&§)
         {
            this.§!!&§ = false;
         }
         §"!V§.§`!G§(this.§5!V§.§>s§);
         this.§5!V§.§>s§.§5!n§(true);
         §'K§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§]p§);
         §'K§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§1J§);
         §!!k§.§4Z§().addEventListener(Event.CHANGE,this.§[A§);
         this.§[A§();
         (this.§#Y§().getItemByName("ButtonGravity") as §"h§).setComponentState(§"h§.§"!a§);
         (this.§#Y§().getItemByName("ButtonGravity") as §"h§).setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§"!V§.isPaused)
         {
            this.§5!V§.update(param1);
         }
         this.§[M§(this.§5!V§.§"j§.§^"'§.objects.getJoints());
         this.§#Y§().§,!!§(param1);
         §8!8§.§,l§.§]>§();
         this.§+!E§(param1);
         if(this.§<i§)
         {
            this.§<i§.update(param1);
         }
         if(this.§4!E§)
         {
            §4!l§.loadLevel(this.§5!V§.§"j§.§^"'§.§&!7§(),StateLevelEditorTestPlay.§]"2§);
            mNextState = §4!l§.§]"2§;
            this.§4!E§ = false;
            this.§!!&§ = true;
         }
         if(mNextState.length > 0)
         {
            § %§.§,l§.§@!@§();
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         if(§ %§.§,l§.§#G§())
         {
            this.§=z§ -= param1;
            if(this.§=z§ <= 0)
            {
               this.§=z§ = §<"-§;
               this.save();
            }
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      public function §'!!§() : Boolean
      {
         return this.§!!&§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&!$§(null);
         §'K§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§]p§);
      }
      
      private function §]p§(param1:MouseEvent) : void
      {
         if(this.§<i§)
         {
            this.§<i§.onEnterGUI();
         }
         this.§5!_§ = true;
      }
      
      private function §1J§(param1:MouseEvent) : void
      {
         if(this.§<i§)
         {
            this.§<i§.onLeaveGUI();
         }
         this.§5!_§ = false;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §"h§.COMPONENT_STATE_ACTIVE_DEFAULT : §"h§.§"!a§;
         (§'K§.getItemByName(param1) as §8!r§).setComponentState(_loc3_);
      }
      
      public function §'F§() : Boolean
      {
         return this.§4y§;
      }
      
      public function §+!f§(param1:Boolean) : void
      {
         if(this.§4y§ == param1)
         {
            return;
         }
         this.§4y§ = param1;
         this.dispatchEvent(new §#!C§(§#!C§.§5[§));
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         var _loc4_:§8!r§ = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.dispatchEvent(new Event("close_popups"));
               break;
            case "SELECT_THEME":
               this.§5!V§.§>s§.§`A§((param3 as §5"!§).getItemName());
               break;
            case "CONTINUE":
               this.§]!s§();
               break;
            case "PUBLISH":
               this.dispatchEvent(new §#!C§(§#!C§.PUBLISH));
               break;
            case "CANCEL":
               this.cancel();
               break;
            case "SAVE":
               this.save();
               break;
            case "HELP_BUTTON":
               this.§'!B§ = new § !,§(§'K§,§1!=§.§8X§.Views.PopupView_EditorHelp[0]);
               this.§'!B§.getItemByName("Container_Advanced").setVisibility(false);
               this.§'!B§.getItemByName("Container_Tips").setVisibility(true);
               this.§'!B§.open();
               break;
            case "HELP_ADVANCED":
               this.§^h§.§`n§();
               this.§'!B§ = new § !,§(§'K§,§1!=§.§8X§.Views.PopupView_EditorHelp[0]);
               this.§'!B§.getItemByName("Container_Advanced").setVisibility(true);
               this.§'!B§.getItemByName("Container_Tips").setVisibility(false);
               this.§'!B§.open();
               break;
            case "HELP_BACK":
               this.§'!B§.getItemByName("Container_Advanced").setVisibility(false);
               this.§'!B§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               this.§^!5§ = !this.§^!5§;
               AngryBirdsFP11.§'"0§.§[!>§();
               this.§^h§.§`n§();
               break;
            case "HELP_CLOSE":
               (_loc4_ = this.§^h§.getItemByName("Button_Help") as §8!r§).§[C§();
               this.§'!B§.close();
               break;
            case "ZOOM_DRAG":
               this.§5!V§.§>s§.setZoomRatio(1 - (param3 as §'!_§).§?![§());
               break;
            case "TOGGLE_PHYSICS":
               this.§6"'§();
            case "SHOW_QUEST_INFO":
               break;
            case "HIDE_QUEST_INFO":
               break;
            case "SHOP_BUTTON":
               this.§""3§ = new §8!,§(§1!=§.§8X§.Views.PopupView_Shop[0],this.§#Y§());
               this.§""3§.open();
               break;
            case "SHOP_CLOSE":
               if(this.§""3§)
               {
                  this.§""3§.close();
               }
               break;
            case "SETTINGS_BUTTON":
               if(this.§^h§)
               {
                  this.§^h§.§`n§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               break;
            default:
               if(!§"!V§.isPaused)
               {
                  this.dispatchEvent(new §#!C§(param2));
                  break;
               }
         }
      }
      
      private function §]!s§() : void
      {
         this.dispatchEvent(new §#!C§(§#!C§.CONTINUE));
      }
      
      private function cancel() : void
      {
         this.dispatchEvent(new §#!C§(§#!C§.CANCEL));
      }
      
      private function §6"'§() : void
      {
         this.dispatchEvent(new §#!C§(§#!C§.§7$§));
      }
      
      private function §[A§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§"!V§.isPaused)
         {
            return;
         }
         §"!V§.§ !o§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§#Y§().§else §())
            {
               this.§#Y§().§&D§();
            }
            else
            {
               this.§#Y§().§7!%§("Blocks");
               this.§#Y§().§]!2§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§6"'§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§]!s§();
         }
         else if(param1.keyCode == Keyboard.I && param1.ctrlKey)
         {
            (AngryBirdsFP11.§<U§ as §`!#§).§!g§();
         }
         this.dispatchEvent(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §"!V§.§ !o§.keyUp(param1);
         this.dispatchEvent(param1);
      }
      
      public function §]!>§(param1:Object) : void
      {
         §]!e§.log("onOpenEditorRequest! " + param1[0]);
         if(§7"$§.§3!O§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §4!l§.§["'§(StateLevelEditor.§]"2§);
            }
            else
            {
               §4!l§.§@!H§(StateLevelEditor.§]"2§,param1[0]);
            }
            §7"$§.§'"0§.§%-§(§4!l§.§]"2§);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         this.dispatchEvent(new §#!C§(§#!C§.SAVE));
      }
      
      public function §#-§(param1:int, param2:int) : void
      {
      }
      
      public function §0"1§(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§?!n§ != null)
            {
               this.§?!n§.graphics.clear();
            }
            return;
         }
         if(this.§?!n§ == null)
         {
            this.§?!n§ = new Shape();
            §'K§.addChildAt(this.§?!n§,0);
         }
         this.§?!n§.graphics.clear();
         this.§?!n§.graphics.beginFill(65280,0.1);
         this.§?!n§.graphics.lineStyle(1,43520,0.2);
         this.§?!n§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§?!n§.graphics.endFill();
      }
      
      public function §[M§(param1:Vector.<§3g§>) : void
      {
         this.§-"&§.update(param1);
      }
      
      public function §+!E§(param1:int) : void
      {
         var deltaTime:int = param1;
         this.§0d§ = this.§0d§.filter(function(param1:§=T§, param2:int, param3:Vector.<§=T§>):Boolean
         {
            return param1.update(deltaTime);
         });
      }
      
      public function §1O§(param1:int, param2:int) : void
      {
         var _loc3_:§=T§ = new §=T§(param1,param2);
         this.§0d§.push(_loc3_);
         §'K§.addChildAt(_loc3_,0);
      }
      
      public function §#Y§() : §'Y§
      {
         return §'K§ as §'Y§;
      }
      
      public function §&!$§(param1:§^!_§) : void
      {
         if(this.§<i§)
         {
            §'K§.removeChild(this.§<i§);
         }
         this.§<i§ = param1;
         if(this.§<i§)
         {
            §'K§.addChildAt(this.§<i§,0);
            if(this.§5!_§)
            {
               this.§<i§.onEnterGUI();
            }
         }
      }
      
      public function §4l§() : void
      {
         this.§4!E§ = true;
      }
      
      public function §00§(param1:Boolean) : void
      {
         §?!`§.doJsCall("onLevelDataChanged",param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§=0§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§=0§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=0§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§=0§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=0§.willTrigger(param1);
      }
   }
}
