package §;b§
{
   import §"_§.§!"8§;
   import §#";§.§0"#§;
   import §%!e§.§2",§;
   import §%!j§.§%K§;
   import §&!<§.§]!M§;
   import §,!g§.§>7§;
   import §,P§.§'_§;
   import §-"'§.§!w§;
   import §-"'§.§%"&§;
   import §05§.§?s§;
   import §1" §.§!!2§;
   import §1" §.§#!j§;
   import §5u§.§-"#§;
   import §6!A§.§4!%§;
   import §6]§.§,"0§;
   import §7!@§.§+`§;
   import §;<§.§'B§;
   import §=!7§.*;
   import §?!'§.§]!]§;
   import §@y§.*;
   import §[!P§.§@R§;
   import §^!k§.§"!,§;
   import §^!k§.§&!T§;
   import §^!k§.§5!r§;
   import §^!k§.§[!K§;
   import §^!k§.§return§;
   import §^"?§.§9!_§;
   import §^U§.§&y§;
   import com.rovio.assets.§69§;
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
   
   public class StateLevelEditor extends §'B§ implements IEventDispatcher
   {
      
      public static const §&!d§:String = "BuildChannel";
      
      public static const §%!Q§:String = "StateLevelEditor";
      
      private static const §"!b§:int = 20000;
       
      
      private const §'4§:Boolean = false;
      
      private var §<+§:EventDispatcher;
      
      private var §9J§:§#!j§;
      
      private var §`!4§:Boolean = false;
      
      private var §'!D§:Shape = null;
      
      private var §2"-§:Vector.<§"!,§>;
      
      private var §&`§:Boolean = false;
      
      private var §?]§:String = "";
      
      private var §4"=§:String = "";
      
      private var §'""§:§5!r§;
      
      private var §'<§:Boolean = false;
      
      private var §8g§:Boolean;
      
      private var §"§:Boolean = false;
      
      private var §4!w§:int = -1;
      
      private var §=!5§:Vector.<§0"4§>;
      
      private var §9l§:Vector.<§!!2§>;
      
      private var §^!X§:§[!K§;
      
      private var §^!S§:§%"&§;
      
      private var §#!,§:MovieClip;
      
      private var §?W§:Vector.<DisplayObject>;
      
      private var §#!q§:§!w§;
      
      private var § ;§:§9!_§;
      
      private var §"-§:§2",§;
      
      private var §+!5§:int = 20000;
      
      private var §'A§:Vector.<Function>;
      
      private var §,#§:Boolean = false;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§<+§ = new EventDispatcher();
         this.§2"-§ = new Vector.<§"!,§>();
         this.§=!5§ = new Vector.<§0"4§>();
         this.§?W§ = new Vector.<DisplayObject>();
         this.§'A§ = new Vector.<Function>();
         super(param1,param2);
         §?s§.registerMethod("openEditor",this.§1!p§);
         §?s§.registerMethod("snapshot",this.save);
         §,"0§.log("External methods registered.");
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §return§(this);
         §>7§.§];§(true);
         this.§9J§ = new §#!j§(this);
         if(!this.§^!X§)
         {
            this.§^!X§ = new §[!K§(this,this.§9J§.§0"!§);
         }
         new §&!T§(this.§"p§());
         §%K§.§`9§.start();
         this.§17§(false);
         var _loc1_:Class = §69§.§ 0§("HighlightArrow");
         this.§#!,§ = new _loc1_();
         this.§#!,§.visible = false;
         §`!v§.movieClip.addChild(this.§#!,§);
         this.§"-§ = new §2",§(§]!M§.§"!V§.Views.View_Settings[0],super.§`!v§.container);
         this.§"-§.visible = true;
         §0"#§.§4!m§(§&!d§,3,1);
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §0"#§.§<"0§(StateLevelEditor.§&!d§);
         §0"#§.§9"2§("BadPiggies_Building",§&!d§,1000);
         §>7§.§];§(true);
         §'_§.resume();
         this.§9J§.activate();
         §'_§.§^`§(this.§9J§.§"L§);
         this.§9J§.§"L§.§;!;§(true);
         §`!v§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§@"8§);
         §`!v§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
         §4!%§.§`-§().addEventListener(Event.CHANGE,this.§^!3§);
         this.§^!3§();
         (this.§"p§().getItemByName("ButtonGravity") as §>!D§).setComponentState(§>!D§.§;!M§);
         (this.§"p§().getItemByName("ButtonGravity") as §>!D§).setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Function = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§'_§.isPaused)
         {
            this.§9J§.update(param1);
            for each(_loc3_ in this.§'A§)
            {
               _loc3_(param1);
            }
         }
         this.§4"4§(this.§9J§.§0"!§.§0z§.objects.getJoints());
         this.§"p§().§9!z§(param1);
         §&!T§.§[E§.§=3§();
         this.§8!Q§(param1);
         if(this.§'""§)
         {
            this.§'""§.update(param1);
         }
         if(this.§`!4§)
         {
            this.dispatchEvent(new §!"8§(§!"8§.PLAY));
            §@"0§.loadLevel(this.§9J§.§0"!§.§,w§,StateLevelEditorTestPlay.§%!Q§);
            mNextState = §@"0§.§%!Q§;
            this.§`!4§ = false;
         }
         if(mNextState.length > 0)
         {
            if(mNextState == §&y§.§%!Q§)
            {
               this.§9J§.§9L§.§=D§();
            }
            §!!2§.§[E§.§%r§();
            return §'B§.STATE_STATUS_COMPLETED;
         }
         if(§!!2§.§[E§.§?!p§())
         {
            this.§+!5§ -= param1;
            if(this.§+!5§ <= 0)
            {
               this.§+!5§ = §"!b§;
               this.save();
            }
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.dispatchEvent(new §!"8§(§!"8§.SAVE));
         §0"#§.§4"#§();
         §-"#§.§3"=§ = this.§9J§.§0"!§.§,w§;
         this.§9i§(null);
         §`!v§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§@"8§);
      }
      
      private function §@"8§(param1:MouseEvent) : void
      {
         if(this.§'""§)
         {
            this.§'""§.onEnterGUI();
         }
         this.§'<§ = true;
      }
      
      private function §+!h§(param1:MouseEvent) : void
      {
         if(this.§'""§)
         {
            this.§'""§.onLeaveGUI();
         }
         this.§'<§ = false;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT : §>!D§.§;!M§;
         (§`!v§.getItemByName(param1) as §9"8§).setComponentState(_loc3_);
      }
      
      public function §5!<§() : Boolean
      {
         return this.§8g§;
      }
      
      public function §17§(param1:Boolean) : void
      {
         if(this.§8g§ == param1)
         {
            return;
         }
         this.§8g§ = param1;
         this.dispatchEvent(new §!"8§(§!"8§.§'!K§));
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:§9"8§ = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.dispatchEvent(new Event("close_popups"));
               break;
            case "CONTINUE":
               §0"#§.§9"2§("Sound_Button_Click");
               this.§&!&§();
               §0"#§.§<"0§(StateLevelEditor.§&!d§);
               §0"#§.§9"2§("BadPiggies_StabilityTest",StateLevelEditor.§&!d§,1000);
               break;
            case "PUBLISH":
               §0"#§.§9"2§("Sound_Button_Click");
               this.dispatchEvent(new §!"8§(§!"8§.PUBLISH));
               break;
            case "CANCEL":
               §0"#§.§9"2§("Sound_Button_Click");
               this.cancel();
               §0"#§.§<"0§(StateLevelEditor.§&!d§);
               §0"#§.§9"2§("BadPiggies_Building",StateLevelEditor.§&!d§,1000);
               break;
            case "PLAY":
               §0"#§.§9"2§("Sound_Button_Click");
               this.cancel();
               §?s§.doJsCall("play");
               break;
            case "SAVE":
               this.save();
               break;
            case "HELP_BUTTON":
               §0"#§.§9"2§("Sound_Button_Click");
               if(!this.§#!q§)
               {
                  this.§#!q§ = new §!w§(§`!v§,§]!M§.§"!V§.Views.PopupView_EditorHelp[0]);
               }
               this.§#!q§.getItemByName("Container_Advanced").setVisibility(false);
               this.§#!q§.getItemByName("Container_Tips").setVisibility(true);
               this.§#!q§.open();
               break;
            case "HELP_ADVANCED":
               §0"#§.§9"2§("Sound_Button_Click");
               §]!]§.§&§();
               break;
            case "HELP_BACK":
               §0"#§.§9"2§("Sound_Button_Click");
               this.§#!q§.getItemByName("Container_Advanced").setVisibility(false);
               this.§#!q§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               §0"#§.§9"2§("Sound_Button_Click");
               this.§"§ = !this.§"§;
               AngryBirdsFP11.§@"7§.§>!5§();
               this.§"-§.§0"3§();
               break;
            case "HELP_CLOSE":
               (_loc4_ = this.§"-§.getItemByName("Button_Help") as §9"8§).§@o§();
               this.§#!q§.close();
               this.§#!q§ = null;
               break;
            case "ZOOM_DRAG":
               this.§9J§.§"L§.setZoomRatio(1 - (param3 as §8q§).§&!#§());
               break;
            case "TOGGLE_PHYSICS":
               §0"#§.§9"2§("Sound_Button_Click");
               §0"#§.§<"0§(StateLevelEditor.§&!d§);
               if(!this.§9J§.§%8§.§'[§())
               {
                  §0"#§.§9"2§("BadPiggies_StabilityTest",StateLevelEditor.§&!d§,1000);
               }
               else
               {
                  §0"#§.§9"2§("BadPiggies_Building",StateLevelEditor.§&!d§,1000);
               }
               this.§7!<§();
            case "SHOW_QUEST_INFO":
               break;
            case "HIDE_QUEST_INFO":
               break;
            case "SHOP_BUTTON":
               §0"#§.§9"2§("Sound_Button_Click");
               this.§ ;§ = new §9!_§(§]!M§.§"!V§.Views.PopupView_Shop[0],this.§"p§());
               this.§ ;§.open();
               break;
            case "SHOP_CLOSE":
               §0"#§.§9"2§("Sound_Button_Back");
               if(this.§ ;§)
               {
                  this.§ ;§.close();
               }
               break;
            case "SETTINGS_BUTTON":
               §0"#§.§9"2§("Sound_Button_Click");
               if(this.§"-§)
               {
                  this.§"-§.§0"3§();
               }
               break;
            case "TOGGLE_SOUNDS":
               §0"#§.§9"2§("Sound_Button_Click");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               break;
            case "RESOURCE_ADD_BLOCKS":
               §0"#§.§9"2§("Sound_Button_Click");
               this.dispatchEvent(new §!"8§(§!"8§.§#!e§));
               break;
            case "RESOURCE_ADD_BOLTS":
               §0"#§.§9"2§("Sound_Button_Click");
               this.dispatchEvent(new §!"8§(§!"8§.§5!c§));
               break;
            case "RESOURCE_ADD_COINS":
               §0"#§.§9"2§("Sound_Button_Click");
               this.dispatchEvent(new §!"8§(§!"8§.§@m§));
               break;
            default:
               if(!§'_§.isPaused)
               {
                  this.dispatchEvent(new §!"8§(param2));
                  break;
               }
         }
      }
      
      private function §&!&§() : void
      {
         this.dispatchEvent(new §!"8§(§!"8§.CONTINUE));
      }
      
      private function cancel() : void
      {
         this.dispatchEvent(new §!"8§(§!"8§.CANCEL));
      }
      
      private function §7!<§() : void
      {
         this.dispatchEvent(new §!"8§(§!"8§.§;`§));
      }
      
      private function §^!3§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§'_§.isPaused)
         {
            return;
         }
         §'_§.§=R§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§"p§().§0"9§())
            {
               this.§"p§().§?x§();
            }
            else
            {
               this.§"p§().§ !c§("Blocks");
               this.§"p§().§+!R§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§7!<§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§&!&§();
         }
         else if(param1.keyCode == Keyboard.I && param1.ctrlKey)
         {
            (AngryBirdsFP11.§>!7§ as §+`§).§break§();
         }
         else if(param1.keyCode == Keyboard.X && param1.ctrlKey)
         {
            mNextState = §&y§.§%!Q§;
         }
         this.dispatchEvent(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §'_§.§=R§.keyUp(param1);
         this.dispatchEvent(param1);
      }
      
      public function §1!p§(param1:Object) : void
      {
         §,"0§.log("onOpenEditorRequest! " + param1[0]);
         if(§[!^§.§["!§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §@"0§.§[y§(StateLevelEditor.§%!Q§);
            }
            else
            {
               §@"0§.§^!'§(StateLevelEditor.§%!Q§,param1[0]);
            }
            §[!^§.§@"7§.§<t§(§@"0§.§%!Q§);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         if(§3!+§)
         {
            this.dispatchEvent(new §!"8§(§!"8§.SAVE));
         }
      }
      
      public function § !J§(param1:int, param2:int) : void
      {
      }
      
      public function §[!9§(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§'!D§ != null)
            {
               this.§'!D§.graphics.clear();
            }
            return;
         }
         if(this.§'!D§ == null)
         {
            this.§'!D§ = new Shape();
            §`!v§.addChildAt(this.§'!D§,0);
         }
         this.§'!D§.graphics.clear();
         this.§'!D§.graphics.beginFill(65280,0.1);
         this.§'!D§.graphics.lineStyle(1,43520,0.2);
         this.§'!D§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§'!D§.graphics.endFill();
      }
      
      public function §4"4§(param1:Vector.<§@R§>) : void
      {
         this.§^!X§.update(param1);
      }
      
      public function §8!Q§(param1:int) : void
      {
         var deltaTime:int = param1;
         this.§2"-§ = this.§2"-§.filter(function(param1:§"!,§, param2:int, param3:Vector.<§"!,§>):Boolean
         {
            return param1.update(deltaTime);
         });
      }
      
      public function §5V§(param1:int, param2:int) : void
      {
         var _loc3_:§"!,§ = new §"!,§(param1,param2);
         this.§2"-§.push(_loc3_);
         §`!v§.addChildAt(_loc3_,0);
      }
      
      public function §"p§() : §return§
      {
         return §`!v§ as §return§;
      }
      
      public function §9i§(param1:§5!r§) : void
      {
         if(this.§'""§)
         {
            §`!v§.removeChild(this.§'""§);
         }
         this.§'""§ = param1;
         if(this.§'""§)
         {
            §`!v§.addChildAt(this.§'""§,0);
            if(this.§'<§)
            {
               this.§'""§.onEnterGUI();
            }
         }
      }
      
      public function get §?F§() : Boolean
      {
         return this.§'<§;
      }
      
      public function §;!"§(param1:Function) : void
      {
         this.§'A§.push(param1);
      }
      
      public function §#!t§() : void
      {
         this.§`!4§ = true;
      }
      
      public function §<!e§(param1:Boolean) : void
      {
         §?s§.doJsCall("onLevelDataChanged",param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§<+§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§<+§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§<+§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§<+§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§<+§.willTrigger(param1);
      }
   }
}
