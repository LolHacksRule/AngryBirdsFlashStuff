package § "@§
{
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'!A§.*;
   import §'i§.§'!;§;
   import §'i§.§,!1§;
   import §'p§.*;
   import §+!v§.§-!H§;
   import §+h§.§^!]§;
   import §-!8§.§2"4§;
   import §-!n§.§5!U§;
   import §0![§.§^! §;
   import §1"2§.§`7§;
   import §2H§.§4!U§;
   import §2H§.§8n§;
   import §3"5§.§ !,§;
   import §5"-§.§5y§;
   import §6" §.§<8§;
   import §62§.§0!t§;
   import §6p§.§?%§;
   import §=!#§.§2"-§;
   import §=!M§.§9!P§;
   import §="6§.§^"8§;
   import §^!y§.§'"#§;
   import §^[§.§ !1§;
   import §^[§.§!!c§;
   import §^[§.§!$§;
   import §^[§.§'!K§;
   import §^[§.§9!Z§;
   import §^[§.§>!B§;
   import com.rovio.assets.§>!]§;
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
   
   public class StateLevelEditor extends §5y§ implements IEventDispatcher
   {
      
      public static const §^t§:String = "BuildChannel";
      
      public static const §#!z§:String = "MainMenuChannel";
      
      public static const §'=§:String = "StateLevelEditor";
      
      private static const §<?§:int = 20000;
       
      
      private const §3!l§:Boolean = false;
      
      private var §&!T§:EventDispatcher;
      
      private var §6!^§:§'!;§;
      
      private var §+!-§:Boolean = false;
      
      private var §9f§:Shape = null;
      
      private var §5!L§:Vector.<§ !1§>;
      
      private var §9!3§:Boolean = false;
      
      private var §#!§:String = "";
      
      private var §1u§:String = "";
      
      private var §6!§:§>!B§;
      
      private var §[!!§:Boolean = false;
      
      private var §&!$§:Boolean;
      
      private var § !Z§:Boolean = false;
      
      private var §@!A§:int = -1;
      
      private var §2!H§:Vector.<§-!2§>;
      
      private var §>!Q§:Vector.<§,!1§>;
      
      private var §?#§:§!!c§;
      
      private var §9!;§:§4!U§;
      
      private var §,!3§:MovieClip;
      
      private var §8!C§:Vector.<DisplayObject>;
      
      private var §^-§:§8n§;
      
      private var §3a§:§2"4§;
      
      private var §3!i§:§-!H§;
      
      private var §[" §:int = 20000;
      
      private var §@U§:Vector.<Function>;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§&!T§ = new EventDispatcher();
         this.§5!L§ = new Vector.<§ !1§>();
         this.§2!H§ = new Vector.<§-!2§>();
         this.§8!C§ = new Vector.<DisplayObject>();
         this.§@U§ = new Vector.<Function>();
         super(param1,param2);
         §4m§.registerMethod("openEditor",this.§^+§);
         §4m§.registerMethod("snapshot",this.save);
         §9!P§.log("External methods registered.");
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'!K§(this);
         §2"-§.§@&§(true);
         this.§6!^§ = new §'!;§(this);
         if(!this.§?#§)
         {
            this.§?#§ = new §!!c§(this,this.§6!^§.§8#§);
         }
         new §9!Z§(this.§9B§());
         §?%§.§%b§.start();
         this.§!!L§(false);
         var _loc1_:Class = §>!]§.§1!8§("HighlightArrow");
         this.§,!3§ = new _loc1_();
         this.§,!3§.visible = false;
         §?E§.movieClip.addChild(this.§,!3§);
         this.§3!i§ = new §-!H§(§`7§.§>"?§.Views.View_Settings[0],super.§?E§.container);
         this.§3!i§.visible = true;
         §5!U§.§2R§(§^t§,3,1);
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §2"-§.§@&§(true);
         §=!X§.resume();
         this.§6!^§.activate();
         §=!X§.§]T§(this.§6!^§.§?!W§);
         this.§6!^§.§?!W§.§;"3§(true);
         §?E§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§&k§);
         §?E§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§`F§);
         §<8§.§5!i§().addEventListener(Event.CHANGE,this.§8[§);
         this.§8[§();
         (this.§9B§().getItemByName("ButtonGravity") as §9!!§).setComponentState(§9!!§.§,!0§);
         (this.§9B§().getItemByName("ButtonGravity") as §9!!§).setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Function = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§=!X§.isPaused)
         {
            this.§6!^§.update(param1);
            for each(_loc3_ in this.§@U§)
            {
               _loc3_(param1);
            }
         }
         this.§[§(this.§6!^§.§8#§.§4+§.objects.getJoints());
         this.§9B§().§=z§(param1);
         §9!Z§.§2=§.§,M§();
         this.§ B§(param1);
         if(this.§6!§)
         {
            this.§6!§.update(param1);
         }
         if(this.§+!-§)
         {
            this.dispatchEvent(new §0!t§(§0!t§.PLAY));
            §%!3§.loadLevel(this.§6!^§.§8#§.§'";§,StateLevelEditorTestPlay.§'=§);
            mNextState = §%!3§.§'=§;
            this.§+!-§ = false;
         }
         if(mNextState.length > 0)
         {
            if(mNextState == §^! §.§'=§)
            {
               this.§6!^§.§4!4§.§2x§();
            }
            §,!1§.§2=§.§]!2§();
            return §5y§.STATE_STATUS_COMPLETED;
         }
         if(§,!1§.§2=§.§-!Q§())
         {
            this.§[" § -= param1;
            if(this.§[" § <= 0)
            {
               this.§[" § = §<?§;
               this.save();
            }
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §5!U§.§9&§();
         §^"8§.§7K§ = this.§6!^§.§8#§.§'";§;
         this.§^!+§(null);
         §?E§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§&k§);
      }
      
      private function §&k§(param1:MouseEvent) : void
      {
         if(this.§6!§)
         {
            this.§6!§.onEnterGUI();
         }
         this.§[!!§ = true;
      }
      
      private function §`F§(param1:MouseEvent) : void
      {
         if(this.§6!§)
         {
            this.§6!§.onLeaveGUI();
         }
         this.§[!!§ = false;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT : §9!!§.§,!0§;
         (§?E§.getItemByName(param1) as §="#§).setComponentState(_loc3_);
      }
      
      public function §-W§() : Boolean
      {
         return this.§&!$§;
      }
      
      public function §!!L§(param1:Boolean) : void
      {
         if(this.§&!$§ == param1)
         {
            return;
         }
         this.§&!$§ = param1;
         this.dispatchEvent(new §0!t§(§0!t§.§<!I§));
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:§="#§ = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.dispatchEvent(new Event("close_popups"));
               break;
            case "SELECT_THEME":
               this.§6!^§.§?!W§.§=!§((param3 as §!$§).getItemName());
               break;
            case "CONTINUE":
               §5!U§.playSound("Sound_Button_Click");
               this.§&Y§();
               break;
            case "PUBLISH":
               §5!U§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §0!t§(§0!t§.PUBLISH));
               break;
            case "CANCEL":
               §5!U§.playSound("Sound_Button_Click");
               this.cancel();
               break;
            case "PLAY":
               §5!U§.playSound("Sound_Button_Click");
               this.cancel();
               §4m§.doJsCall("play");
               break;
            case "SAVE":
               this.save();
               break;
            case "HELP_BUTTON":
               §5!U§.playSound("Sound_Button_Click");
               if(!this.§^-§)
               {
                  this.§^-§ = new §8n§(§?E§,§`7§.§>"?§.Views.PopupView_EditorHelp[0]);
               }
               this.§^-§.getItemByName("Container_Advanced").setVisibility(false);
               this.§^-§.getItemByName("Container_Tips").setVisibility(true);
               this.§^-§.open();
               break;
            case "HELP_ADVANCED":
               §5!U§.playSound("Sound_Button_Click");
               §^!]§.§<!o§();
               break;
            case "HELP_BACK":
               §5!U§.playSound("Sound_Button_Click");
               this.§^-§.getItemByName("Container_Advanced").setVisibility(false);
               this.§^-§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               §5!U§.playSound("Sound_Button_Click");
               this.§ !Z§ = !this.§ !Z§;
               AngryBirdsFP11.§%d§.§9+§();
               this.§3!i§.§#!s§();
               break;
            case "HELP_CLOSE":
               (_loc4_ = this.§3!i§.getItemByName("Button_Help") as §="#§).§ a§();
               this.§^-§.close();
               this.§^-§ = null;
               break;
            case "ZOOM_DRAG":
               this.§6!^§.§?!W§.setZoomRatio(1 - (param3 as §`!w§).§#!l§());
               break;
            case "TOGGLE_PHYSICS":
               §5!U§.playSound("Sound_Button_Click");
               this.§`n§();
            case "SHOW_QUEST_INFO":
               break;
            case "HIDE_QUEST_INFO":
               break;
            case "SHOP_BUTTON":
               §5!U§.playSound("Sound_Button_Click");
               this.§3a§ = new §2"4§(§`7§.§>"?§.Views.PopupView_Shop[0],this.§9B§());
               this.§3a§.open();
               break;
            case "SHOP_CLOSE":
               §5!U§.playSound("Sound_Button_Back");
               if(this.§3a§)
               {
                  this.§3a§.close();
               }
               break;
            case "SETTINGS_BUTTON":
               §5!U§.playSound("Sound_Button_Click");
               if(this.§3!i§)
               {
                  this.§3!i§.§#!s§();
               }
               break;
            case "TOGGLE_SOUNDS":
               §5!U§.playSound("Sound_Button_Click");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               break;
            case "RESOURCE_ADD_BLOCKS":
               §5!U§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §0!t§(§0!t§.§+8§));
               break;
            case "RESOURCE_ADD_BOLTS":
               §5!U§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §0!t§(§0!t§.§>!n§));
               break;
            case "RESOURCE_ADD_COINS":
               §5!U§.playSound("Sound_Button_Click");
               this.dispatchEvent(new §0!t§(§0!t§.§%"+§));
               break;
            default:
               if(!§=!X§.isPaused)
               {
                  this.dispatchEvent(new §0!t§(param2));
                  break;
               }
         }
      }
      
      private function §&Y§() : void
      {
         this.dispatchEvent(new §0!t§(§0!t§.CONTINUE));
      }
      
      private function cancel() : void
      {
         this.dispatchEvent(new §0!t§(§0!t§.CANCEL));
      }
      
      private function §`n§() : void
      {
         this.dispatchEvent(new §0!t§(§0!t§.§!">§));
      }
      
      private function §8[§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§=!X§.isPaused)
         {
            return;
         }
         §=!X§.§#H§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§9B§().§]!f§())
            {
               this.§9B§().§`B§();
            }
            else
            {
               this.§9B§().§%w§("Blocks");
               this.§9B§().§6!p§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§`n§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§&Y§();
         }
         else if(param1.keyCode == Keyboard.I && param1.ctrlKey)
         {
            (AngryBirdsFP11.§>" § as §'"#§).§[!y§();
         }
         else if(param1.keyCode == Keyboard.X && param1.ctrlKey)
         {
            mNextState = §^! §.§'=§;
         }
         this.dispatchEvent(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §=!X§.§#H§.keyUp(param1);
         this.dispatchEvent(param1);
      }
      
      public function §^+§(param1:Object) : void
      {
         §9!P§.log("onOpenEditorRequest! " + param1[0]);
         if(§>"§.§,!v§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §%!3§.§>o§(StateLevelEditor.§'=§);
            }
            else
            {
               §%!3§.§"!X§(StateLevelEditor.§'=§,param1[0]);
            }
            §>"§.§%d§.§1!b§(§%!3§.§'=§);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         if(§?C§)
         {
            this.dispatchEvent(new §0!t§(§0!t§.SAVE));
         }
      }
      
      public function §9!<§(param1:int, param2:int) : void
      {
      }
      
      public function §8o§(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§9f§ != null)
            {
               this.§9f§.graphics.clear();
            }
            return;
         }
         if(this.§9f§ == null)
         {
            this.§9f§ = new Shape();
            §?E§.addChildAt(this.§9f§,0);
         }
         this.§9f§.graphics.clear();
         this.§9f§.graphics.beginFill(65280,0.1);
         this.§9f§.graphics.lineStyle(1,43520,0.2);
         this.§9f§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§9f§.graphics.endFill();
      }
      
      public function §[§(param1:Vector.<§ !,§>) : void
      {
         this.§?#§.update(param1);
      }
      
      public function § B§(param1:int) : void
      {
         var deltaTime:int = param1;
         this.§5!L§ = this.§5!L§.filter(function(param1:§ !1§, param2:int, param3:Vector.<§ !1§>):Boolean
         {
            return param1.update(deltaTime);
         });
      }
      
      public function § !i§(param1:int, param2:int) : void
      {
         var _loc3_:§ !1§ = new § !1§(param1,param2);
         this.§5!L§.push(_loc3_);
         §?E§.addChildAt(_loc3_,0);
      }
      
      public function §9B§() : §'!K§
      {
         return §?E§ as §'!K§;
      }
      
      public function §^!+§(param1:§>!B§) : void
      {
         if(this.§6!§)
         {
            §?E§.removeChild(this.§6!§);
         }
         this.§6!§ = param1;
         if(this.§6!§)
         {
            §?E§.addChildAt(this.§6!§,0);
            if(this.§[!!§)
            {
               this.§6!§.onEnterGUI();
            }
         }
      }
      
      public function get §7"+§() : Boolean
      {
         return this.§[!!§;
      }
      
      public function §@§(param1:Function) : void
      {
         this.§@U§.push(param1);
      }
      
      public function §^"!§() : void
      {
         this.§+!-§ = true;
      }
      
      public function § u§(param1:Boolean) : void
      {
         §4m§.doJsCall("onLevelDataChanged",param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§&!T§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§&!T§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§&!T§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§&!T§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§&!T§.willTrigger(param1);
      }
   }
}
