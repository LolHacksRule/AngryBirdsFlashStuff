package § J§
{
   import §"!2§.§>9§;
   import §'x§.§?z§;
   import §+!d§.*;
   import §,Q§.§="2§;
   import §0P§.§!!l§;
   import §1"3§.§6!W§;
   import §1g§.§!!&§;
   import §1g§.§=!c§;
   import §2!5§.§0!X§;
   import §2!5§.§=,§;
   import §2!O§.§,w§;
   import §9!l§.§'!k§;
   import §9!l§.§0!>§;
   import §9!l§.§5!;§;
   import §9!l§.§9!g§;
   import §9!l§.§@O§;
   import §9!l§.§`!d§;
   import §;!§.§8V§;
   import §;!A§.*;
   import §;"$§.§8!O§;
   import §;X§.§ do§;
   import §<!p§.§]"7§;
   import §[b§.§;!]§;
   import §]!!§.§"X§;
   import §`m§.§]!w§;
   import com.rovio.assets.§]!S§;
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
   
   public class StateLevelEditor extends §,w§ implements IEventDispatcher
   {
      
      public static const §^z§:String = "StateLevelEditor";
      
      private static const §>;§:int = 20000;
       
      
      private const §^7§:Boolean = false;
      
      private var §9o§:EventDispatcher;
      
      private var §!^§:§0!X§;
      
      private var §1X§:Boolean = false;
      
      private var §!1§:Boolean = false;
      
      private var §=!$§:Shape = null;
      
      private var §%Y§:Vector.<§0!>§>;
      
      private var §&!+§:Boolean = false;
      
      private var §`!2§:String = "";
      
      private var §2!T§:String = "";
      
      private var §9!M§:§'!k§;
      
      private var §6!0§:Boolean = false;
      
      private var §7!f§:Boolean;
      
      private var §7k§:Boolean = false;
      
      private var §%!6§:int = -1;
      
      private var §+W§:Vector.<§8!=§>;
      
      private var §]!-§:Vector.<§=,§>;
      
      private var §=!P§:§9!g§;
      
      private var §>6§:§!!&§;
      
      private var §6D§:MovieClip;
      
      private var §?"!§:Vector.<DisplayObject>;
      
      private var §@P§:§=!c§;
      
      private var §@!#§:§]!w§;
      
      private var §;5§:§;!]§;
      
      private var §'i§:int = 20000;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§9o§ = new EventDispatcher();
         this.§%Y§ = new Vector.<§0!>§>();
         this.§+W§ = new Vector.<§8!=§>();
         this.§?"!§ = new Vector.<DisplayObject>();
         super(param1,param2);
         §="2§.registerMethod("openEditor",this.§;!O§);
         §="2§.registerMethod("snapshot",this.save);
         § do§.log("External methods registered.");
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`!d§(this);
         §6!W§.§?!G§(true);
         this.§!^§ = new §0!X§(this);
         if(!this.§=!P§)
         {
            this.§=!P§ = new §9!g§(this,this.§!^§.§@s§);
         }
         new §5!;§(this.§<8§());
         §!!l§.§`7§.start();
         this.§8"9§(false);
         var _loc1_:Class = §]!S§.§?! §("HighlightArrow");
         this.§6D§ = new _loc1_();
         this.§6D§.visible = false;
         §%""§.movieClip.addChild(this.§6D§);
         this.§;5§ = new §;!]§(§8!O§.§'!J§.Views.View_Settings[0],super.§%""§.container);
         this.§;5§.visible = true;
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §6!W§.§?!G§(true);
         §?z§.resume();
         this.§!^§.activate();
         if(this.§!1§)
         {
            this.§!1§ = false;
         }
         §?z§.§5!R§(this.§!^§.§&8§);
         this.§!^§.§&8§.§%5§(true);
         §%""§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§ 1§);
         §%""§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§ !G§);
         §]"7§.§7U§().addEventListener(Event.CHANGE,this.§-!i§);
         this.§-!i§();
         (this.§<8§().getItemByName("ButtonGravity") as §"r§).setComponentState(§"r§.§5!D§);
         (this.§<8§().getItemByName("ButtonGravity") as §"r§).setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§?z§.isPaused)
         {
            this.§!^§.update(param1);
         }
         this.§%!i§(this.§!^§.§@s§.§'4§.objects.getJoints());
         this.§<8§().§;G§(param1);
         §5!;§.§if §.§ `§();
         this.§&7§(param1);
         if(this.§9!M§)
         {
            this.§9!M§.update(param1);
         }
         if(this.§1X§)
         {
            §6"6§.loadLevel(this.§!^§.§@s§.§'4§.§"!T§(),StateLevelEditorTestPlay.§^z§);
            mNextState = §6"6§.§^z§;
            this.§1X§ = false;
            this.§!1§ = true;
         }
         if(mNextState.length > 0)
         {
            §=,§.§if §.§8!t§();
            return §,w§.STATE_STATUS_COMPLETED;
         }
         if(§=,§.§if §.§9q§())
         {
            this.§'i§ -= param1;
            if(this.§'i§ <= 0)
            {
               this.§'i§ = §>;§;
               this.save();
            }
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      public function §70§() : Boolean
      {
         return this.§!1§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!n§(null);
         §%""§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§ 1§);
      }
      
      private function § 1§(param1:MouseEvent) : void
      {
         if(this.§9!M§)
         {
            this.§9!M§.onEnterGUI();
         }
         this.§6!0§ = true;
      }
      
      private function § !G§(param1:MouseEvent) : void
      {
         if(this.§9!M§)
         {
            this.§9!M§.onLeaveGUI();
         }
         this.§6!0§ = false;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §"r§.COMPONENT_STATE_ACTIVE_DEFAULT : §"r§.§5!D§;
         (§%""§.getItemByName(param1) as §2v§).setComponentState(_loc3_);
      }
      
      public function §!h§() : Boolean
      {
         return this.§7!f§;
      }
      
      public function §8"9§(param1:Boolean) : void
      {
         if(this.§7!f§ == param1)
         {
            return;
         }
         this.§7!f§ = param1;
         this.dispatchEvent(new §8V§(§8V§.§8p§));
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         var _loc4_:§2v§ = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.dispatchEvent(new Event("close_popups"));
               break;
            case "SELECT_THEME":
               this.§!^§.§&8§.§!!`§((param3 as §@O§).getItemName());
               break;
            case "CONTINUE":
               this.§,3§();
               break;
            case "PUBLISH":
               this.dispatchEvent(new §8V§(§8V§.PUBLISH));
               break;
            case "CANCEL":
               this.cancel();
               break;
            case "SAVE":
               this.save();
               break;
            case "HELP_BUTTON":
               if(!this.§@P§)
               {
                  this.§@P§ = new §=!c§(§%""§,§8!O§.§'!J§.Views.PopupView_EditorHelp[0]);
               }
               this.§@P§.getItemByName("Container_Advanced").setVisibility(false);
               this.§@P§.getItemByName("Container_Tips").setVisibility(true);
               this.§@P§.open();
               break;
            case "HELP_ADVANCED":
               if(!this.§@P§)
               {
                  this.§@P§ = new §=!c§(§%""§,§8!O§.§'!J§.Views.PopupView_EditorHelp[0]);
               }
               if(!this.§@P§.isOpen)
               {
                  this.§;5§.§56§();
               }
               this.§@P§.getItemByName("Container_Advanced").setVisibility(true);
               this.§@P§.getItemByName("Container_Tips").setVisibility(false);
               this.§@P§.open();
               break;
            case "HELP_BACK":
               this.§@P§.getItemByName("Container_Advanced").setVisibility(false);
               this.§@P§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               this.§7k§ = !this.§7k§;
               AngryBirdsFP11.§@!N§.§2!1§();
               this.§;5§.§56§();
               break;
            case "HELP_CLOSE":
               (_loc4_ = this.§;5§.getItemByName("Button_Help") as §2v§).§<!i§();
               this.§@P§.close();
               this.§@P§ = null;
               break;
            case "ZOOM_DRAG":
               this.§!^§.§&8§.setZoomRatio(1 - (param3 as §+Y§).§2"-§());
               break;
            case "TOGGLE_PHYSICS":
               this.§2Y§();
            case "SHOW_QUEST_INFO":
               break;
            case "HIDE_QUEST_INFO":
               break;
            case "SHOP_BUTTON":
               this.§@!#§ = new §]!w§(§8!O§.§'!J§.Views.PopupView_Shop[0],this.§<8§());
               this.§@!#§.open();
               break;
            case "SHOP_CLOSE":
               if(this.§@!#§)
               {
                  this.§@!#§.close();
               }
               break;
            case "SETTINGS_BUTTON":
               if(this.§;5§)
               {
                  this.§;5§.§56§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               break;
            default:
               if(!§?z§.isPaused)
               {
                  this.dispatchEvent(new §8V§(param2));
                  break;
               }
         }
      }
      
      private function §,3§() : void
      {
         this.dispatchEvent(new §8V§(§8V§.CONTINUE));
      }
      
      private function cancel() : void
      {
         this.dispatchEvent(new §8V§(§8V§.CANCEL));
      }
      
      private function §2Y§() : void
      {
         this.dispatchEvent(new §8V§(§8V§.§3!v§));
      }
      
      private function §-!i§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§?z§.isPaused)
         {
            return;
         }
         §?z§.§6!#§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§<8§().§28§())
            {
               this.§<8§().§[!<§();
            }
            else
            {
               this.§<8§().§<^§("Blocks");
               this.§<8§().§`!n§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§2Y§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§,3§();
         }
         else if(param1.keyCode == Keyboard.I && param1.ctrlKey)
         {
            (AngryBirdsFP11.§8!I§ as §>9§).§98§();
         }
         this.dispatchEvent(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §?z§.§6!#§.keyUp(param1);
         this.dispatchEvent(param1);
      }
      
      public function §;!O§(param1:Object) : void
      {
         § do§.log("onOpenEditorRequest! " + param1[0]);
         if(§'N§.§`"+§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §6"6§.§9!h§(StateLevelEditor.§^z§);
            }
            else
            {
               §6"6§.§?"&§(StateLevelEditor.§^z§,param1[0]);
            }
            §'N§.§@!N§.§2!]§(§6"6§.§^z§);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         this.dispatchEvent(new §8V§(§8V§.SAVE));
      }
      
      public function §"=§(param1:int, param2:int) : void
      {
      }
      
      public function §^§(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§=!$§ != null)
            {
               this.§=!$§.graphics.clear();
            }
            return;
         }
         if(this.§=!$§ == null)
         {
            this.§=!$§ = new Shape();
            §%""§.addChildAt(this.§=!$§,0);
         }
         this.§=!$§.graphics.clear();
         this.§=!$§.graphics.beginFill(65280,0.1);
         this.§=!$§.graphics.lineStyle(1,43520,0.2);
         this.§=!$§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§=!$§.graphics.endFill();
      }
      
      public function §%!i§(param1:Vector.<§"X§>) : void
      {
         this.§=!P§.update(param1);
      }
      
      public function §&7§(param1:int) : void
      {
         var deltaTime:int = param1;
         this.§%Y§ = this.§%Y§.filter(function(param1:§0!>§, param2:int, param3:Vector.<§0!>§>):Boolean
         {
            return param1.update(deltaTime);
         });
      }
      
      public function §%!&§(param1:int, param2:int) : void
      {
         var _loc3_:§0!>§ = new §0!>§(param1,param2);
         this.§%Y§.push(_loc3_);
         §%""§.addChildAt(_loc3_,0);
      }
      
      public function §<8§() : §`!d§
      {
         return §%""§ as §`!d§;
      }
      
      public function §0!n§(param1:§'!k§) : void
      {
         if(this.§9!M§)
         {
            §%""§.removeChild(this.§9!M§);
         }
         this.§9!M§ = param1;
         if(this.§9!M§)
         {
            §%""§.addChildAt(this.§9!M§,0);
            if(this.§6!0§)
            {
               this.§9!M§.onEnterGUI();
            }
         }
      }
      
      public function § S§() : void
      {
         this.§1X§ = true;
      }
      
      public function § &§(param1:Boolean) : void
      {
         §="2§.doJsCall("onLevelDataChanged",param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§9o§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§9o§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§9o§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§9o§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§9o§.willTrigger(param1);
      }
   }
}
