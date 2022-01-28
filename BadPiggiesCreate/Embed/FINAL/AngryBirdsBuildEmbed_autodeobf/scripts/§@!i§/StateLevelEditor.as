package §@!i§
{
   import § !r§.§`![§;
   import § !u§.§&Z§;
   import § !u§.§0m§;
   import § !u§.§9§;
   import § !u§.§9y§;
   import § !u§.§?K§;
   import §!!8§.§-!D§;
   import §!y§.§=!Z§;
   import §"!E§.*;
   import §#!4§.*;
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import §+]§.§#!v§;
   import §+]§.§7&§;
   import §+]§.§try§;
   import §<!<§.§]K§;
   import §<!B§.b2Vec2;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §@_§.§1M§;
   import §`a§.§^7§;
   import §false§.§<O§;
   import §false§.§=#§;
   import §false§.Popup;
   import flash.display.CapsStyle;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class StateLevelEditor extends §;!!§ implements §try§
   {
      
      public static const STATE_NAME:String = "StateLevelEditor";
       
      
      private const §=<§:Number = 1.5;
      
      private const §2u§:Boolean = false;
      
      public var §[D§:§"U§ = null;
      
      private var §"!h§:Boolean = false;
      
      private var §#p§:Boolean = false;
      
      private var §=!<§:String = null;
      
      private var §&!E§:Popup;
      
      private var §?!<§:Popup;
      
      private var §'n§:Boolean = false;
      
      private var §2!C§:Timer = null;
      
      private var §![§:Shape = null;
      
      private var §"!n§:Shape = null;
      
      private var §-!1§:Shape = null;
      
      private var §>l§:int = 1;
      
      private var §]!7§:Point = null;
      
      private var §>8§:§^7§ = null;
      
      private var §8!P§:Number;
      
      private var §1o§:Boolean = false;
      
      private var §-6§:String = "";
      
      private var §28§:String = "";
      
      private var §8e§:§0m§;
      
      private var §3'§:Dictionary;
      
      private var §>!i§:§[!s§ = null;
      
      private var §^6§:Boolean;
      
      private var §!!-§:Vector.<§?K§>;
      
      private var §;!X§:§#!v§;
      
      private var §<K§:Boolean = false;
      
      private var §+C§:Boolean = false;
      
      private var §!!4§:Boolean = true;
      
      private const §+X§:String = "saveButton";
      
      public function StateLevelEditor(param1:Boolean = false, param2:String = "StateLevelEditor")
      {
         this.§!!-§ = new Vector.<§?K§>();
         super(param1,param2);
         §-!D§.§<!C§("openEditor",this.§5Z§);
         §-!D§.§<!C§("snapshot",this.save);
         §-!D§.§<!C§("publish",this.onPublish);
         §`![§.log("External methods registered.");
      }
      
      public static function §finally§() : ColorMatrixFilter
      {
         var _loc1_:Array = [0.3,0.3,0.3,0,0,0.3,0.3,0.3,0,0,0.3,0.3,0.3,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      override public function init() : void
      {
         var _loc1_:§#!'§ = null;
         super.init();
         §^7§.§>!B§(true);
         §+!$§ = new §&Z§(this);
         this.§[D§ = new §"U§(§'!V§.§1!2§,this);
         §7j§.§else§.start();
         this.§>!i§ = §+!$§.getItemByName("Container_EditorMenu") as §[!s§;
         this.§>!i§.mClip.mouseEnabled = true;
         for each(_loc1_ in (§+!$§.getItemByName("Container_EditorMenuButtons") as §[!s§).§?n§)
         {
            _loc1_.setComponentState(§<f§.§`O§);
         }
         this.§;!X§ = new §#!v§(§+!$§,this.§[D§);
         this.§4!e§(false);
      }
      
      override public function getTargetFrameRate() : int
      {
         return Capabilities.os.indexOf("Mac") >= 0 ? 30 : 60;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!V§.resume();
         if(this.§#p§)
         {
            this.§#p§ = false;
            this.§[D§.activate();
         }
         this.§[D§.init();
         §'!V§.§>_§(this.§[D§);
         this.§;!X§.activate();
         this.§<!1§();
         §+!$§.movieClip.addEventListener(MouseEvent.MOUSE_OVER,this.§@!7§);
         §+!$§.movieClip.addEventListener(MouseEvent.ROLL_OUT,this.§^!H§);
         §7&§.§=n§().addEventListener(Event.CHANGE,this.§-L§);
         this.§-L§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§[D§.§9'§();
         this.§;!X§.deActivate();
         this.§ do§(null);
         §+!$§.movieClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§@!7§);
      }
      
      private function §@!7§(param1:MouseEvent) : void
      {
         if(this.§8e§)
         {
            this.§8e§.onEnterGUI();
         }
      }
      
      private function §^!H§(param1:MouseEvent) : void
      {
         if(this.§8e§)
         {
            this.§8e§.onLeaveGUI();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§!!4§)
         {
            (§+!$§ as §&Z§).§?!#§("Button_GeometryMenu");
            this.§!!4§ = false;
         }
         §'!V§.§?!G§.update(param1);
         if(this.§![§)
         {
            this.§![§.alpha -= 0.04;
            if(this.§![§.alpha <= 0)
            {
               §+!$§.removeChild(this.§![§);
               this.§![§ = null;
            }
         }
         var _loc3_:Boolean = §7&§.§=n§().§4V§(this.§+X§);
         §+!$§.getItemByName("Button_Save").setVisibility(_loc3_);
         §+!$§.getItemByName("MovieClip_SaveGlow").setVisibility(this.§+C§ && _loc3_ && !this.§[D§.§0!O§());
         §+!$§.getItemByName("MovieClip_SaveGlow").setVisibility(this.§+C§ && _loc3_ && !this.§[D§.§0!O§());
         §+!$§.getItemByName("MovieClip_SaveGlow").mClip.rotation = §+!$§.getItemByName("MovieClip_SaveGlow").mClip.rotation + 0.08 * param1;
         this.§&b§(false);
         this.§+!r§();
         this.§1k§(param1);
         this.setComponentState("Button_ToolSelect",!this.§[D§.§2=§());
         this.setComponentState("Button_ToolPan",this.§[D§.§2=§());
         (§+!$§.getItemByName("Button_Slider") as §0X§).§'!a§(1 - this.§[D§.getZoomRatio());
         this.§@0§(this.§[D§.getLevelMain().objects.§1!8§());
         if(this.§8e§)
         {
            this.§8e§.update(param1);
         }
         if(this.§"!h§)
         {
            this.§[D§.§9[§();
            §@!n§.loadLevel(§"U§.getCurrentLevelData(),StateLevelEditorTestPlay.STATE_NAME);
            mNextState = §@!n§.STATE_NAME;
            this.§"!h§ = false;
            this.§#p§ = true;
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      private function setComponentState(param1:String, param2:Boolean) : void
      {
         var _loc3_:String = !!param2 ? §<f§.COMPONENT_STATE_ACTIVE_DEFAULT : §<f§.§`O§;
         (§+!$§.getItemByName(param1) as §#!'§).setComponentState(_loc3_);
      }
      
      private function §1k§(param1:int) : void
      {
         this.§>!i§.x += param1 * this.§=<§ * (this.§,B§().§<!o§() && !this.§[D§.§0!O§() ? 1 : -1);
         if(this.§>!i§.x > 5)
         {
            this.§>!i§.x = 5;
         }
         if(this.§>!i§.x < -this.§>!i§.width)
         {
            this.§>!i§.x = -this.§>!i§.width;
         }
      }
      
      private function §4!e§(param1:Boolean, param2:Boolean = true) : void
      {
         this.§^6§ = param1;
         if(this.§^6§)
         {
            if(param2)
            {
               this.§[D§.§[L§();
            }
         }
         else if(param2)
         {
            this.§[D§.§6D§();
         }
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "SELECT_ITEM":
               this.§[D§.§52§(param3 as §9y§);
               break;
            case "SELECT_THEME":
               this.§[D§.§3!$§((param3 as §9y§).mName);
               break;
            case "PLAY_LEVEL":
               this.§#a§();
               break;
            case "SELECT_CATEGORY":
            case "TOGGLE_CATEGORY":
               if((param3 as §#!'§).mName == §9§.§8!,§)
               {
                  this.§4!e§(true);
                  break;
               }
               if((param3 as §#!'§).mName == §9§.§1!v§)
               {
                  this.§4!e§(false);
                  break;
               }
               break;
            case "SAVE":
               this.save();
               break;
            case "TOGGLE_GRAVITY":
               this.§4!v§();
               break;
            case "HELP_BUTTON":
               this.§&!E§ = new §=#§(§+!$§,§=!Z§.§;K§.Views.PopupView_EditorHelp[0]);
               this.§&!E§.getItemByName("Container_Advanced").setVisibility(false);
               this.§&!E§.getItemByName("Container_Tips").setVisibility(true);
               this.§&!E§.open();
               break;
            case "HELP_ADVANCED":
               this.§&!E§.getItemByName("Container_Advanced").setVisibility(true);
               this.§&!E§.getItemByName("Container_Tips").setVisibility(false);
               break;
            case "HELP_BACK":
               this.§&!E§.getItemByName("Container_Advanced").setVisibility(false);
               this.§&!E§.getItemByName("Container_Tips").setVisibility(true);
               break;
            case "FULLSCREEN_BUTTON":
               this.§<K§ = !this.§<K§;
               §-!D§.§?5§("onFullscreenToggle");
               break;
            case "HELP_CLOSE":
               this.§&!E§.close();
               break;
            case "PROMPT_CLOSE":
               this.§?!<§.close();
               break;
            case "ZOOM_DRAG":
               this.§[D§.setZoomRatio(1 - (param3 as §0X§).§8!T§());
               break;
            default:
               if(!§'!V§.§=!A§)
               {
                  this.§[D§.§1+§(param2);
                  break;
               }
         }
         this.§<!1§();
      }
      
      private function §#a§() : void
      {
         if(this.§[D§.§0!O§())
         {
            return;
         }
         if(this.§[D§.§^!3§().length > 0 && this.§[D§.getPigCount() > 0)
         {
            this.§"!h§ = true;
         }
         else
         {
            this.§?!<§ = new §<O§(§+!$§ as §&Z§,§<O§.§+!d§);
            this.§?!<§.open();
         }
      }
      
      private function §4!v§() : void
      {
         if(this.§[D§.getPigCount() > 0 || this.§[D§.getBlockCount() > 0)
         {
            this.§[D§.§?y§();
            if(this.§[D§.§0!O§())
            {
               (§+!$§.getItemByName("Button_Gravity") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§2!&§(§+!$§.container,[§finally§()],["Button_Gravity","Container_ContextMenu","Button_Slider"]);
               §-!D§.§?5§("onGravityEnabled");
            }
            else
            {
               (§+!$§.getItemByName("Button_Gravity") as §#!'§).setComponentState(§<f§.§`O§);
               this.§2!&§(§+!$§.container,[],["Button_Gravity","Container_ContextMenu","Button_Slider"]);
               §-!D§.§?5§("onGravityDisabled");
            }
         }
         else
         {
            this.§?!<§ = new §<O§(§+!$§ as §&Z§,§<O§.§@8§);
            this.§?!<§.open();
         }
      }
      
      private function §2!&§(param1:§[!s§, param2:Array, param3:Array) : void
      {
         var _loc5_:§'^§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.§?n§.length)
         {
            _loc5_ = param1.§?n§[_loc4_];
            if(param3.indexOf(_loc5_.mName) == -1)
            {
               if(_loc5_ is §[!s§)
               {
                  this.§2!&§(_loc5_ as §[!s§,param2,param3);
               }
               else if(_loc5_ is §#!'§)
               {
                  (_loc5_ as §#!'§).mClip.filters = param2;
                  (_loc5_ as §#!'§).setEnabled(param2.length == 0);
               }
            }
            _loc4_++;
         }
      }
      
      private function §-L§(param1:Event = null) : void
      {
         (§+!$§.getItemByName("Container_ZoomBar") as §[!s§).visible = §7&§.§=n§().§4V§(§7&§.§5^§);
      }
      
      public function §<!1§() : void
      {
         this.§;!X§.§<!1§();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§'!V§.§=!A§)
         {
            return;
         }
         §'!V§.§?!G§.keyDown(param1);
         if(param1.keyCode == Keyboard.S && param1.ctrlKey)
         {
            this.save();
         }
         else if(param1.keyCode == Keyboard.P && param1.ctrlKey)
         {
            this.onPublish();
         }
         else if(param1.keyCode == Keyboard.TAB)
         {
            if(this.§,B§().§<!o§())
            {
               this.§,B§().§7$§();
            }
            else
            {
               this.§,B§().§]B§();
            }
         }
         else if(param1.keyCode == Keyboard.G)
         {
            this.§4!v§();
         }
         else if(param1.keyCode == Keyboard.P)
         {
            this.§#a§();
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §'!V§.§?!G§.keyUp(param1);
      }
      
      public function §->§() : §"U§
      {
         return this.§[D§;
      }
      
      public function §!!1§() : void
      {
         this.§&b§();
      }
      
      private function §+!r§() : void
      {
         var _loc3_:§?K§ = null;
         var _loc4_:int = 0;
         var _loc5_:§?K§ = null;
         var _loc1_:Vector.<§]K§> = this.§[D§.§^!3§();
         if(!this.§[D§.§0!O§())
         {
            _loc4_ = 0;
            while(_loc4_ < _loc1_.length)
            {
               if(this.§!!-§.length > _loc4_)
               {
                  _loc5_ = this.§!!-§[_loc4_];
               }
               else
               {
                  _loc5_ = new §?K§();
                  this.§!!-§.push(_loc5_);
                  §+!$§.addChildAt(_loc5_,0);
               }
               _loc5_.update(_loc4_,_loc1_[_loc4_],this.§[D§);
               _loc4_++;
            }
         }
         var _loc2_:Vector.<§?K§> = this.§!!-§.slice(_loc4_);
         this.§!!-§ = this.§!!-§.slice(0,_loc4_);
         for each(_loc3_ in _loc2_)
         {
            §+!$§.removeChild(_loc3_);
         }
      }
      
      public function §&b§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§;5§ = null;
         var _loc2_:§[!s§ = §+!$§.getItemByName("Container_ContextMenu") as §[!s§;
         if(this.§[D§.§-!@§ == 0 || this.§[D§.isDragging() || this.§[D§.§4_§() || this.§[D§.§4h§())
         {
            if(_loc2_.§6!4§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else
         {
            if(!_loc2_.§6!4§)
            {
               _loc2_.setVisibility(true);
            }
            _loc2_.mClip.alpha = 0.7;
         }
         if(this.§[D§.§-!@§ > 0)
         {
            _loc6_ = this.§[D§.§0j§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§#!'§ = §+!$§.getItemByName("Button_RotateClockwiseContext") as §#!'§;
         var _loc4_:§#!'§ = §+!$§.getItemByName("Button_Duplicate") as §#!'§;
         var _loc5_:§#!'§ = §+!$§.getItemByName("Button_ToolDeleteContext") as §#!'§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§[D§.§-!@§ > 0)
         {
            for each(_loc7_ in this.§[D§.getSelectedObjects())
            {
               if(!_loc7_.§<P§())
               {
                  if(!_loc7_.§;L§())
                  {
                     _loc3_.setVisibility(true);
                     _loc4_.setVisibility(true);
                     _loc5_.setVisibility(true);
                  }
                  _loc4_.setVisibility(true);
                  _loc5_.setVisibility(true);
               }
            }
         }
      }
      
      public function §5Z§(param1:Object) : void
      {
         §`![§.log("onOpenEditorRequest! " + param1[0]);
         if(§35§.§7!p§)
         {
            if(param1[0] == null || (param1[0] as String).length == 0)
            {
               §@!n§.§%!]§(StateLevelEditor.STATE_NAME);
            }
            else
            {
               §@!n§.§,c§(StateLevelEditor.STATE_NAME,param1[0]);
            }
            §35§.§`!d§.§8!W§(§@!n§.STATE_NAME);
         }
      }
      
      private function save(param1:Object = null) : void
      {
         if(this.§[D§)
         {
            if(§8W§)
            {
               this.§[D§.§9'§();
            }
            this.§[D§.§5!L§(this.§@!;§);
         }
         this.§+C§ = false;
         §+!$§.getItemByName("MovieClip_SaveGlow").setVisibility(false);
      }
      
      private function onPublish(param1:Object = null) : String
      {
         this.§+C§ = false;
         §+!$§.getItemByName("MovieClip_SaveGlow").setVisibility(false);
         if(§8W§)
         {
            this.§[D§.§9'§();
         }
         var _loc2_:Object = §"U§.§4!Z§();
         if(_loc2_.valid)
         {
            return JSON.stringify(_loc2_);
         }
         return JSON.stringify(new Object());
      }
      
      private function §@!;§(param1:String) : void
      {
         §-!D§.§?5§("onScreenshotReady",param1);
      }
      
      public function §1#§(param1:int, param2:int) : void
      {
         this.§;!X§.§6!+§(param1,param2);
         this.§;!X§.§<!1§();
      }
      
      public function §7c§() : void
      {
         this.§![§ = new Shape();
         this.§![§.graphics.beginFill(16777215);
         this.§![§.graphics.drawRect(0,0,getAppWidth(),getAppHeight());
         this.§![§.graphics.endFill();
         §+!$§.addChild(this.§![§);
      }
      
      public function updateSelectionArea(param1:Rectangle) : void
      {
         if(param1 == null)
         {
            if(this.§"!n§ != null)
            {
               this.§"!n§.graphics.clear();
            }
            return;
         }
         if(this.§"!n§ == null)
         {
            this.§"!n§ = new Shape();
            §+!$§.addChildAt(this.§"!n§,0);
         }
         this.§"!n§.graphics.clear();
         this.§"!n§.graphics.beginFill(65280,0.1);
         this.§"!n§.graphics.lineStyle(1,43520,0.2);
         this.§"!n§.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         this.§"!n§.graphics.endFill();
      }
      
      public function §@0§(param1:Vector.<§1M§>) : void
      {
         var _loc2_:§1M§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         if(this.§-!1§ == null)
         {
            this.§-!1§ = new Shape();
            §+!$§.addChildAt(this.§-!1§,0);
         }
         this.§-!1§.graphics.clear();
         if(this.§[D§.§0!O§())
         {
            return;
         }
         this.§-!1§.graphics.lineStyle(4,16711680,1,false,"normal",CapsStyle.ROUND);
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.§0i§.§<!W§().GetPosition();
            _loc4_ = _loc2_.§0i§.§?!=§().GetPosition();
            _loc5_ = this.§[D§.getLevelMain().box2DToScreen(_loc3_.x,_loc3_.y);
            _loc6_ = this.§[D§.getLevelMain().box2DToScreen(_loc4_.x,_loc4_.y);
            this.§-!1§.graphics.moveTo(_loc5_.x,_loc5_.y);
            this.§-!1§.graphics.lineTo(_loc6_.x,_loc6_.y);
         }
         this.§-!1§.filters = [new GlowFilter(11141120,1,1.5,1.5,4)];
         this.§-!1§.alpha = 0.8;
      }
      
      private function §,B§() : §&Z§
      {
         return §+!$§ as §&Z§;
      }
      
      public function § do§(param1:§0m§) : void
      {
         if(this.§8e§)
         {
            §+!$§.removeChild(this.§8e§);
         }
         this.§8e§ = param1;
         if(this.§8e§)
         {
            §+!$§.addChildAt(this.§8e§,0);
         }
      }
      
      public function §[!t§(param1:Boolean) : void
      {
         §-!D§.§?5§("onLevelDataChanged",param1);
         this.§+C§ = true;
      }
   }
}
