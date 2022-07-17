package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItemMaterial;
   import com.AngryBirds.LevelItemsData.LevelItems;
   import com.AngryBirds.LevelItemsData.LevelThemeBackgrounds;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.states.StateLevelEditor;
   import com.AngryBirds.ui.ViewLevelEditor;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.adobe.images.JPGEncoder;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Base64;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.factory.RovioUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   
   public class LevelEditor extends Sprite
   {
      
      public static const SELECTED_TOOL_SELECT:int = 0;
      
      public static const SELECTED_TOOL_CAMERA:int = 1;
      
      public static const SELECTED_TOOL_ROTATE_OLD1:int = 2;
      
      public static const SELECTED_TOOL_ROTATE_OLD2:int = 3;
      
      public static const SELECTED_TOOL_ROTATE:int = 4;
      
      public static const SELECTED_TOOL_DELETE_OLD:int = 5;
      
      public static const SELECTED_TOOL_DELETE:int = 6;
      
      public static const SELECTED_TOOL_ADD_ITEM:int = 11;
      
      public static const SELECTED_TOOL_PLAY:int = 12;
      
      public static const SELECTED_TOOL_DEFINE_CAMERA:int = 23;
      
      public static const EDITOR_VIEW_SLINGSHOT:int = 0;
      
      public static const EDITOR_VIEW_CASTLE:int = 1;
      
      public static const LEVEL_OBJECTS_LIMIT:int = 50;
      
      public static const LEVEL_OBJECTS_LIMIT_EXTENSION:int = 50;
      
      public static const ACTION_ADD_ITEM:int = 0;
      
      public static const ACTION_DELETE_ITEM:int = 1;
      
      public static const ACTION_ROTATE_ITEM:int = 2;
      
      public static const ACTION_UNDO:int = 3;
      
      public static const ACTION_DELETE_ALL:int = 4;
      
      public static const ACTION_SELECTED_COPY:int = 5;
      
      public static const ACTION_SELECTED_PASTE:int = 6;
      
      public static const ACTION_SELECTED_DELETE:int = 7;
      
      public static const ACTION_SELECTED_ROTATE:int = 8;
      
      public static const ACTION_SELECTED_ROTATE_NEW:int = 80;
      
      public static const ACTION_SELECTED_MOVE_DOWN:int = 9;
      
      public static const ACTION_SELECTED_MOVE_UP:int = 10;
      
      public static const ACTION_SELECTED_MOVE_LEFT:int = 11;
      
      public static const ACTION_SELECTED_MOVE_RIGHT:int = 12;
      
      public static const ACTION_SWITCH_BACKGROUND:int = 13;
      
      public static const ACTION_CLEAR_BOX2D_FORCES:int = 14;
      
      public static const ACTION_SET_TOOL_SELECT:int = 15;
      
      public static const ROTATE_ACTION_THRESHHOLD_TIME:int = 300;
      
      public static const USE_POSITION_GRIDS:Boolean = true;
      
      public static const USE_GRID_PRECISION:int = 5;
      
      public static const SELECT_OBJECTS_MOVEMENT_WITH_KEYS:Number = !!USE_POSITION_GRIDS ? Number(1 / USE_GRID_PRECISION) : Number(0.1);
      
      public static const PHYSICS_ENABLED_ON_EDITOR_STARTUP:Boolean = true;
       
      
      public var mSelectedMaterialName:String;
      
      public var mPhysicsEnabled:Boolean = false;
      
      public var mPhysicsEnabledInEditorMode:Boolean = false;
      
      public var mEditorView:int = 1;
      
      public var mSelectedTool:int = -1;
      
      public var mDraggingMaterialClip:MovieClip;
      
      public var mLevelMain:LevelMain;
      
      public var mMousePositionXB2:Number;
      
      public var mMousePositionYB2:Number;
      
      public var mActionBuffer:Array;
      
      public var mLastRolledOverObject:LevelObject;
      
      public var mLastRolledOverObject2:LevelSlingshotObject;
      
      public var mLastRolledOverObjectTimer:Number;
      
      public var mSaveObjectsBeforeKeyMovements:Boolean = false;
      
      public var mSelectedObjects:Array;
      
      public var mSelectedObjectsDrag:Boolean = false;
      
      public var mSelectedObjectsDragAllowed:Boolean = false;
      
      public var mSelectedObjectsDragTimer:Number = 0;
      
      public var mSelectedObjectsDragX:Number;
      
      public var mSelectedObjectsDragY:Number;
      
      public var mCTRLpressed:Boolean = false;
      
      public var mSHIFTpressed:Boolean = false;
      
      public var mSelectedObjectsMultipleSelection:Boolean = false;
      
      public var mSelectedObjectsMultipleSelectionSprite:Sprite;
      
      public var mCopiedObjects:Array;
      
      public var mSavedLevels:Array;
      
      public var mLevelName:String = "";
      
      public var mLevelCompleted:Boolean = false;
      
      public var mLevelSaved:Boolean = false;
      
      public function LevelEditor(param1:LevelMain)
      {
         super();
         this.mLevelMain = param1;
         this.mActionBuffer = new Array();
         this.mSelectedObjects = new Array();
         this.mSavedLevels = new Array();
         this.mPhysicsEnabled = PHYSICS_ENABLED_ON_EDITOR_STARTUP;
         this.mSelectedObjectsMultipleSelectionSprite = new Sprite();
         addChild(this.mSelectedObjectsMultipleSelectionSprite);
      }
      
      public static function decodeImageData(param1:String) : DisplayObject
      {
         var _loc2_:ByteArray = Base64.decodeToByteArray(param1);
         var _loc3_:Loader = new Loader();
         _loc3_.loadBytes(_loc2_);
         return _loc3_;
      }
      
      public static function roundUpCoordinate(param1:Number, param2:Boolean) : Number
      {
         if(!USE_POSITION_GRIDS)
         {
            return param1;
         }
         if(param2)
         {
            return RovioUtils.removeUnwantedFraction(param1,2,-1);
         }
         return RovioUtils.removeUnwantedFraction(param1,1,USE_GRID_PRECISION);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:LevelObject = null;
         if(this.mLastRolledOverObject || this.mLastRolledOverObject2)
         {
            this.mLastRolledOverObjectTimer += param1;
         }
         if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM)
         {
            if(!this.mDraggingMaterialClip)
            {
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD2)
         {
            if(this.mLastRolledOverObject)
            {
               if(this.mLastRolledOverObjectTimer > ROTATE_ACTION_THRESHHOLD_TIME)
               {
                  _loc2_ = this.mMousePositionYB2 - this.mSelectedObjectsDragY;
                  _loc3_ = Math.min(6,Math.max(2,Math.abs(this.mLastRolledOverObject.getBody().GetPosition().y - this.mMousePositionYB2))) / 2;
                  _loc2_ *= 100 * LevelCamera.smLevelScale * _loc3_;
                  if(this.mMousePositionXB2 < this.mLastRolledOverObject.getBody().GetPosition().x)
                  {
                     this.mLastRolledOverObject.rotateSmooth(_loc2_);
                  }
                  else
                  {
                     this.mLastRolledOverObject.rotateSmooth(-_loc2_);
                  }
                  this.mSelectedObjectsDragX = this.mMousePositionXB2;
                  this.mSelectedObjectsDragY = this.mMousePositionYB2;
               }
            }
            else if(!this.mLastRolledOverObject2)
            {
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            if(this.mSelectedObjectsDrag)
            {
               if(!this.mSelectedObjectsDragAllowed)
               {
                  this.mSelectedObjectsDragTimer += param1;
                  this.mSelectedObjectsDragAllowed = this.canWeStartMovingSelectedObjects();
                  if(this.mSelectedObjectsDragAllowed)
                  {
                     this.createSavedLevels();
                  }
               }
               if(this.mSelectedObjectsDragAllowed)
               {
                  this.moveSelectedObjects();
               }
            }
            else if(this.mSelectedObjectsMultipleSelection)
            {
               this.updateMultipleSelectedObjects();
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE || this.mSelectedTool == SELECTED_TOOL_DELETE)
         {
            if(this.mSelectedObjectsMultipleSelection)
            {
               this.updateMultipleSelectedObjects();
            }
         }
         if(this.mPhysicsEnabled)
         {
            _loc6_ = this.mLevelMain.mLevelObjects.mObjects.length - 1;
            while(_loc6_ >= 0)
            {
               if((_loc7_ = this.mLevelMain.mLevelObjects.mObjects[_loc6_]) && (_loc7_.isPig() || _loc7_.isBlock() || _loc7_.isMiscBlock()))
               {
                  if(_loc7_.getBody().GetPosition().x < LevelCamera.EDITOR_BORDER_CASTLE_LEFT - 1 || _loc7_.getBody().GetPosition().x > LevelCamera.EDITOR_BORDER_CASTLE_RIGHT + this.mLevelMain.mLevelCamera.mLevelExtension * LevelCamera.EDITOR_BORDER_HORIZONTAL_RAISE + 1)
                  {
                     if(this.isAlreadySelected(_loc7_))
                     {
                        this.removeSelectedObjectFromList(this.isAlreadySelected(_loc7_));
                        this.mLevelMain.mLevelObjects.removeObject(_loc6_);
                     }
                  }
               }
               _loc6_--;
            }
         }
         this.executeActions();
      }
      
      public function updateMultipleSelectedObjects() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc6_:LevelObject = null;
         var _loc7_:LevelSlingshotObject = null;
         this.mSelectedObjectsMultipleSelectionSprite.graphics.clear();
         this.mSelectedObjectsMultipleSelectionSprite.graphics.lineStyle(1);
         this.mSelectedObjectsMultipleSelectionSprite.graphics.beginFill(65280,1);
         this.mSelectedObjectsMultipleSelectionSprite.graphics.drawRect(0,0,(this.mMousePositionXB2 - this.mSelectedObjectsDragX) / LevelMain.PIXEL_TO_B2_SCALE,(this.mMousePositionYB2 - this.mSelectedObjectsDragY) / LevelMain.PIXEL_TO_B2_SCALE);
         if(this.mSelectedObjectsDragY <= this.mMousePositionYB2)
         {
            _loc1_ = this.mSelectedObjectsDragY;
            _loc2_ = this.mMousePositionYB2;
         }
         else
         {
            _loc1_ = this.mMousePositionYB2;
            _loc2_ = this.mSelectedObjectsDragY;
         }
         if(this.mSelectedObjectsDragX <= this.mMousePositionXB2)
         {
            _loc3_ = this.mSelectedObjectsDragX;
            _loc4_ = this.mMousePositionXB2;
         }
         else
         {
            _loc3_ = this.mMousePositionXB2;
            _loc4_ = this.mSelectedObjectsDragX;
         }
         var _loc5_:int = 0;
         while(_loc5_ < this.mLevelMain.mLevelObjects.mObjects.length)
         {
            if((_loc6_ = this.mLevelMain.mLevelObjects.mObjects[_loc5_]) && !_loc6_.isGround())
            {
               if(_loc6_.isInsideRectangle(_loc1_,_loc2_,_loc3_,_loc4_))
               {
                  this.newSelectedObject(_loc6_,true);
               }
               else
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc6_));
               }
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < this.mLevelMain.mLevelSlingshot.mBirds.length)
         {
            if(_loc7_ = this.mLevelMain.mLevelSlingshot.mBirds[_loc5_])
            {
               if(_loc7_.isInsideRectangle(_loc1_,_loc2_,_loc3_,_loc4_))
               {
                  this.newSelectedObject(_loc7_,true);
               }
               else
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc7_));
               }
            }
            _loc5_++;
         }
         if(this.mLevelMain.mLevelSlingshot.isInsideRectangle(_loc1_,_loc2_,_loc3_,_loc4_))
         {
            this.newSelectedObject(this.mLevelMain.mLevelSlingshot,true);
         }
         else
         {
            this.removeSelectedObjectFromList(this.isAlreadySelected(this.mLevelMain.mLevelSlingshot));
         }
      }
      
      public function addAction(param1:int, param2:Number, param3:Number, param4:String) : void
      {
         this.mActionBuffer[this.mActionBuffer.length] = new Array(param1,param2,param3,param4);
      }
      
      public function executeActions() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:LevelObject = null;
         var _loc5_:int = 0;
         while(this.mActionBuffer.length > 0)
         {
            _loc1_ = this.mActionBuffer[0] as Array;
            if(_loc1_[0] == ACTION_ADD_ITEM)
            {
               if(this.mCopiedObjects)
               {
                  this.pasteSelectedObjectsIntoLevel();
               }
               else
               {
                  this.createSavedLevels();
                  if((_loc1_[3] as String).indexOf("BIRD_") >= 0)
                  {
                     if(this.mLevelMain.mLevelSlingshot.mBirds.length < this.mLevelMain.mLevelSlingshot.getMaxBirdCount())
                     {
                        this.mLevelMain.mLevelSlingshot.addNewBirdToEndOfList(_loc1_[3],_loc1_[1],_loc1_[2]);
                     }
                     else
                     {
                        Log.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
                        AngryBirdsSocial.smLevelMain.addFloatingText("Too many birds!",AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 - 3,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
                     }
                  }
                  else if(this.mLevelMain.mLevelCamera.isCoordinateInBorder(_loc1_[1],_loc1_[2]))
                  {
                     if(this.calculateBlockCount() < this.getMaxBlockCount())
                     {
                        _loc2_ = _loc1_[1];
                        _loc3_ = _loc1_[2];
                        _loc2_ = roundUpCoordinate(_loc2_,LevelItems.isItemStatic(_loc1_[3]));
                        _loc3_ = roundUpCoordinate(_loc3_,LevelItems.isItemStatic(_loc1_[3]));
                        this.mLevelMain.mLevelObjects.addObject(_loc1_[3],_loc2_,_loc3_);
                     }
                     else
                     {
                        Log.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Object Limit");
                        AngryBirdsSocial.smLevelMain.addFloatingText("Too many items!",AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 - 3,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
                     }
                  }
               }
            }
            else if(_loc1_[0] == ACTION_ROTATE_ITEM)
            {
               if((_loc4_ = this.mLevelMain.mLevelObjects.getObjectFromPoint(_loc1_[1],_loc1_[2])) && !_loc4_.isGround())
               {
                  _loc4_.rotate(45);
               }
            }
            else if(_loc1_[0] == ACTION_DELETE_ITEM)
            {
               if((_loc5_ = this.mLevelMain.mLevelObjects.getObjectIndexFromPoint(_loc1_[1],_loc1_[2])) > 0)
               {
                  this.mLevelMain.mLevelObjects.removeObject(_loc5_,false);
               }
               else if((_loc5_ = this.mLevelMain.mLevelSlingshot.getObjectIndexFromPoint(_loc1_[1],_loc1_[2])) >= 0)
               {
                  this.mLevelMain.mLevelSlingshot.removeObject(_loc5_);
               }
            }
            else if(_loc1_[0] == ACTION_UNDO)
            {
               this.loadLastSavedLevel();
            }
            else if(_loc1_[0] == ACTION_DELETE_ALL)
            {
               this.createSavedLevels();
               this.mLevelMain.mLevelObjects.removeAllTheObjects();
               this.mLevelMain.mLevelSlingshot.removeAllTheObjects();
            }
            else if(_loc1_[0] == ACTION_SELECTED_COPY)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT)
               {
                  this.copySelectedObjectsIntoCopiedObjectsList();
               }
            }
            else if(_loc1_[0] == ACTION_SELECTED_PASTE)
            {
               if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM)
               {
                  this.pasteSelectedObjectsIntoLevel();
               }
            }
            else if(_loc1_[0] == ACTION_SELECTED_DELETE)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_DELETE)
               {
                  this.deleteSelectedObjectsFromLevel();
               }
            }
            else if(_loc1_[0] == ACTION_SELECTED_ROTATE)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE)
               {
                  this.rotateSelectedItems();
               }
            }
            else if(_loc1_[0] == ACTION_SELECTED_ROTATE_NEW)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE)
               {
                  this.rotateSelectedItemsNew();
               }
            }
            else if(_loc1_[0] == ACTION_SELECTED_MOVE_DOWN)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT)
               {
                  if(!this.mSelectedObjectsDrag && this.mSelectedObjects.length > 0)
                  {
                     if(this.mSaveObjectsBeforeKeyMovements)
                     {
                        this.createSavedLevels();
                        this.mSaveObjectsBeforeKeyMovements = false;
                     }
                     this.moveSelectedObjects(0,SELECT_OBJECTS_MOVEMENT_WITH_KEYS);
                  }
               }
            }
            else if(_loc1_[0] == ACTION_SELECTED_MOVE_UP)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT)
               {
                  if(!this.mSelectedObjectsDrag && this.mSelectedObjects.length > 0)
                  {
                     if(this.mSaveObjectsBeforeKeyMovements)
                     {
                        this.createSavedLevels();
                        this.mSaveObjectsBeforeKeyMovements = false;
                     }
                     this.moveSelectedObjects(0,-SELECT_OBJECTS_MOVEMENT_WITH_KEYS);
                  }
               }
            }
            else if(_loc1_[0] == ACTION_SELECTED_MOVE_LEFT)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT)
               {
                  if(!this.mSelectedObjectsDrag && this.mSelectedObjects.length > 0)
                  {
                     if(this.mSaveObjectsBeforeKeyMovements)
                     {
                        this.createSavedLevels();
                        this.mSaveObjectsBeforeKeyMovements = false;
                     }
                     this.moveSelectedObjects(-SELECT_OBJECTS_MOVEMENT_WITH_KEYS,0);
                  }
               }
            }
            else if(_loc1_[0] == ACTION_SELECTED_MOVE_RIGHT)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT)
               {
                  if(!this.mSelectedObjectsDrag && this.mSelectedObjects.length > 0)
                  {
                     if(this.mSaveObjectsBeforeKeyMovements)
                     {
                        this.createSavedLevels();
                        this.mSaveObjectsBeforeKeyMovements = false;
                     }
                     this.moveSelectedObjects(SELECT_OBJECTS_MOVEMENT_WITH_KEYS,0);
                  }
               }
            }
            else if(_loc1_[0] == ACTION_SWITCH_BACKGROUND)
            {
               this.mLevelMain.mLevelBackground.resetLevelBackground(_loc1_[3]);
            }
            else if(_loc1_[0] == ACTION_CLEAR_BOX2D_FORCES)
            {
               this.mLevelMain.mLevelEngine.mWorld.ClearForces();
            }
            else if(_loc1_[0] == ACTION_SET_TOOL_SELECT)
            {
               this.setSelectedTool(SELECTED_TOOL_SELECT);
            }
            this.mActionBuffer.splice(0,1);
            _loc1_ = null;
         }
      }
      
      public function copySelectedObjectsIntoCopiedObjectsList() : void
      {
         var _loc6_:Object = null;
         var _loc1_:Array = new Array();
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc7_:int = 0;
         while(_loc7_ < this.mSelectedObjects.length)
         {
            if((_loc6_ = this.mSelectedObjects[_loc7_]) is LevelObject)
            {
               if(_loc7_ == 0 || (_loc6_ as LevelObject).getBody().GetPosition().x < _loc4_)
               {
                  _loc4_ = (_loc6_ as LevelObject).getBody().GetPosition().x;
               }
               if(_loc7_ == 0 || (_loc6_ as LevelObject).getBody().GetPosition().x > _loc5_)
               {
                  _loc5_ = (_loc6_ as LevelObject).getBody().GetPosition().x;
               }
               if(_loc7_ == 0 || (_loc6_ as LevelObject).getBody().GetPosition().y < _loc3_)
               {
                  _loc3_ = (_loc6_ as LevelObject).getBody().GetPosition().y;
               }
               if(_loc7_ == 0 || (_loc6_ as LevelObject).getBody().GetPosition().y > _loc2_)
               {
                  _loc2_ = (_loc6_ as LevelObject).getBody().GetPosition().y;
               }
            }
            else if(_loc6_ is LevelSlingshotObject)
            {
               if(_loc7_ == 0 || (_loc6_ as LevelSlingshotObject).mX < _loc4_)
               {
                  _loc4_ = (_loc6_ as LevelSlingshotObject).mX;
               }
               if(_loc7_ == 0 || (_loc6_ as LevelSlingshotObject).mX > _loc5_)
               {
                  _loc5_ = (_loc6_ as LevelSlingshotObject).mX;
               }
               if(_loc7_ == 0 || (_loc6_ as LevelSlingshotObject).mY < _loc3_)
               {
                  _loc3_ = (_loc6_ as LevelSlingshotObject).mY;
               }
               if(_loc7_ == 0 || (_loc6_ as LevelSlingshotObject).mY > _loc2_)
               {
                  _loc2_ = (_loc6_ as LevelSlingshotObject).mY;
               }
            }
            _loc7_++;
         }
         var _loc8_:Number = (_loc4_ + _loc5_) / 2;
         var _loc9_:Number = (_loc3_ + _loc2_) / 2;
         _loc7_ = 0;
         while(_loc7_ < this.mSelectedObjects.length)
         {
            if((_loc6_ = this.mSelectedObjects[_loc7_]) is LevelObject)
            {
               _loc1_[_loc1_.length] = new Array(true,(_loc6_ as LevelObject).mObjectName,(_loc6_ as LevelObject).getBody().GetPosition().x - _loc8_,(_loc6_ as LevelObject).getBody().GetPosition().y - _loc9_,(_loc6_ as LevelObject).getAngle());
            }
            else if(_loc6_ is LevelSlingshotObject)
            {
               _loc1_[_loc1_.length] = new Array(false,(_loc6_ as LevelSlingshotObject).mName,(_loc6_ as LevelSlingshotObject).mX - _loc8_,(_loc6_ as LevelSlingshotObject).mY - _loc9_,0);
            }
            else if(_loc6_ is LevelSlingshot)
            {
            }
            _loc7_++;
         }
         this.setSelectedTool(SELECTED_TOOL_ADD_ITEM);
         this.mCopiedObjects = _loc1_;
         this.createMaterialOnMouse();
      }
      
      public function pasteSelectedObjectsIntoLevel() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.createSavedLevels();
         var _loc1_:int = 0;
         while(_loc1_ < this.mCopiedObjects.length)
         {
            if(this.mCopiedObjects[_loc1_][0] as Boolean)
            {
               if(this.calculateBlockCount() < this.getMaxBlockCount())
               {
                  _loc2_ = this.mMousePositionXB2 + this.mCopiedObjects[_loc1_][2];
                  _loc3_ = this.mMousePositionYB2 + this.mCopiedObjects[_loc1_][3];
                  _loc2_ = roundUpCoordinate(_loc2_,LevelItems.isItemStatic(this.mCopiedObjects[_loc1_][1]));
                  _loc3_ = roundUpCoordinate(_loc3_,LevelItems.isItemStatic(this.mCopiedObjects[_loc1_][1]));
                  this.mLevelMain.mLevelObjects.addObject(this.mCopiedObjects[_loc1_][1],_loc2_,_loc3_,this.mCopiedObjects[_loc1_][4]);
               }
               else
               {
                  Log.log("LevelEditor::pasteSelectedObjectsIntoLevel() -> Reached Object Limit");
                  AngryBirdsSocial.smLevelMain.addFloatingText("Too many items!",AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 - 3,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
               }
            }
            else if(this.mLevelMain.mLevelSlingshot.mBirds.length < this.mLevelMain.mLevelSlingshot.getMaxBirdCount())
            {
               this.mLevelMain.mLevelSlingshot.addNewBirdToEndOfList(this.mCopiedObjects[_loc1_][1],this.mCopiedObjects[_loc1_][2],this.mCopiedObjects[_loc1_][3]);
            }
            else
            {
               Log.log("LevelEditor::pasteSelectedObjectsIntoLevel() -> Reached Bird Limit");
               AngryBirdsSocial.smLevelMain.addFloatingText("Too many birds!",AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 - 3,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
            }
            _loc1_++;
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         x = -param1;
         y = -param2;
      }
      
      public function clear() : void
      {
         this.mLevelMain.removeChild(this);
         this.clearMaterialOnMouse();
         this.mSelectedObjectsMultipleSelectionSprite.graphics.clear();
         removeChild(this.mSelectedObjectsMultipleSelectionSprite);
         this.mSelectedObjectsMultipleSelectionSprite = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function catagorySelected(param1:String) : void
      {
         if(this.mSelectedTool != -1)
         {
            this.setSelectedTool(SELECTED_TOOL_SELECT);
            MouseCursorController.cursorHide();
         }
         this.clearMaterialOnMouse();
      }
      
      public function materialSelected(param1:String) : void
      {
         this.mSelectedMaterialName = param1;
         this.setSelectedTool(SELECTED_TOOL_ADD_ITEM);
         this.createMaterialOnMouse();
      }
      
      private function getIndexFromRepeaterName(param1:String) : Number
      {
         var _loc2_:Array = null;
         _loc2_ = param1.split("_");
         return Number(_loc2_[1]);
      }
      
      public function setSelectedTool(param1:int) : void
      {
         if(this.mSelectedTool == SELECTED_TOOL_PLAY)
         {
            this.mLevelMain.setEditorMode(true,true);
            this.loadLastSavedLevel();
            if(this.mPhysicsEnabled != this.mPhysicsEnabledInEditorMode)
            {
               this.togglePhysics();
            }
         }
         var _loc2_:Boolean = true;
         if((this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE || this.mSelectedTool == SELECTED_TOOL_DELETE) && (param1 == SELECTED_TOOL_SELECT || param1 == SELECTED_TOOL_ROTATE || param1 == SELECTED_TOOL_DELETE))
         {
            _loc2_ = false;
         }
         this.setSelectedObjectsMultipleSelect(false);
         this.mCTRLpressed = false;
         this.mSHIFTpressed = false;
         this.mSelectedTool = param1;
         this.setLastRollOverObject(null,false);
         this.setLastRollOverObject2(null,false);
         if(_loc2_)
         {
            this.newSelectedObject(null);
         }
         this.clearMaterialOnMouse();
         if(this.mSelectedTool == SELECTED_TOOL_PLAY)
         {
            this.mLevelMain.setEditorMode(false,true);
            this.mPhysicsEnabledInEditorMode = this.mPhysicsEnabled;
            this.createSavedLevels();
            this.loadLastSavedLevel(false);
            if(!this.mPhysicsEnabled)
            {
               this.togglePhysics(false);
            }
            MouseCursorController.setCursor("Cursor_Hand");
            this.updateSelectedToolButtonOnUIView("");
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE || this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD2 || this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD1)
         {
            MouseCursorController.setCursor("Cursor_Rotate");
            this.updateSelectedToolButtonOnUIView("Button_ToolRotate");
         }
         else if(this.mSelectedTool == SELECTED_TOOL_DELETE_OLD || this.mSelectedTool == SELECTED_TOOL_DELETE)
         {
            MouseCursorController.setCursor("Cursor_Delete");
            this.updateSelectedToolButtonOnUIView("Button_ToolDelete");
         }
         else if(this.mSelectedTool == SELECTED_TOOL_CAMERA)
         {
            MouseCursorController.setCursor("Cursor_Hand");
            this.updateSelectedToolButtonOnUIView("Button_Hand");
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM)
         {
            MouseCursorController.setCursor("Cursor_NewItem");
            this.updateSelectedToolButtonOnUIView("");
         }
         else if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            MouseCursorController.setCursor("Cursor_Arrow");
            this.updateSelectedToolButtonOnUIView("Button_ToolSelect");
         }
         else if(this.mSelectedTool == SELECTED_TOOL_DEFINE_CAMERA)
         {
            MouseCursorController.setCursor("Cursor_Hand");
            this.updateSelectedToolButtonOnUIView("");
         }
         else
         {
            MouseCursorController.setCursor("Cursor_Hand_Arrow");
            this.updateSelectedToolButtonOnUIView("");
         }
      }
      
      public function getCursorForTool(param1:int) : String
      {
         switch(param1)
         {
            case SELECTED_TOOL_PLAY:
            case SELECTED_TOOL_CAMERA:
            case SELECTED_TOOL_DEFINE_CAMERA:
               return "Cursor_Hand";
            case SELECTED_TOOL_ROTATE_OLD2:
            case SELECTED_TOOL_ROTATE_OLD1:
            case SELECTED_TOOL_ROTATE:
               return "Cursor_Rotate";
            case SELECTED_TOOL_DELETE_OLD:
            case SELECTED_TOOL_DELETE:
               return "Cursor_Delete";
            case SELECTED_TOOL_SELECT:
               return "Cursor_Arrow";
            case SELECTED_TOOL_ADD_ITEM:
               return "Cursor_NewItem";
            case SELECTED_TOOL_ADD_ITEM:
               return "Cursor_NewItem";
            default:
               return "Cursor_Hand_Arrow";
         }
      }
      
      public function updateSelectedToolButtonOnUIView(param1:String) : void
      {
         ((this.mLevelMain.parent as StateLevelEditor).mUIView as ViewLevelEditor).mButtonGroupRightPanel.buttonSelected(param1);
      }
      
      public function togglePhysics(param1:Boolean = true) : void
      {
         this.mPhysicsEnabled = !this.mPhysicsEnabled;
         if(!this.mPhysicsEnabled)
         {
            this.addAction(ACTION_CLEAR_BOX2D_FORCES,0,0,"");
         }
         if(this.mPhysicsEnabled && param1)
         {
            this.createSavedLevels();
         }
      }
      
      public function createMaterialOnMouse() : void
      {
         var _loc1_:Class = null;
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         if(this.mCopiedObjects)
         {
            this.mDraggingMaterialClip = new MovieClip();
            _loc2_ = 0;
            while(_loc2_ < this.mCopiedObjects.length)
            {
               _loc1_ = AssetCache.getAssetFromCache(this.mCopiedObjects[_loc2_][1]);
               _loc3_ = new _loc1_();
               _loc3_ = ViewLevelEditor.getThumbnailOutOfLevelObjectRenderer(_loc3_);
               _loc3_.x = this.mCopiedObjects[_loc2_][2] / LevelMain.PIXEL_TO_B2_SCALE;
               _loc3_.y = this.mCopiedObjects[_loc2_][3] / LevelMain.PIXEL_TO_B2_SCALE;
               _loc3_.rotation = 360 - this.mCopiedObjects[_loc2_][4];
               this.mDraggingMaterialClip.addChild(_loc3_);
               _loc2_++;
            }
            addChild(this.mDraggingMaterialClip);
            this.mDraggingMaterialClip.x = this.mMousePositionXB2 / LevelMain.PIXEL_TO_B2_SCALE;
            this.mDraggingMaterialClip.y = this.mMousePositionYB2 / LevelMain.PIXEL_TO_B2_SCALE;
         }
         else if(this.mSelectedMaterialName != null && this.mSelectedMaterialName.length > 0)
         {
            _loc1_ = AssetCache.getAssetFromCache(this.mSelectedMaterialName);
            this.mDraggingMaterialClip = new _loc1_();
            this.mDraggingMaterialClip = ViewLevelEditor.getThumbnailOutOfLevelObjectRenderer(this.mDraggingMaterialClip);
            this.mDraggingMaterialClip.mouseEnabled = false;
            this.mDraggingMaterialClip.visible = false;
            addChild(this.mDraggingMaterialClip);
         }
      }
      
      public function clearMaterialOnMouse() : void
      {
         if(this.mDraggingMaterialClip != null)
         {
            if(this.mLevelMain.contains(this.mDraggingMaterialClip))
            {
               removeChild(this.mDraggingMaterialClip);
            }
            this.mDraggingMaterialClip = null;
         }
         this.mCopiedObjects = null;
      }
      
      public function mouseMove(param1:Point) : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc3_:LevelSlingshotObject = null;
         this.mMousePositionXB2 = param1.x;
         this.mMousePositionYB2 = param1.y;
         if(this.mSelectedTool == SELECTED_TOOL_PLAY)
         {
            return false;
         }
         if(this.mSelectedTool == SELECTED_TOOL_CAMERA)
         {
            return false;
         }
         if(this.mSelectedTool != SELECTED_TOOL_ROTATE_OLD2)
         {
            if(this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD1 || this.mSelectedTool == SELECTED_TOOL_DELETE_OLD)
            {
               if(!(!this.mLastRolledOverObject && !this.mLastRolledOverObject2))
               {
                  if(this.mLastRolledOverObject)
                  {
                     _loc2_ = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
                     if(_loc2_ != this.mLastRolledOverObject)
                     {
                        this.setLastRollOverObject(null,false);
                     }
                  }
                  else if(this.mLastRolledOverObject2)
                  {
                     _loc3_ = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
                     if(_loc3_ != this.mLastRolledOverObject2)
                     {
                        this.setLastRollOverObject2(null,false);
                     }
                  }
               }
            }
            else if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM && this.mDraggingMaterialClip)
            {
               this.mDraggingMaterialClip.x = this.mMousePositionXB2 / LevelMain.PIXEL_TO_B2_SCALE;
               this.mDraggingMaterialClip.y = this.mMousePositionYB2 / LevelMain.PIXEL_TO_B2_SCALE;
            }
            else if(this.mSelectedTool != SELECTED_TOOL_SELECT)
            {
               if(this.mSelectedTool != SELECTED_TOOL_ROTATE)
               {
                  if(this.mSelectedTool == SELECTED_TOOL_DELETE)
                  {
                  }
               }
            }
         }
         return true;
      }
      
      public function mouseDown(param1:Point) : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:LevelSlingshot = null;
         this.mMousePositionXB2 = param1.x;
         this.mMousePositionYB2 = param1.y;
         if(this.mSelectedTool == SELECTED_TOOL_PLAY)
         {
            return false;
         }
         if(this.mSelectedTool == SELECTED_TOOL_CAMERA)
         {
            return false;
         }
         if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            _loc2_ = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            _loc3_ = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            _loc4_ = this.mLevelMain.mLevelSlingshot.isSlingshotIntersectWithThisPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(_loc3_)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc3_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc3_));
               }
               else
               {
                  this.newSelectedObject(_loc3_,this.mCTRLpressed);
               }
            }
            else if(_loc4_)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc4_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc4_));
               }
               else
               {
                  this.newSelectedObject(_loc4_,this.mCTRLpressed);
               }
            }
            else if(_loc2_ && !_loc2_.isGround())
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc2_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc2_));
               }
               else
               {
                  this.newSelectedObject(_loc2_,this.mCTRLpressed);
               }
            }
            else
            {
               this.newSelectedObject(null);
               this.setSelectedObjectsMultipleSelect(true);
            }
            if(LevelMain.DRAGGING_OVERLAYS_ENABLED && (_loc2_ || _loc3_ || _loc4_))
            {
               this.mLevelMain.createDraggingOverlay();
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE)
         {
            _loc2_ = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            _loc3_ = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            _loc4_ = this.mLevelMain.mLevelSlingshot.isSlingshotIntersectWithThisPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(_loc3_)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc3_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc3_));
               }
               else
               {
                  this.newSelectedObject(_loc3_,this.mCTRLpressed);
               }
            }
            else if(_loc4_)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc4_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc4_));
               }
               else
               {
                  this.newSelectedObject(_loc4_,this.mCTRLpressed);
               }
            }
            else if(_loc2_ && !_loc2_.isGround())
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc2_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc2_));
               }
               else
               {
                  this.newSelectedObject(_loc2_,this.mCTRLpressed);
               }
            }
            else
            {
               this.newSelectedObject(null);
               this.setSelectedObjectsMultipleSelect(true);
            }
            if(LevelMain.DRAGGING_OVERLAYS_ENABLED && (_loc2_ || _loc3_ || _loc4_))
            {
               this.mLevelMain.createDraggingOverlay();
            }
            if(this.mSelectedObjects.length > 0)
            {
               this.addAction(ACTION_SELECTED_ROTATE_NEW,0,0,"");
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_DELETE)
         {
            _loc2_ = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            _loc3_ = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            _loc4_ = this.mLevelMain.mLevelSlingshot.isSlingshotIntersectWithThisPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(_loc3_)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc3_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc3_));
               }
               else
               {
                  this.newSelectedObject(_loc3_,this.mCTRLpressed);
               }
            }
            else if(_loc4_)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc4_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc4_));
               }
               else
               {
                  this.newSelectedObject(_loc4_,this.mCTRLpressed);
               }
            }
            else if(_loc2_ && !_loc2_.isGround())
            {
               if(this.mCTRLpressed && this.isAlreadySelected(_loc2_) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(_loc2_));
               }
               else
               {
                  this.newSelectedObject(_loc2_,this.mCTRLpressed);
               }
            }
            else
            {
               this.newSelectedObject(null);
               this.setSelectedObjectsMultipleSelect(true);
            }
            if(LevelMain.DRAGGING_OVERLAYS_ENABLED && (_loc2_ || _loc3_ || _loc4_))
            {
               this.mLevelMain.createDraggingOverlay();
            }
            if(this.mSelectedObjects.length > 0)
            {
               this.addAction(ACTION_SELECTED_DELETE,0,0,"");
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD2 || this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD1 || this.mSelectedTool == SELECTED_TOOL_DELETE_OLD)
         {
            _loc2_ = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(_loc2_ && !_loc2_.isGround())
            {
               this.setLastRollOverObject(_loc2_,true);
            }
            else
            {
               _loc3_ = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
               if(_loc3_)
               {
                  this.setLastRollOverObject2(_loc3_,true);
               }
               else
               {
                  this.setLastRollOverObject(null,true);
               }
            }
            this.mSelectedObjectsDragX = this.mMousePositionXB2;
            this.mSelectedObjectsDragY = this.mMousePositionYB2;
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM && this.mDraggingMaterialClip)
         {
            this.mDraggingMaterialClip.x = this.mMousePositionXB2 / LevelMain.PIXEL_TO_B2_SCALE;
            this.mDraggingMaterialClip.y = this.mMousePositionYB2 / LevelMain.PIXEL_TO_B2_SCALE;
         }
         else if(this.mSelectedTool == SELECTED_TOOL_DEFINE_CAMERA)
         {
            return false;
         }
         return true;
      }
      
      public function mouseUp(param1:Point) : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc3_:LevelSlingshotObject = null;
         this.mMousePositionXB2 = param1.x;
         this.mMousePositionYB2 = param1.y;
         if(this.mSelectedTool == SELECTED_TOOL_PLAY)
         {
            return false;
         }
         if(this.mSelectedTool == SELECTED_TOOL_CAMERA)
         {
            return false;
         }
         if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            this.mLevelMain.clearDraggingOverlay();
            this.setSelectedObjectsDrag(false);
            this.setSelectedObjectsMultipleSelect(false);
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE)
         {
            this.mLevelMain.clearDraggingOverlay();
            this.setSelectedObjectsDrag(false);
            this.setSelectedObjectsMultipleSelect(false);
         }
         else if(this.mSelectedTool == SELECTED_TOOL_DELETE)
         {
            this.mLevelMain.clearDraggingOverlay();
            this.setSelectedObjectsDrag(false);
            this.setSelectedObjectsMultipleSelect(false);
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD2 || this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD1)
         {
            _loc2_ = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(_loc2_ && _loc2_ == this.mLastRolledOverObject)
            {
               if(this.mLastRolledOverObjectTimer <= ROTATE_ACTION_THRESHHOLD_TIME)
               {
                  this.addAction(ACTION_ROTATE_ITEM,this.mMousePositionXB2,this.mMousePositionYB2,"");
               }
            }
            this.setLastRollOverObject(null,true);
         }
         else if(this.mSelectedTool == SELECTED_TOOL_DELETE_OLD)
         {
            _loc2_ = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(_loc2_ && _loc2_ == this.mLastRolledOverObject)
            {
               this.addAction(ACTION_DELETE_ITEM,this.mMousePositionXB2,this.mMousePositionYB2,"");
            }
            else
            {
               _loc3_ = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
               if(_loc3_)
               {
                  this.addAction(ACTION_DELETE_ITEM,this.mMousePositionXB2,this.mMousePositionYB2,"");
               }
            }
            this.setLastRollOverObject(null,true);
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM && this.mDraggingMaterialClip)
         {
            this.mDraggingMaterialClip.x = this.mMousePositionXB2 / LevelMain.PIXEL_TO_B2_SCALE;
            this.mDraggingMaterialClip.y = this.mMousePositionYB2 / LevelMain.PIXEL_TO_B2_SCALE;
         }
         else if(this.mSelectedTool == SELECTED_TOOL_DEFINE_CAMERA)
         {
            return false;
         }
         return true;
      }
      
      public function mouseClick(param1:Point) : Boolean
      {
         this.mMousePositionXB2 = param1.x;
         this.mMousePositionYB2 = param1.y;
         if(this.mSelectedTool == SELECTED_TOOL_PLAY)
         {
            return false;
         }
         if(this.mSelectedTool == SELECTED_TOOL_CAMERA)
         {
            return false;
         }
         if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM && this.mDraggingMaterialClip)
         {
            this.mDraggingMaterialClip.x = this.mMousePositionXB2 / LevelMain.PIXEL_TO_B2_SCALE;
            this.mDraggingMaterialClip.y = this.mMousePositionYB2 / LevelMain.PIXEL_TO_B2_SCALE;
            this.addAction(ACTION_ADD_ITEM,this.mMousePositionXB2,this.mMousePositionYB2,this.mSelectedMaterialName);
         }
         return true;
      }
      
      public function limitObjects() : Boolean
      {
         if(this.calculateBlockCount() >= this.getMaxBlockCount())
         {
            Log.log("Limit of objects " + this.getMaxBlockCount() + " is hit.");
            return true;
         }
         return false;
      }
      
      public function mouseRollOut() : void
      {
         if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM && this.mDraggingMaterialClip)
         {
            this.mDraggingMaterialClip.visible = false;
         }
         else if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            if(this.mSelectedObjectsDrag)
            {
               this.setSelectedObjectsDrag(false);
            }
            if(this.mSelectedObjectsMultipleSelection)
            {
               this.setSelectedObjectsMultipleSelect(false);
            }
            this.mLevelMain.clearDraggingOverlay();
         }
      }
      
      public function mouseRollOver() : void
      {
         if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM && this.mDraggingMaterialClip)
         {
            this.mDraggingMaterialClip.visible = true;
         }
      }
      
      public function setLastRollOverObject(param1:LevelObject, param2:Boolean = false) : void
      {
         if(this.mLastRolledOverObject)
         {
            this.mLastRolledOverObject.mRenderer.removeGlowfilter();
            if(this.mLastRolledOverObject.mFixture)
            {
               this.roundUpGivenObject(this.mLastRolledOverObject);
               this.mLastRolledOverObject.getBody().SetAwake(true);
            }
            this.mLastRolledOverObject = null;
         }
         this.mLastRolledOverObject = param1;
         if(this.mLastRolledOverObject)
         {
            this.mLastRolledOverObject.mRenderer.addGlowFilter(65280,8,8);
            this.createSavedLevels();
         }
         this.mLastRolledOverObjectTimer = 0;
         if(param2)
         {
            this.setLastRollOverObject2(null,false);
         }
      }
      
      public function setLastRollOverObject2(param1:LevelSlingshotObject, param2:Boolean = false) : void
      {
         if(this.mLastRolledOverObject2)
         {
            this.mLastRolledOverObject2.clearGlowFilter();
            this.mLastRolledOverObject2.mGroundCheckTimer = 100;
            this.mLastRolledOverObject2 = null;
         }
         this.mLastRolledOverObject2 = param1;
         if(this.mLastRolledOverObject2)
         {
            this.mLastRolledOverObject2.addGlowFilter(8,65280);
            this.createSavedLevels();
         }
         this.mLastRolledOverObjectTimer = 0;
         if(param2)
         {
            this.setLastRollOverObject(null,false);
         }
      }
      
      public function newSelectedObject(param1:Object, param2:Boolean = false) : void
      {
         this.mSaveObjectsBeforeKeyMovements = true;
         if(param1 != null && this.isAlreadySelected(param1) >= 0)
         {
            this.setSelectedObjectsDrag(true);
            return;
         }
         if(!param2)
         {
            while(this.mSelectedObjects.length > 0)
            {
               this.removeSelectedObjectFromList(0);
            }
         }
         if(param1 is LevelObject)
         {
            (param1 as LevelObject).mRenderer.addGlowFilter(65280,8,8);
            this.mSelectedObjects[this.mSelectedObjects.length] = param1 as LevelObject;
            this.setSelectedObjectsDrag(true);
         }
         else if(param1 is LevelSlingshotObject)
         {
            (param1 as LevelSlingshotObject).addGlowFilter(8,65280);
            this.mSelectedObjects[this.mSelectedObjects.length] = param1 as LevelSlingshotObject;
            this.setSelectedObjectsDrag(true);
         }
         else if(param1 is LevelSlingshot)
         {
            (param1 as LevelSlingshot).addGlowFilter(8,65280);
            this.mSelectedObjects[this.mSelectedObjects.length] = param1 as LevelSlingshot;
            this.setSelectedObjectsDrag(true);
         }
         else
         {
            this.setSelectedObjectsDrag(false);
         }
         this.updateRotateAndDeleteButtons();
      }
      
      public function updateRotateAndDeleteButtons() : void
      {
         if(this.mSelectedObjects.length > 0)
         {
            ((this.mLevelMain.parent as StateLevelEditor).mUIView as ViewLevelEditor).switchRotateAndDeleteButtons(false);
         }
         else
         {
            ((this.mLevelMain.parent as StateLevelEditor).mUIView as ViewLevelEditor).switchRotateAndDeleteButtons(true);
         }
      }
      
      public function deleteSelectedObjectsFromLevel() : void
      {
         this.createSavedLevels();
         var _loc1_:int = 0;
         while(_loc1_ < this.mSelectedObjects.length)
         {
            if(this.mSelectedObjects[_loc1_] is LevelObject)
            {
               this.mLevelMain.mLevelObjects.removeObject(this.mLevelMain.mLevelObjects.getObjectIndex(this.mSelectedObjects[_loc1_] as LevelObject));
            }
            else if(this.mSelectedObjects[_loc1_] is LevelSlingshotObject)
            {
               this.mLevelMain.mLevelSlingshot.removeObject(this.mLevelMain.mLevelSlingshot.getObjectIndex(this.mSelectedObjects[_loc1_] as LevelSlingshotObject));
            }
            else if(this.mSelectedObjects[_loc1_] is LevelSlingshot)
            {
               this.mLevelMain.mLevelSlingshot.clearGlowFilter();
               this.mLevelMain.mLevelSlingshot.mGroundCheckTimer = 100;
            }
            this.mSelectedObjects[_loc1_] = null;
            _loc1_++;
         }
         this.newSelectedObject(null);
      }
      
      public function rotateSelectedItems() : void
      {
         this.createSavedLevels();
         var _loc1_:int = 0;
         while(_loc1_ < this.mSelectedObjects.length)
         {
            if(this.mSelectedObjects[_loc1_] is LevelObject)
            {
               (this.mSelectedObjects[_loc1_] as LevelObject).rotate(22.5,true);
            }
            else if(this.mSelectedObjects[_loc1_] is LevelSlingshotObject)
            {
            }
            _loc1_++;
         }
      }
      
      public function rotateSelectedItemsNew() : void
      {
         var _loc5_:b2Vec2 = null;
         this.createSavedLevels();
         var _loc1_:int = 0;
         var _loc2_:Point = new Point(0,0);
         var _loc3_:Point = new Point(0,0);
         _loc1_ = 0;
         while(_loc1_ < this.mSelectedObjects.length)
         {
            if(this.mSelectedObjects[_loc1_] is LevelObject && (this.mSelectedObjects[_loc1_] as LevelObject).mFixture != null)
            {
               _loc5_ = (this.mSelectedObjects[_loc1_] as LevelObject).getBody().GetPosition();
               if(_loc1_ == 0)
               {
                  _loc2_.x = _loc3_.x = _loc5_.x;
                  _loc2_.y = _loc3_.y = _loc5_.y;
               }
               else
               {
                  if(_loc5_.x < _loc2_.x)
                  {
                     _loc2_.x = _loc5_.x;
                  }
                  if(_loc5_.y < _loc2_.y)
                  {
                     _loc2_.y = _loc5_.y;
                  }
                  if(_loc5_.x > _loc3_.x)
                  {
                     _loc3_.x = _loc5_.x;
                  }
                  if(_loc5_.y > _loc3_.y)
                  {
                     _loc3_.y = _loc5_.y;
                  }
               }
            }
            _loc1_++;
         }
         var _loc4_:Point;
         (_loc4_ = new Point()).x = _loc2_.x + (_loc3_.x - _loc2_.x) / 2;
         _loc4_.y = _loc2_.y + (_loc3_.y - _loc2_.y) / 2;
         _loc1_ = 0;
         while(_loc1_ < this.mSelectedObjects.length)
         {
            if(this.mSelectedObjects[_loc1_] is LevelObject && (this.mSelectedObjects[_loc1_] as LevelObject).mFixture != null)
            {
               (this.mSelectedObjects[_loc1_] as LevelObject).rotateAroundPivot(22.5,_loc4_);
            }
            else if(this.mSelectedObjects[_loc1_] is LevelSlingshotObject)
            {
            }
            _loc1_++;
         }
      }
      
      public function removeSelectedObjectFromList(param1:int) : void
      {
         var _loc2_:LevelObject = null;
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:LevelSlingshot = null;
         if(param1 < 0 || param1 >= this.mSelectedObjects.length)
         {
            return;
         }
         if(this.mSelectedObjects[param1] is LevelObject)
         {
            _loc2_ = this.mSelectedObjects[param1] as LevelObject;
            if(_loc2_)
            {
               _loc2_.mRenderer.removeGlowfilter();
               if(_loc2_.mFixture)
               {
                  this.roundUpGivenObject(_loc2_);
                  _loc2_.getBody().SetAwake(true);
               }
            }
            _loc2_ = null;
         }
         else if(this.mSelectedObjects[param1] is LevelSlingshotObject)
         {
            _loc3_ = this.mSelectedObjects[param1] as LevelSlingshotObject;
            if(_loc3_)
            {
               _loc3_.clearGlowFilter();
               _loc3_.mGroundCheckTimer = 100;
            }
            _loc3_ = null;
         }
         else if(this.mSelectedObjects[param1] is LevelSlingshot)
         {
            if(_loc4_ = this.mSelectedObjects[param1] as LevelSlingshot)
            {
               _loc4_.clearGlowFilter();
               _loc4_.mGroundCheckTimer = 100;
            }
            _loc4_ = null;
         }
         this.mSelectedObjects.splice(param1,1);
         this.updateRotateAndDeleteButtons();
      }
      
      public function canWeStartMovingSelectedObjects() : Boolean
      {
         if(this.mSelectedObjectsDragTimer >= 500)
         {
            if(this.mSelectedObjectsDragTimer > 1500)
            {
               return true;
            }
         }
         var _loc1_:Number = this.mMousePositionXB2 - this.mSelectedObjectsDragX;
         var _loc2_:Number = this.mMousePositionYB2 - this.mSelectedObjectsDragY;
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         if(_loc3_ > 0.25)
         {
            return true;
         }
         return false;
      }
      
      public function moveSelectedObjects(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc6_:int = 0;
         var _loc7_:LevelObject = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:LevelSlingshotObject = null;
         var _loc11_:LevelSlingshot = null;
         var _loc12_:* = false;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc3_:Boolean = true;
         if(param1 == 0 && param2 == 0 && this.mSelectedObjectsDrag)
         {
            param1 = this.mMousePositionXB2 - this.mSelectedObjectsDragX;
            param2 = this.mMousePositionYB2 - this.mSelectedObjectsDragY;
            _loc3_ = false;
         }
         var _loc4_:Boolean = false;
         if(true)
         {
            _loc6_ = 0;
            while(_loc6_ < this.mSelectedObjects.length)
            {
               if(this.mSelectedObjects[_loc6_] is LevelObject)
               {
                  if((_loc7_ = this.mSelectedObjects[_loc6_] as LevelObject) && _loc7_.mFixture)
                  {
                     _loc8_ = _loc7_.getBody().GetPosition().x + param1;
                     _loc9_ = _loc7_.getBody().GetPosition().y + param2;
                     if(!_loc7_.isTexture() && !this.mLevelMain.mLevelCamera.isCoordinateInBorder(_loc8_,_loc9_))
                     {
                        _loc4_ = true;
                        _loc8_ -= param1;
                        _loc9_ -= param2;
                     }
                     _loc7_.getBody().SetPosition(new b2Vec2(_loc8_,_loc9_));
                     _loc7_.getBody().SetAwake(false);
                     if(_loc3_)
                     {
                        this.roundUpGivenObject(_loc7_);
                     }
                  }
               }
               else if(this.mSelectedObjects[_loc6_] is LevelSlingshotObject)
               {
                  if(_loc10_ = this.mSelectedObjects[_loc6_] as LevelSlingshotObject)
                  {
                     _loc10_.setPosition(_loc10_.mX + param1,_loc10_.mY + param2);
                     if(!this.mLevelMain.mLevelCamera.isCoordinateInBorder(_loc10_.mX,_loc10_.mLegContactPoint))
                     {
                        _loc4_ = true;
                        _loc10_.setPosition(_loc10_.mX - param1,_loc10_.mY - param2);
                     }
                  }
               }
               else if(this.mSelectedObjects[_loc6_] is LevelSlingshot)
               {
                  if(_loc11_ = this.mSelectedObjects[_loc6_] as LevelSlingshot)
                  {
                     _loc12_ = param2 < 0;
                     _loc13_ = 0;
                     if(_loc12_)
                     {
                        _loc13_ = -5;
                     }
                     _loc11_.setPosition(_loc11_.mX + param1,_loc11_.mY + param2,true);
                     _loc14_ = 5 + 3 * this.mLevelMain.mLevelCamera.mLevelExtension;
                     if(!this.mLevelMain.mLevelCamera.isCoordinateInBorder(_loc11_.mX,_loc11_.mLegContactPoint + _loc13_) || !this.mLevelMain.mLevelCamera.isCoordinateInBorder(_loc11_.mX - _loc14_,_loc11_.mLegContactPoint + _loc13_) || !this.mLevelMain.mLevelCamera.isCoordinateInBorder(_loc11_.mX + _loc14_ / 2,_loc11_.mLegContactPoint + _loc13_))
                     {
                        _loc4_ = true;
                        _loc11_.setPosition(_loc11_.mX - param1,_loc11_.mY - param2,true);
                     }
                  }
               }
               _loc6_++;
            }
         }
         this.mSelectedObjectsDragX = this.mMousePositionXB2;
         this.mSelectedObjectsDragY = this.mMousePositionYB2;
         if(_loc4_)
         {
            this.setSelectedObjectsDrag(false);
         }
      }
      
      public function isAlreadySelected(param1:Object) : int
      {
         if(!param1)
         {
            return -1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mSelectedObjects.length)
         {
            if(param1 == this.mSelectedObjects[_loc2_])
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function createSavedLevels() : void
      {
         var _loc1_:Array = new Array(this.mLevelMain.mLevelObjects.getLevelDataInArrayFormat(),this.mLevelMain.mLevelSlingshot.getLevelDataInArrayFormat(),this.mLevelSaved,this.mLevelCompleted);
         this.mSavedLevels.splice(0,0,_loc1_);
         while(this.mSavedLevels.length > 10)
         {
            this.mSavedLevels.splice(10,1);
         }
         Log.log("SAVED LEVEL, buffer lenght = " + this.mSavedLevels.length);
         this.mLevelCompleted = false;
         this.mLevelSaved = false;
      }
      
      public function loadLastSavedLevel(param1:Boolean = true) : void
      {
         if(this.mSavedLevels.length > 0)
         {
            this.setLastRollOverObject(null);
            this.newSelectedObject(null);
            if(this.mPhysicsEnabled)
            {
               this.togglePhysics();
            }
            this.mLevelMain.mLevelObjects.loadLevelFromArrayFormat(this.mSavedLevels[0][0]);
            this.mLevelMain.mLevelSlingshot.loadLevelFromArrayFormat(this.mSavedLevels[0][1]);
            this.mLevelSaved = this.mSavedLevels[0][2];
            this.mLevelCompleted = this.mSavedLevels[0][3];
            if(param1)
            {
               this.mSavedLevels.splice(0,1);
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            if(param1.keyCode == Keyboard.CONTROL)
            {
               this.mCTRLpressed = true;
            }
            else if(param1.keyCode == Keyboard.DOWN)
            {
               this.addAction(ACTION_SELECTED_MOVE_DOWN,0,0,"");
            }
            else if(param1.keyCode == Keyboard.UP)
            {
               this.addAction(ACTION_SELECTED_MOVE_UP,0,0,"");
            }
            else if(param1.keyCode == Keyboard.LEFT)
            {
               this.addAction(ACTION_SELECTED_MOVE_LEFT,0,0,"");
            }
            else if(param1.keyCode == Keyboard.RIGHT)
            {
               this.addAction(ACTION_SELECTED_MOVE_RIGHT,0,0,"");
            }
         }
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            if(param1.keyCode == Keyboard.CONTROL)
            {
               this.mCTRLpressed = false;
            }
         }
         if(param1.keyCode == Keyboard.SHIFT)
         {
            this.mSHIFTpressed = false;
         }
         if(param1.keyCode == Keyboard.DELETE)
         {
            if((this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_DELETE) && this.mSelectedObjects.length > 0)
            {
               Log.log("DELETE SELECTED ACTION");
               this.addAction(ACTION_SELECTED_DELETE,0,0,"");
            }
         }
         else if(param1.keyCode == Keyboard.SPACE)
         {
            if(this.mSelectedTool == SELECTED_TOOL_SELECT)
            {
               this.setSelectedTool(SELECTED_TOOL_ROTATE);
            }
            else if(this.mSelectedTool == SELECTED_TOOL_ROTATE)
            {
               this.setSelectedTool(SELECTED_TOOL_DELETE);
            }
            else
            {
               this.setSelectedTool(SELECTED_TOOL_SELECT);
            }
         }
         else if(param1.keyCode == 67 && this.mSelectedTool == SELECTED_TOOL_SELECT && this.mSelectedObjects.length > 0)
         {
            Log.log("COPY ACTION");
            this.addAction(ACTION_SELECTED_COPY,0,0,"");
         }
         else if(param1.keyCode == 82 && (this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE) && this.mSelectedObjects.length > 0)
         {
            Log.log("ROTATE ACTION");
            this.addAction(ACTION_SELECTED_ROTATE,0,0,"");
         }
         else if(param1.keyCode == 86 && this.mSelectedTool == SELECTED_TOOL_ADD_ITEM && this.mCopiedObjects.length > 0)
         {
            Log.log("PASTE ACTION");
            this.addAction(ACTION_SELECTED_PASTE,0,0,"");
         }
         else if(param1.keyCode == 71)
         {
            Log.log("GRAVITY ACTION");
            if(this.mSelectedTool != SELECTED_TOOL_PLAY)
            {
               this.togglePhysics();
            }
         }
         else if(param1.keyCode == 66)
         {
            Log.log("SWITCH BACKGROUND");
            if(this.mSelectedTool != SELECTED_TOOL_PLAY)
            {
               this.addAction(ACTION_SWITCH_BACKGROUND,0,0,LevelThemeBackgrounds.getRandomBackgroundName());
            }
         }
         else if(param1.keyCode == 69)
         {
            ((this.mLevelMain.parent as StateLevelEditor).mUIView as ViewLevelEditor).toggleDeleteRotateToolStatus();
            ((this.mLevelMain.parent as StateLevelEditor).mUIView as ViewLevelEditor).switchRotateAndDeleteButtons(this.mSelectedObjects.length == 0);
         }
         else if(param1.keyCode == 90 || param1.keyCode == 85)
         {
            if(this.mSelectedTool != LevelEditor.SELECTED_TOOL_PLAY)
            {
               Log.log("UNDO ACTION");
               this.addAction(LevelEditor.ACTION_UNDO,0,0,"");
            }
         }
         else if(param1.keyCode == 77 && (this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE))
         {
            this.addAction(ACTION_SET_TOOL_SELECT,0,0,"");
         }
      }
      
      public function setSelectedObjectsDrag(param1:Boolean) : void
      {
         if(this.mSelectedObjectsMultipleSelection)
         {
            param1 = false;
         }
         if(this.mSelectedObjectsDrag != param1 || !param1)
         {
            this.mSelectedObjectsDragAllowed = false;
            this.mSelectedObjectsDragTimer = 0;
         }
         this.mSelectedObjectsDrag = param1;
         if(this.mSelectedObjectsDrag)
         {
            this.mSelectedObjectsDragX = this.mMousePositionXB2;
            this.mSelectedObjectsDragY = this.mMousePositionYB2;
         }
      }
      
      public function setSelectedObjectsMultipleSelect(param1:Boolean) : void
      {
         this.mSelectedObjectsMultipleSelection = param1;
         this.mSelectedObjectsMultipleSelectionSprite.visible = param1;
         this.mSelectedObjectsMultipleSelectionSprite.graphics.clear();
         if(this.mSelectedObjectsMultipleSelection)
         {
            this.mSelectedObjectsDragX = this.mMousePositionXB2;
            this.mSelectedObjectsDragY = this.mMousePositionYB2;
            this.mSelectedObjectsMultipleSelectionSprite.x = this.mSelectedObjectsDragX / LevelMain.PIXEL_TO_B2_SCALE;
            this.mSelectedObjectsMultipleSelectionSprite.y = this.mSelectedObjectsDragY / LevelMain.PIXEL_TO_B2_SCALE;
            this.mSelectedObjectsMultipleSelectionSprite.alpha = 0.25;
            if(LevelMain.DRAGGING_OVERLAYS_ENABLED)
            {
               this.mLevelMain.createDraggingOverlay();
            }
         }
         else
         {
            this.mLevelMain.clearDraggingOverlay();
         }
      }
      
      public function createScreenshot() : BitmapData
      {
         var _loc2_:Number = AngryBirdsSocial.SCREEN_WIDTH * 0.25;
         var _loc3_:Number = AngryBirdsSocial.SCREEN_HEIGHT * 0.25;
         var _loc4_:BitmapData = new BitmapData(_loc2_,_loc3_);
         var _loc5_:Matrix;
         (_loc5_ = new Matrix()).translate(this.mLevelMain.x / this.mLevelMain.scaleX,this.mLevelMain.y / this.mLevelMain.scaleY);
         var _loc6_:Number = _loc2_ / AngryBirdsSocial.SCREEN_WIDTH * this.mLevelMain.scaleX;
         var _loc7_:Number = _loc3_ / AngryBirdsSocial.SCREEN_HEIGHT * this.mLevelMain.scaleY;
         _loc5_.scale(_loc6_,_loc7_);
         _loc4_.draw(this.mLevelMain,_loc5_);
         return _loc4_;
      }
      
      public function createScreenshotMovieClip() : MovieClip
      {
         var _loc1_:Bitmap = new Bitmap(this.createScreenshot());
         var _loc2_:MovieClip = new MovieClip();
         _loc2_.addChild(_loc1_);
         return _loc2_;
      }
      
      public function createScreenshotAsEncodedString() : String
      {
         var _loc1_:JPGEncoder = new JPGEncoder(90);
         var _loc2_:ByteArray = _loc1_.encode(this.createScreenshot());
         return Base64.encodeByteArray(_loc2_);
      }
      
      public function storeLevelScreenshot(param1:String) : void
      {
         AngryBirdsServer.sendScreenshot(param1,this.createScreenshotAsEncodedString());
      }
      
      public function uploadLevel(param1:Boolean = false) : void
      {
         var _loc5_:LevelObject = null;
         Log.log("publishLevel step 1");
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelMain.mLevelObjects.mObjects.length)
         {
            if((_loc5_ = this.mLevelMain.mLevelObjects.mObjects[_loc2_]) && !_loc5_.isGround())
            {
               this.removeSelectedObjectFromList(this.isAlreadySelected(_loc5_));
            }
            _loc2_++;
         }
         Log.log("publishLevel step 2");
         Log.log("publishLevel step 3");
         var _loc3_:String = AngryBirdsSocial.USER.name;
         var _loc4_:String = " ";
         if(this.mLevelName != null)
         {
            _loc4_ = escape(this.mLevelName);
         }
         Log.log("publishLevel step 4");
         AngryBirdsServer.uploadLevel(_loc4_,this.createLevelXML(_loc4_),param1,this.mLevelMain.mLevelData.levelID,this.levelResponseReceived);
      }
      
      private function levelResponseReceived(param1:Object) : void
      {
         var _loc2_:String = param1.levelKey;
         AngryBirdsSocial.smLevelMain.mLevelData.levelID = _loc2_;
         this.storeLevelScreenshot(_loc2_);
      }
      
      public function createLevelXML(param1:String = "Placeholder level name", param2:Boolean = false) : String
      {
         var _loc3_:* = "";
         _loc3_ += "<Level id=\"" + param1 + "\" background=\"" + AngryBirdsSocial.smLevelMain.mLevelBackground.mLevelBackgroundInformation.mName + "\"";
         _loc3_ += " LevelExtension=\"" + this.mLevelMain.mLevelCamera.mLevelExtension + "\"";
         _loc3_ += " AutoCamera=\"" + (!!this.mLevelMain.mLevelCamera.mLevelAutoCamera ? "True" : "False") + "\"";
         _loc3_ += ">" + AngryBirdsSocial.LINE_BREAK_XML;
         if(param2)
         {
            _loc3_ += "<imgData>" + this.createScreenshotAsEncodedString() + "</imgData>" + AngryBirdsSocial.LINE_BREAK_XML;
         }
         _loc3_ += AngryBirdsSocial.smLevelMain.mLevelCamera.getCamerasInXML();
         _loc3_ += AngryBirdsSocial.smLevelMain.mLevelSlingshot.getSlingshotinXML();
         _loc3_ += AngryBirdsSocial.smLevelMain.mLevelObjects.getLevelObjectsinXML();
         _loc3_ += "</Level>";
         Log.log("Publish:\n" + _loc3_);
         return _loc3_;
      }
      
      public function checkLevelValidity(param1:Boolean = true) : String
      {
         var _loc6_:LevelObject = null;
         var _loc2_:String = "";
         var _loc3_:Boolean = false;
         var _loc4_:Array;
         if((_loc4_ = this.mLevelMain.mLevelObjects.mObjects) != null)
         {
            for each(_loc6_ in _loc4_)
            {
               if(_loc6_.isPig())
               {
                  _loc3_ = true;
                  break;
               }
            }
         }
         var _loc5_:* = this.mLevelMain.mLevelSlingshot.mBirds.length > 0;
         if(param1 && this.mLevelCompleted == false)
         {
            _loc2_ = "You need to Test Play!";
         }
         else if(!_loc5_)
         {
            _loc2_ = "You need birds!";
         }
         else if(!_loc3_)
         {
            _loc2_ = "You need pigs!";
         }
         return _loc2_;
      }
      
      public function calculateLevelCost() : Number
      {
         var _loc2_:LevelObject = null;
         var _loc1_:Number = 0;
         for each(_loc2_ in this.mLevelMain.mLevelObjects.mObjects)
         {
            _loc1_ += _loc2_.getCost();
         }
         _loc1_ += this.mLevelMain.mLevelBackground.mLevelBackgroundInformation.getCost();
         return Number(_loc1_ + this.getExtensionCost(this.mLevelMain.mLevelCamera.mLevelExtension));
      }
      
      public function getExtensionCost(param1:Number) : Number
      {
         return param1 * 100;
      }
      
      public function calculateBlockCount() : Number
      {
         return this.mLevelMain.mLevelObjects.mObjects.length - 1;
      }
      
      public function getMaxBlockCount() : Number
      {
         return LEVEL_OBJECTS_LIMIT + this.mLevelMain.mLevelCamera.mLevelExtension * LEVEL_OBJECTS_LIMIT_EXTENSION;
      }
      
      public function setAutoCamera(param1:Boolean) : void
      {
         this.mLevelMain.mLevelCamera.mLevelAutoCamera = param1;
      }
      
      public function updateAutoCameraCoordinates() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:LevelObject = null;
         var _loc10_:LevelSlingshotObject = null;
         if(!this.mLevelMain.mLevelCamera.mLevelAutoCamera)
         {
            return;
         }
         if(this.mLevelMain.mLevelCamera.mLevelExtension == 0)
         {
            this.mLevelMain.mLevelCamera.mSlingshotCameraX = (LevelCamera.EDITOR_BORDER_SLINGSHOT_LEFT + LevelCamera.EDITOR_BORDER_SLINGSHOT_RIGHT) / 2;
            this.mLevelMain.mLevelCamera.mSlingshotCameraY = (LevelCamera.EDITOR_BORDER_SKY + LevelCamera.EDITOR_BORDER_GROUND) / 2;
            this.mLevelMain.mLevelCamera.mSlingshotCameraScale = 1;
            this.mLevelMain.mLevelCamera.mCastleCameraX = (LevelCamera.EDITOR_BORDER_CASTLE_LEFT + LevelCamera.EDITOR_BORDER_CASTLE_RIGHT) / 2;
            this.mLevelMain.mLevelCamera.mCastleCameraY = (LevelCamera.EDITOR_BORDER_SKY + LevelCamera.EDITOR_BORDER_GROUND) / 2;
            this.mLevelMain.mLevelCamera.mCastleCameraScale = 1;
         }
         else
         {
            _loc1_ = (LevelCamera.EDITOR_BORDER_CASTLE_LEFT + LevelCamera.EDITOR_BORDER_CASTLE_RIGHT + this.mLevelMain.mLevelCamera.mLevelExtension * LevelCamera.EDITOR_BORDER_HORIZONTAL_RAISE) / 2;
            _loc2_ = _loc1_;
            _loc3_ = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            _loc4_ = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            _loc5_ = 1 - this.mLevelMain.mLevelCamera.mLevelExtension * LevelCamera.MANUAL_SCALE_STEP;
            _loc6_ = 0;
            while(_loc6_ < this.mLevelMain.mLevelObjects.mObjects.length)
            {
               if((_loc9_ = this.mLevelMain.mLevelObjects.mObjects[_loc6_]) && (_loc9_.isPig() || _loc9_.isBlock() || _loc9_.isMiscBlock()))
               {
                  _loc1_ = Math.min(_loc1_,_loc9_.getBody().GetPosition().x);
                  _loc2_ = Math.max(_loc2_,_loc9_.getBody().GetPosition().x);
                  _loc3_ = Math.min(_loc3_,_loc9_.getBody().GetPosition().y);
               }
               _loc6_++;
            }
            _loc7_ = 1;
            _loc1_ -= _loc7_;
            _loc2_ += _loc7_;
            _loc3_ -= _loc7_;
            _loc8_ = AngryBirdsSocial.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE / (_loc2_ - _loc1_);
            _loc5_ = Math.max(LevelCamera.SCALE_MIN,Math.min(_loc5_,_loc8_));
            _loc3_ = Math.min(_loc3_,_loc4_ - AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE);
            _loc8_ = AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE / (_loc4_ - _loc3_);
            _loc5_ = Math.max(LevelCamera.SCALE_MIN,Math.min(_loc5_,_loc8_));
            this.mLevelMain.mLevelCamera.mCastleCameraX = (_loc1_ + _loc2_) / 2;
            this.mLevelMain.mLevelCamera.mCastleCameraY = (_loc4_ + _loc3_) / 2;
            this.mLevelMain.mLevelCamera.mCastleCameraScale = _loc5_;
            _loc1_ = (LevelCamera.EDITOR_BORDER_SLINGSHOT_RIGHT + LevelCamera.EDITOR_BORDER_SLINGSHOT_LEFT) / 2;
            _loc2_ = _loc1_;
            _loc3_ = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            _loc4_ = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            _loc5_ = 1;
            _loc6_ = 0;
            while(_loc6_ < this.mLevelMain.mLevelSlingshot.mBirds.length)
            {
               if(_loc10_ = this.mLevelMain.mLevelSlingshot.mBirds[_loc6_])
               {
                  _loc1_ = Math.min(_loc1_,_loc10_.mX);
                  _loc2_ = Math.max(_loc2_,_loc10_.mX);
                  _loc3_ = Math.min(_loc3_,_loc10_.mY);
               }
               _loc6_++;
            }
            _loc1_ = Math.min(_loc1_,this.mLevelMain.mLevelSlingshot.mX - 7);
            _loc2_ = Math.max(_loc2_,this.mLevelMain.mLevelSlingshot.mX);
            _loc3_ = Math.min(_loc3_,this.mLevelMain.mLevelSlingshot.mY - 7);
            _loc7_ = 1;
            _loc1_ -= _loc7_;
            _loc2_ += _loc7_;
            _loc3_ -= _loc7_;
            _loc8_ = AngryBirdsSocial.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE / (_loc2_ - _loc1_);
            _loc5_ = Math.max(LevelCamera.SCALE_MIN,Math.min(_loc5_,_loc8_));
            _loc3_ = Math.min(_loc3_,_loc4_ - AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE);
            _loc8_ = AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE / (_loc4_ - _loc3_);
            _loc5_ = Math.max(LevelCamera.SCALE_MIN,Math.min(_loc5_,_loc8_));
            this.mLevelMain.mLevelCamera.mSlingshotCameraX = (_loc1_ + _loc2_) / 2;
            this.mLevelMain.mLevelCamera.mSlingshotCameraY = (_loc4_ + _loc3_) / 2;
            this.mLevelMain.mLevelCamera.mSlingshotCameraScale = _loc5_;
         }
      }
      
      public function roundUpGivenObject(param1:LevelObject) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = false;
         if(!USE_POSITION_GRIDS)
         {
            return;
         }
         if(param1 && param1 is LevelObject)
         {
            _loc2_ = param1.getBody().GetPosition().x;
            _loc3_ = param1.getBody().GetPosition().y;
            _loc4_ = param1.getAngle();
            _loc5_ = param1.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC;
            _loc2_ = LevelEditor.roundUpCoordinate(_loc2_,_loc5_);
            _loc3_ = LevelEditor.roundUpCoordinate(_loc3_,_loc5_);
            _loc4_ = LevelEditor.roundUpCoordinate(_loc4_,_loc5_);
            param1.getBody().GetPosition().x = _loc2_;
            param1.getBody().GetPosition().y = _loc3_;
            param1.setAngle(_loc4_);
            param1.getBody().SetLinearVelocity(new b2Vec2(0,0));
            param1.getBody().SetAngularVelocity(0);
         }
      }
   }
}
