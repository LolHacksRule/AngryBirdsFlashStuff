package §=;§
{
   import § !%§.§^2§;
   import §"h§.§<"+§;
   import §%!n§.§7P§;
   import §&!&§.*;
   import §&!P§.§'!v§;
   import §&!P§.§80§;
   import §&"&§.§8!"§;
   import §-N§.§=!]§;
   import §1'§.§=!Q§;
   import §3!S§.§%s§;
   import §5!k§.§6"6§;
   import §7"2§.§;!5§;
   import §8!7§.§#P§;
   import §8!7§.§&%§;
   import §8!7§.§'9§;
   import §8!7§.§1=§;
   import §8!7§.§3i§;
   import §8!7§.§@!W§;
   import §;V§.§"H§;
   import §<!I§.*;
   import §<Z§.§"!f§;
   import §?""§.§&z§;
   import §@!;§.§&F§;
   import §@!E§.§!0§;
   import §@!N§.§3E§;
   import com.rovio.assets.§8!q§;
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
   
   public class StateLevelEditor extends §<"+§ implements IEventDispatcher
   {
      
      public static const §8G§:String = "StateLevelEditor";
      
      private static const §1!z§:int = 20000;
       
      
      private const §`a§:Boolean = false;
      
      private var §0!t§:EventDispatcher;
      
      private var §"Z§:§;!5§;
      
      private var §]P§:Boolean = false;
      
      private var §[;§:Boolean = false;
      
      private var §&s§:Shape = null;
      
      private var §]!>§:Vector.<§#P§>;
      
      private var §&!D§:Boolean = false;
      
      private var §]!f§:String = "";
      
      private var §!]§:String = "";
      
      private var §3!I§:§3i§;
      
      private var §<_§:Boolean = false;
      
      private var §+!L§:Boolean;
      
      private var §@!O§:Boolean = false;
      
      private var §7!l§:int = -1;
      
      private var §@X§:Vector.<§&"1§>;
      
      private var §,!S§:Vector.<§7P§>;
      
      private var §5!&§:§@!W§;
      
      private var §"4§:§80§;
      
      private var §85§:MovieClip;
      
      private var §;"4§:Vector.<DisplayObject>;
      
      private var §^=§:§'!v§;
      
      private var §"q§:§"H§;
      
      private var §5!R§:§!0§;
      
      private var §!!I§:int = 20000;
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§0!t§ = new EventDispatcher();
         this.§]!>§ = new Vector.<§#P§>();
         this.§@X§ = new Vector.<§&"1§>();
         this.§;"4§ = new Vector.<DisplayObject>();
         super(param1,param2);
         §8!"§.registerMethod("openEditor",this.§!!z§);
         §8!"§.registerMethod("snapshot",this.save);
         §&F§.log("External methods registered.");
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §&%§(this);
         §3E§.§!`§(true);
         this.§"Z§ = new §;!5§(this);
         if(!this.§5!&§)
         {
            this.§5!&§ = new §@!W§(this,this.§"Z§.§94§);
         }
         new §1=§(this.§^A§());
         §=!]§.§@§.start();
         this.§+",§(false);
         var _loc1_:Class = §8!q§.§2^§("HighlightArrow");
         this.§85§ = new _loc1_();
         this.§85§.visible = false;
         §;i§.movieClip.addChild(this.§85§);
         this.§5!R§ = new §!0§(§"!f§.§%!1§.Views.View_Settings[0],super.§;i§.container);
         this.§5!R§.visible = true;
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §3E§.§!`§(true);
         §%s§.resume();
         this.§"Z§.activate();
         if(this.§[;§)
         {
            this.§[;§ = false;
         }
         §%s§.§4!-§(this.§"Z§.§%&§);
         this.§"Z§.§%&§.§5!G§(true);
         §;i§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§'"&§);
         §;i§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§,"4§);
         §&z§.§%!w§().addEventListener(Event.CHANGE,this.§6"&§);
         this.§6"&§();
         (this.§^A§().getItemByName("ButtonGravity") as §+!A§).setComponentState(§+!A§.§5"6§);
         (this.§^A§().getItemByName("ButtonGravity") as §+!A§).setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§%s§.isPaused)
         {
            this.§"Z§.update(param1);
         }
         this.§?!<§(this.§"Z§.§94§.§'!E§.objects.getJoints());
         this.§^A§().§5d§(param1);
         §1=§.§'!o§.§"M§();
         this.§+"6§(param1);
         if(this.§3!I§)
         {
            this.§3!I§.update(param1);
         }
         if(this.§]P§)
         {
            §=!"§.loadLevel(this.§"Z§.§94§.§'!E§.§+!3§(),StateLevelEditorTestPlay.§8G§);
            mNextState = §=!"§.§8G§;
            this.§]P§ = false;
            this.§[;§ = true;
         }
         if(mNextState.length > 0)
         {
            §7P§.§'!o§.§8!F§();
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         if(§7P§.§'!o§.canSave())
         {
            this.§!!I§ -= param1;
            if(this.§!!I§ <= 0)
            {
               this.§!!I§ = §1!z§;
               this.save();
            }
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      public function §,!y§() : Boolean
      {
         return this.§[;§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+S§(null);
         §;i§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§'"&§);
      }
      
      private function §'"&§(param1:MouseEvent) : void
      {
         if(this.§3!I§)
         {
            this.§3!I§.onEnterGUI();
         }
         this.§<_§ = true;
      }
      
      private function §,"4§(param1:MouseEvent) : void
      {
         if(this.§3!I§)
         {
            this.§3!I§.onLeaveGUI();
         }
         this.§<_§ = false;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT : §+!A§.§5"6§;
         (§;i§.getItemByName(param1) as §="5§).setComponentState(_loc3_);
      }
      
      public function §-z§() : Boolean
      {
         return this.§+!L§;
      }
      
      public function §+",§(param1:Boolean) : void
      {
         if(this.§+!L§ == param1)
         {
            return;
         }
         this.§+!L§ = param1;
         this.dispatchEvent(new §6"6§(§6"6§.§]f§));
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         var _loc4_:§="5§ = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.dispatchEvent(new Event("close_popups"));
               break;
            case "SELECT_THEME":
               this.§"Z§.§%&§.§^t§((param3 as §'9§).getItemName());
               break;
            case "CONTINUE":
               this.§9T§();
               break;
            case "PUBLISH":
               this.dispatchEvent(new §6"6§(§6"6§.PUBLISH));
               break;
            case "CANCEL":
               this.cancel();
               break;
            case "SAVE":
               this.save();
               break;
            case "HELP_BUTTON":
               this.§^=§ = new §'!v§(§;i§,§"!f§.§%!1§.Views.PopupView_EditorHelp[0]);
               this.§^=§.getItemByName("Container_Advanced").setVisibility(false);
               this.§^=§.getItemByName("Container_Tips").setVisibility(true);
               this.§^=§.open();
               break;
            case "HELP_ADVANCED":
               this.§5!R§.§6l§();
               this.§^=§ = new §'!v§(§;i§,§"!f§.§%!1§.Views.PopupView_EditorHelp[0]);
               this.§^=§.getItemByName("Container_Advanced").setVisibility(true);
               this.§^=§.getItemByName("Container_Tips").setVisibility(false);
               this.§^=§.open();
               break;
            case "HELP_BACK":
               this.§^=§.getItemByName("Container_Advanced").setVisibility(false);
               this.§^=§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               this.§@!O§ = !this.§@!O§;
               §8!"§.doJsCall("onFullscreenToggle");
               this.§5!R§.§6l§();
               break;
            case "HELP_CLOSE":
               (_loc4_ = this.§5!R§.getItemByName("Button_Help") as §="5§).§@F§();
               this.§^=§.close();
               break;
            case "ZOOM_DRAG":
               this.§"Z§.§%&§.setZoomRatio(1 - (param3 as §5!j§).§!!g§());
               break;
            case "TOGGLE_PHYSICS":
               this.§1&§();
            case "SHOW_QUEST_INFO":
               break;
            case "HIDE_QUEST_INFO":
               break;
            case "SHOP_BUTTON":
               this.§"q§ = new §"H§(§"!f§.§%!1§.Views.PopupView_Shop[0],this.§^A§());
               this.§"q§.open();
               break;
            case "SHOP_CLOSE":
               if(this.§"q§)
               {
                  this.§"q§.close();
               }
               break;
            case "SETTINGS_BUTTON":
               if(this.§5!R§)
               {
                  this.§5!R§.§6l§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               break;
            default:
               if(!§%s§.isPaused)
               {
                  this.dispatchEvent(new §6"6§(param2));
                  break;
               }
         }
      }
      
      private function §9T§() : void
      {
         this.dispatchEvent(new §6"6§(§6"6§.CONTINUE));
      }
      
      private function cancel() : void
      {
         this.dispatchEvent(new §6"6§(§6"6§.CANCEL));
      }
      
      private function §1&§() : void
      {
         this.dispatchEvent(new §6"6§(§6"6§.§9Q§));
      }
      
      private function §6"&§(param1:Event = null) : void
      {
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§%s§.isPaused)
         {
            return;
         }
         §%s§.§]x§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§^A§().§#5§())
            {
               this.§^A§().§<§();
            }
            else
            {
               this.§^A§().§]!e§("Blocks");
               this.§^A§().§5!;§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§1&§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§9T§();
         }
         else if(param1.keyCode == Keyboard.I && param1.ctrlKey)
         {
            (AngryBirdsFP11.§5!c§ as §^2§).§9e§();
         }
         this.dispatchEvent(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §%s§.§]x§.keyUp(param1);
         this.dispatchEvent(param1);
      }
      
      public function §!!z§(param1:Object) : void
      {
         §&F§.log("onOpenEditorRequest! " + param1[0]);
         if(§1+§.§&g§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §=!"§.§>A§(StateLevelEditor.§8G§);
            }
            else
            {
               §=!"§.§;!8§(StateLevelEditor.§8G§,param1[0]);
            }
            §1+§.§?!-§.§<g§(§=!"§.§8G§);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         this.dispatchEvent(new §6"6§(§6"6§.SAVE));
      }
      
      public function §^1§(param1:int, param2:int) : void
      {
      }
      
      public function §+J§(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§&s§ != null)
            {
               this.§&s§.graphics.clear();
            }
            return;
         }
         if(this.§&s§ == null)
         {
            this.§&s§ = new Shape();
            §;i§.addChildAt(this.§&s§,0);
         }
         this.§&s§.graphics.clear();
         this.§&s§.graphics.beginFill(65280,0.1);
         this.§&s§.graphics.lineStyle(1,43520,0.2);
         this.§&s§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§&s§.graphics.endFill();
      }
      
      public function §?!<§(param1:Vector.<§=!Q§>) : void
      {
         this.§5!&§.update(param1);
      }
      
      public function §+"6§(param1:int) : void
      {
         var deltaTime:int = param1;
         this.§]!>§ = this.§]!>§.filter(function(param1:§#P§, param2:int, param3:Vector.<§#P§>):Boolean
         {
            return param1.update(deltaTime);
         });
      }
      
      public function §>!E§(param1:int, param2:int) : void
      {
         var _loc3_:§#P§ = new §#P§(param1,param2);
         this.§]!>§.push(_loc3_);
         §;i§.addChildAt(_loc3_,0);
      }
      
      public function §^A§() : §&%§
      {
         return §;i§ as §&%§;
      }
      
      public function §+S§(param1:§3i§) : void
      {
         if(this.§3!I§)
         {
            §;i§.removeChild(this.§3!I§);
         }
         this.§3!I§ = param1;
         if(this.§3!I§)
         {
            §;i§.addChildAt(this.§3!I§,0);
            if(this.§<_§)
            {
               this.§3!I§.onEnterGUI();
            }
         }
      }
      
      public function §+!B§() : void
      {
         this.§]P§ = true;
      }
      
      public function §-!A§(param1:Boolean) : void
      {
         §8!"§.doJsCall("onLevelDataChanged",param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§0!t§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§0!t§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0!t§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§0!t§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§0!t§.willTrigger(param1);
      }
   }
}
