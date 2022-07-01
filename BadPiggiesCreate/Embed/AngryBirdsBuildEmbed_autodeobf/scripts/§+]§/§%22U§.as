package §+]§
{
   import § !r§.Base64;
   import § !r§.§`![§;
   import § !u§.§9y§;
   import §!"§.§!!v§;
   import §#b§.*;
   import §&!m§.§;5§;
   import §-!0§.§0!k§;
   import §-!0§.§2! §;
   import §1!F§.§"![§;
   import §5#§.§?o§;
   import §8!+§.§"!X§;
   import §8!+§.§-!k§;
   import §8!+§.§6!W§;
   import §8!+§.§8!X§;
   import §8!+§.§]p§;
   import §<!<§.*;
   import §<!B§.*;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §`a§.§ !U§;
   import §`a§.§^7§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.NetStatusEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §"U§ extends §?o§
   {
      
      public static const §?!k§:int = 200;
      
      public static const §;W§:int = 1000;
      
      public static const §'e§:int = 8;
      
      public static const §6!7§:int = 0;
      
      public static const §'Z§:int = 1;
      
      public static const §@K§:int = 640;
      
      public static const §^S§:int = 480;
      
      public static const §0r§:Number = 100000;
      
      private static const §@!A§:String = "LastEditedLevel";
      
      private static var §'!5§:Function;
      
      private static var §?!]§:§2! §;
      
      private static var §5!=§:§0!k§;
      
      private static var §8T§:SharedObject;
       
      
      public var §5"§:Vector.<§!!i§>;
      
      public var mMousePositionB2:Point;
      
      public var mMousePosition:Point;
      
      public var §<!c§:Vector.<§;5§>;
      
      public var §9S§:Vector.<Object>;
      
      public var §8J§:Boolean = false;
      
      private var §^"§:Boolean = true;
      
      public var §0L§:Dictionary;
      
      public var mEditorUI:§try§ = null;
      
      private var §3X§:Boolean = false;
      
      private var §^!i§:String = null;
      
      private var §#I§:int = 0;
      
      private var §<!_§:SharedObject = null;
      
      private var §8E§:Boolean = false;
      
      private var §-k§:Function;
      
      private var §5!R§:Class;
      
      private var §5A§:Class;
      
      private var §<!2§:§"U§;
      
      private var §?X§:Dictionary;
      
      private var §`0§:Class;
      
      private var §;!X§:§#!v§;
      
      public function §"U§(param1:§7E§, param2:§try§)
      {
         this.mMousePositionB2 = new Point();
         this.mMousePosition = new Point();
         super(param1);
         this.mEditorUI = param2;
         this.§5"§ = new Vector.<§!!i§>();
         this.§<!c§ = new Vector.<§;5§>();
         this.§0L§ = new Dictionary();
      }
      
      public static function getCurrentLevelData() : §2! §
      {
         return §?!]§;
      }
      
      public static function get §=O§() : §0!k§
      {
         return §5!=§;
      }
      
      public static function set §=O§(param1:§0!k§) : void
      {
         §5!=§ = param1;
      }
      
      public static function §!!d§(param1:Vector.<§;5§>, param2:Number = 0) : Rectangle
      {
         var _loc7_:§;5§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§]!5§()) != null)
            {
               if(_loc8_.x < _loc3_)
               {
                  _loc3_ = _loc8_.x;
               }
               if(_loc8_.y < _loc4_)
               {
                  _loc4_ = _loc8_.y;
               }
               if(_loc8_.x + _loc8_.width > _loc5_)
               {
                  _loc5_ = _loc8_.x + _loc8_.width;
               }
               if(_loc8_.y + _loc8_.height > _loc6_)
               {
                  _loc6_ = _loc8_.y + _loc8_.height;
               }
            }
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
      
      public static function §4!Z§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = §?!]§.§%!d§();
         _loc1_.valid = §"![§.§?!W§();
         return _loc1_;
      }
      
      public static function §#!t§(param1:Function) : void
      {
         §'!5§ = param1;
         §7j§.§else§.§[$§ = §18§;
      }
      
      private static function §18§() : BitmapData
      {
         var _loc1_:Number = §'!V§.§?!a§();
         var _loc2_:Number = §'!V§.§<x§();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §7j§.drawToBitmapData(_loc3_);
         if(§'!5§ != null)
         {
            §'!5§(_loc3_);
            §'!5§ = null;
         }
         return _loc3_;
      }
      
      public static function §4!;§() : §2! §
      {
         var model:§2! § = null;
         try
         {
            if(!§8T§)
            {
               §8T§ = SharedObject.getLocal(§35§.§]!<§());
            }
            if(§8T§.data[§@!A§] != undefined)
            {
               model = §2! §.§%!G§(§8T§.data[§@!A§]);
               return model;
            }
         }
         catch(e:Error)
         {
         }
         return null;
      }
      
      override public function init() : void
      {
         super.init();
         this.§<!_§ = this.§ !P§();
         §`![§.log("initing level. " + this.§<!_§.data.levelId + " vs " + this.§1m§());
         if(this.§3X§ && this.§<!_§.data.undoPoints != null && this.§<!_§.data.levelId == this.§1m§())
         {
            try
            {
               this.§9S§ = this.§<!_§.data.undoPoints as Vector.<Object>;
               this.§5!K§();
            }
            catch(e:Error)
            {
            }
         }
         else if(this.§9S§ == null)
         {
            this.§9S§ = new Vector.<Object>();
         }
         §05§(true);
         §-n§.objects.setGroundTextureEnabled(false);
         §-n§.objects.setDamageEnabled(false);
         this.mEditorUI.§<!1§();
         §^7§.§>!B§(true);
         this.getCamera().§@!a§();
         this.§-2§(§-n§.getCurrentLevelData());
         this.§?X§ = new Dictionary();
         this.§?X§[§8!X§] = new §8!X§(this);
         this.§?X§[§"!X§] = new §"!X§(this);
         this.§?X§[§6!W§] = new §6!W§(this);
         this.§?X§[§-!k§] = new §-!k§(this);
         this.setTool(§"!X§);
      }
      
      public function setTool(param1:Class) : void
      {
         var _loc2_:Vector.<§;5§> = null;
         if(this.§`0§)
         {
            _loc2_ = this.§?X§[this.§`0§].getSelectedObjects();
            this.§?X§[this.§`0§].deActivate();
            if(_loc2_.length == 0 && param1 == §6!W§)
            {
               param1 = §"!X§;
            }
         }
         this.§`0§ = param1;
         if(this.§`0§ == §6!W§)
         {
            this.§?X§[this.§`0§].setSelection(_loc2_);
         }
         this.§?X§[this.§`0§].activate();
      }
      
      public function getCurrentTool() : §]p§
      {
         return this.§?X§[this.§`0§];
      }
      
      public function activate() : void
      {
         this.§5!K§();
      }
      
      public function § !P§() : SharedObject
      {
         return SharedObject.getLocal("angry-birds-level-editor-cache");
      }
      
      public function §1m§() : String
      {
         var _loc1_:String = "";
         if(§5!=§ != null)
         {
            _loc1_ = §5!=§.id;
         }
         return _loc1_;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Point = null;
         this.§'!T§();
         var _loc2_:Boolean = this.§8J§;
         §-n§.update(param1,_loc2_,false);
         if(this.mMousePosition != null)
         {
            _loc3_ = §-n§.screenToBox2D(this.mMousePosition.x,this.mMousePosition.y);
            this.mMousePositionB2.x = _loc3_.x;
            this.mMousePositionB2.y = _loc3_.y;
         }
         this.getCurrentTool().update(param1);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(this.§8J§)
         {
            return;
         }
         if(param1.keyCode == 90 && !this.§8J§)
         {
            this.addAction(this.§1Y§);
         }
         else if(param1.keyCode == Keyboard.D)
         {
            this.§]!G§();
         }
         else if(param1.keyCode == Keyboard.SPACE)
         {
            if(this.§`0§ != §-!k§)
            {
               this.§5!R§ = this.§`0§;
               this.setTool(§-!k§);
            }
         }
         this.getCurrentTool().onKeyDown(param1.keyCode);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.SPACE)
         {
            if(this.§5!R§ != null)
            {
               this.setTool(this.§5!R§);
               this.§5!R§ = null;
            }
         }
         this.getCurrentTool().onKeyUp(param1.keyCode);
      }
      
      public function §]k§() : int
      {
         return §?!k§ - this.getBlockCount() - this.getPigCount();
      }
      
      public function §"%§() : int
      {
         return §;W§ - this.getStaticCount();
      }
      
      public function §?v§() : int
      {
         return §'e§ - §-n§.slingshot.getBirdCount();
      }
      
      public function §^!3§() : Vector.<§]K§>
      {
         return §-n§.slingshot.mBirds;
      }
      
      public function getPigCount() : int
      {
         return §-n§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return §-n§.levelObjects.getBlockCount();
      }
      
      public function getStaticCount() : int
      {
         return §-n§.levelObjects.getStaticCount();
      }
      
      public function §'!o§() : §<!3§
      {
         return §-n§.objects.getObject(0);
      }
      
      public function get §,W§() : Boolean
      {
         return this.§^"§;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         this.getCurrentTool().onMouseDown();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         this.getCurrentTool().onMouseUp();
      }
      
      public function §4_§() : Boolean
      {
         return this.getCurrentTool() is §"!X§ && (this.getCurrentTool() as §"!X§).§4_§();
      }
      
      public function §4h§() : Boolean
      {
         return this.getCurrentTool() is §6!W§;
      }
      
      public function §2=§() : Boolean
      {
         return this.getCurrentTool() is §-!k§;
      }
      
      public function isDragging() : Boolean
      {
         if(!(this.getCurrentTool() is §"!X§))
         {
            return false;
         }
         return (this.getCurrentTool() as §"!X§).isDragging();
      }
      
      public function §0!O§() : Boolean
      {
         return this.§8J§;
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(this.mMousePosition == null)
         {
            this.mMousePosition = new Point(param1,param2);
         }
         else
         {
            this.mMousePosition.setTo(param1,param2);
         }
         this.getCurrentTool().onMouseMove();
      }
      
      public function getObjectFromCoordinate(param1:Point) : Object
      {
         var _loc2_:Point = §-n§.screenToBox2D(param1.x,param1.y);
         var _loc3_:Object = §-n§.objects.getObjectFromPoint(_loc2_.x,_loc2_.y);
         if(_loc3_ == null)
         {
            _loc3_ = §-n§.slingshot.getObjectFromPoint(_loc2_.x,_loc2_.y);
         }
         if(_loc3_ == null && §-n§.slingshot.intersectsWithPoint(_loc2_.x,_loc2_.y))
         {
            _loc3_ = §-n§.slingshot;
         }
         if(_loc3_ is §<!3§ && (_loc3_ as §<!3§).isGround())
         {
            return null;
         }
         return _loc3_;
      }
      
      public function get §-!@§() : int
      {
         return this.getCurrentTool().§",§();
      }
      
      public function §^?§(param1:Boolean, param2:§;5§) : void
      {
         param2.§+!D§(param1);
      }
      
      private function §]!G§() : void
      {
         var _loc2_:§;5§ = null;
         var _loc5_:§;5§ = null;
         var _loc6_:§;5§ = null;
         var _loc1_:Vector.<§;5§> = new Vector.<§;5§>();
         for each(_loc2_ in this.getSelectedObjects())
         {
            _loc1_.push(_loc2_);
         }
         if(_loc1_.length == 0)
         {
            return;
         }
         this.§if §();
         var _loc3_:Number = this.mMousePositionB2.x - _loc1_[0].getPosition().x;
         var _loc4_:Number = this.mMousePositionB2.y - _loc1_[0].getPosition().y;
         for each(_loc5_ in _loc1_)
         {
            if(!(_loc5_.isTexture() && this.§"%§() < 1))
            {
               if(!(_loc5_.§;L§() && this.§?v§() < 1))
               {
                  if(!_loc5_.§<P§())
                  {
                     if(!((_loc5_.§;!Z§() || _loc5_.§%P§()) && this.§]k§() < 1))
                     {
                        _loc6_ = _loc5_.clone(§-n§,_loc3_,_loc4_);
                        this.getCurrentTool().§;;§(_loc6_,true);
                     }
                  }
               }
            }
         }
         this.calculateCurrentScoreLimits();
         (this.getCurrentTool() as §"!X§).§6=§();
         this.mEditorUI.§!!1§();
      }
      
      public function copyObjectsToClipboard() : void
      {
         var _loc1_:Object = null;
         while(this.§<!c§.length > 0)
         {
            this.§<!c§.pop();
         }
         for each(_loc1_ in this.getCurrentTool().getSelectedObjects())
         {
            this.§<!c§.push(_loc1_);
         }
      }
      
      public function pasteSelectedObjectsIntoLevel() : Vector.<§;5§>
      {
         var _loc6_:§;5§ = null;
         var _loc7_:§;5§ = null;
         var _loc1_:Vector.<§;5§> = new Vector.<§;5§>();
         if(this.§<!c§.length == 0)
         {
            return _loc1_;
         }
         this.§]! §();
         var _loc2_:Rectangle = §!!d§(this.§<!c§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.mMousePositionB2.x - _loc3_.x;
         var _loc5_:Number = this.mMousePositionB2.y - _loc3_.y;
         for each(_loc6_ in this.§<!c§)
         {
            if(!(_loc6_.isTexture() && this.§"%§() < 1))
            {
               if(!(_loc6_.§;L§() && this.§?v§() < 1))
               {
                  if(!_loc6_.§<P§())
                  {
                     if(!((_loc6_.§;!Z§() || _loc6_.§%P§()) && this.§]k§() < 1))
                     {
                        _loc7_ = _loc6_.clone(§-n§,_loc4_,_loc5_);
                        _loc1_.push(_loc7_);
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §]! §() : void
      {
         if(this.§8J§)
         {
            return;
         }
         if(this.§9S§ == null)
         {
            this.§9S§ = new Vector.<Object>();
         }
         this.§9'§();
         this.calculateCurrentScoreLimits();
         this.§9S§.push(getCurrentLevelData().§4!E§());
      }
      
      public function §0!K§(param1:NetStatusEvent) : void
      {
         if(param1.info.code == "SharedObject.Flush.Failed")
         {
            this.§3X§ = false;
         }
         this.§<!_§.removeEventListener(NetStatusEvent.NET_STATUS,this.§0!K§);
      }
      
      public function getCamera() : §^7§
      {
         return §-n§.camera as §^7§;
      }
      
      public function §5!K§() : void
      {
         var _loc1_:§2! § = §2! §.§%!G§(this.§9S§[this.§9S§.length - 1] as String);
         this.§-2§(_loc1_);
         this.§9'§();
         addEventListeners();
      }
      
      public function §1Y§(param1:Boolean = true) : void
      {
         if(this.§9S§ != null && this.§9S§.length > 0)
         {
            this.§if §();
            this.getCamera().§ !C§();
            this.§5!K§();
            this.getCamera().§@!a§();
            this.§9S§.pop();
            this.§1#§();
            if(param1)
            {
               this.mEditorUI.§[!t§(true);
            }
         }
      }
      
      public function §if §() : void
      {
         var _loc1_:§]p§ = null;
         for each(_loc1_ in this.§?X§)
         {
            _loc1_.clearSelection();
         }
      }
      
      public function §5!L§(param1:Function) : void
      {
         this.§-k§ = param1;
         §7j§.§else§.§[$§ = this.§!!L§;
      }
      
      public function §9'§() : void
      {
         §?!]§ = §-n§.getCurrentLevelData();
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         this.getCurrentTool().onMouseWheel(param1.delta);
         this.mEditorUI.§<!1§();
      }
      
      public function §[L§() : void
      {
         this.getCamera().goToBirdView();
      }
      
      public function §6D§() : void
      {
         this.getCamera().goToCastleView();
      }
      
      public function §7!v§() : Boolean
      {
         return this.getCamera().§8!B§ - § !U§.SCREEN_HEIGHT_B2 * 0.5 / this.getCamera().§3!p§ > §-n§.slingshot.mX;
      }
      
      public function §?y§() : void
      {
         if(!this.§8J§)
         {
            this.§5A§ = this.§`0§;
            if(this.§5A§ == §8!X§)
            {
               this.§5A§ = §"!X§;
            }
            this.setTool(§-!k§);
            §-n§.slingshot.groundSlingshot();
            this.§]! §();
         }
         else
         {
            this.§1Y§(false);
            this.setTool(this.§5A§);
            this.§5A§ = null;
         }
         this.§8J§ = !this.§8J§;
      }
      
      public function §1+§(param1:String) : void
      {
         switch(param1)
         {
            case "ACTION_UNDO":
               this.addAction(this.§1Y§);
               break;
            case "TOGGLE_SNAP":
               this.§^"§ = !this.§^"§;
               break;
            case "TOOL_SELECT":
               this.setTool(§"!X§);
               break;
            case "TOOL_CAMERA":
               this.setTool(§-!k§);
               break;
            case "START_ROTATE":
               this.setTool(§6!W§);
               break;
            case "SET_MATERIAL_STONE":
               this.addAction(this.§"J§,"Material_Block_Stone");
               break;
            case "SET_MATERIAL_WOOD":
               this.addAction(this.§"J§,"Material_Block_Wood");
               break;
            case "SET_MATERIAL_ICE":
               this.addAction(this.§"J§,"Material_Block_Ice");
               break;
            case "DUPLICATE":
               this.addAction(this.§]!G§);
               break;
            case "TOOL_DELETE":
               this.addAction(this.deleteSelectedObjectsFromLevel);
         }
      }
      
      public function deleteSelectedObjectsFromLevel() : void
      {
         var _loc1_:§;5§ = null;
         if(this.getCurrentTool().getSelectedObjects().length > 0)
         {
            this.§]! §();
            for each(_loc1_ in this.getCurrentTool().getSelectedObjects())
            {
               if(_loc1_.getObject() is §<!3§)
               {
                  §-n§.objects.removeObject(_loc1_.getObject() as §<!3§);
               }
               else if(_loc1_.getObject() is §]K§)
               {
                  §-n§.slingshot.removeObject(_loc1_.getObject() as §]K§);
               }
            }
            this.mEditorUI.§[!t§(true);
            this.§if §();
            this.calculateCurrentScoreLimits();
         }
      }
      
      public function addAction(param1:Function, param2:Object = null) : void
      {
         this.§5"§.push(new §!!i§(param1,param2));
      }
      
      private function §'!T§() : void
      {
         var _loc1_:§!!i§ = null;
         for each(_loc1_ in this.§5"§)
         {
            _loc1_.execute();
         }
         this.§5"§ = new Vector.<§!!i§>();
      }
      
      private function §1#§() : void
      {
         this.calculateCurrentScoreLimits();
      }
      
      public function getOriginalTransformForObject(param1:§;5§) : b2Transform
      {
         return this.§0L§[param1];
      }
      
      public function storeTransformationForObject(param1:§;5§) : void
      {
         this.§0L§[param1] = param1.§!0§();
      }
      
      public function addItem(param1:String) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§?v§() <= 0)
            {
               §`![§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§"%§() <= 0)
            {
               §`![§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(this.§]k§() <= 0)
         {
            §`![§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            return null;
         }
         var _loc2_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc2_ = §-n§.slingshot.addNewBirdToEndOfList(param1,this.mMousePositionB2.x,this.mMousePositionB2.y);
         }
         else
         {
            _loc2_ = §-n§.objects.addObject(param1,this.mMousePositionB2.x,this.mMousePositionB2.y,0);
         }
         if(_loc2_ != null)
         {
            this.storeTransformationForObject(§;5§.§9!6§(_loc2_));
         }
         return _loc2_;
      }
      
      public function §52§(param1:§9y§) : void
      {
         this.setTool(§8!X§);
         (this.getCurrentTool() as §8!X§).§%a§(param1);
      }
      
      public function §9[§() : void
      {
         this.§]! §();
         this.§if §();
         this.getCamera().§ !C§();
         §^7§.§>!B§(false);
      }
      
      public function §3!$§(param1:String) : void
      {
         §-n§.background.resetLevelBackground(param1);
         this.mEditorUI.§[!t§(false);
      }
      
      public function §"J§(param1:String) : void
      {
      }
      
      private function §!!L§() : void
      {
         var _loc1_:Object = §4!Z§();
         var _loc2_:BitmapData = §18§();
         var _loc3_:ByteArray = §!!v§.encode(_loc2_);
         _loc1_.screen = Base64.§=G§(_loc3_);
         this.§-k§(JSON.stringify(_loc1_));
      }
      
      public function §-2§(param1:§2! §) : void
      {
         §-n§.clearLevel();
         §-n§.init(param1);
         §-n§.objects.setGroundTextureEnabled(false);
         §-n§.objects.setDamageEnabled(false);
         §^7§.§>!B§(true);
         this.getCamera().§@!a§();
         this.§9'§();
         this.§1#§();
         §-n§.slingshot.setSlingShotState(§;§.§>!]§);
      }
      
      public function §0j§() : Point
      {
         return this.getCurrentTool().§0j§();
      }
      
      public function §-!M§(param1:Number, param2:Number) : Point
      {
         return §-n§.box2DToScreen(param1,param2);
      }
      
      public function §+!u§() : Boolean
      {
         return false;
      }
      
      public function calculateCurrentScoreLimits() : void
      {
         var _loc7_:§<!3§ = null;
         var _loc1_:§2! § = getCurrentLevelData();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = 0;
         while(_loc4_ < §-n§.objects.getObjectCount())
         {
            if((_loc7_ = §-n§.objects.getObject(_loc4_)).§%P§())
            {
               _loc2_ += _loc7_.§9U§.score + §7E§.§5X§.getValue() * _loc7_.§1!s§;
            }
            else if(_loc7_.§7T§)
            {
               _loc3_ += _loc7_.§9U§.score;
               if(_loc7_.§'c§())
               {
                  _loc3_ += §7E§.§5X§.getValue() * _loc7_.§1!s§;
               }
            }
            _loc4_++;
         }
         var _loc5_:int = Math.max(0,§-n§.slingshot.getBirdCount() - 1) * 10000;
         var _loc6_:int = _loc2_ + _loc3_ + _loc5_;
         this.mEditorUI.§1#§(_loc2_,_loc6_);
         _loc1_.§8+§(_loc1_.§9>§);
      }
      
      public function getSelectedObjects() : Vector.<§;5§>
      {
         return this.getCurrentTool().getSelectedObjects();
      }
      
      public function §;e§() : Point
      {
         var _loc1_:§^7§ = this.getCamera();
         return new Point(_loc1_.xCenterB2,_loc1_.yCenterB2);
      }
      
      public function getLevelMain() : §7E§
      {
         return §-n§;
      }
      
      public function §9V§() : void
      {
         this.§9'§();
         try
         {
            if(!§8T§)
            {
               §8T§ = SharedObject.getLocal(§35§.§]!<§());
            }
            §8T§.data[§@!A§] = §?!]§.§4!E§();
            §8T§.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private function loadFromMemory() : void
      {
         var _loc1_:§2! § = §4!;§();
         if(_loc1_)
         {
            this.§-2§(_loc1_);
         }
      }
   }
}
