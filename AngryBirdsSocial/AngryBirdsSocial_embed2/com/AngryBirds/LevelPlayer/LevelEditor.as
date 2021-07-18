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
      
      public function LevelEditor(newLevelMain:LevelMain)
      {
         super();
         this.mLevelMain = newLevelMain;
         this.mActionBuffer = new Array();
         this.mSelectedObjects = new Array();
         this.mSavedLevels = new Array();
         this.mPhysicsEnabled = PHYSICS_ENABLED_ON_EDITOR_STARTUP;
         this.mSelectedObjectsMultipleSelectionSprite = new Sprite();
         addChild(this.mSelectedObjectsMultipleSelectionSprite);
      }
      
      public static function decodeImageData(data:String) : DisplayObject
      {
         var bytes:ByteArray = Base64.decodeToByteArray(data);
         var l:Loader = new Loader();
         l.loadBytes(bytes);
         return l;
      }
      
      public static function roundUpCoordinate(input:Number, staticObject:Boolean) : Number
      {
         if(!USE_POSITION_GRIDS)
         {
            return input;
         }
         if(staticObject)
         {
            return RovioUtils.removeUnwantedFraction(input,2,-1);
         }
         return RovioUtils.removeUnwantedFraction(input,1,USE_GRID_PRECISION);
      }
      
      public function update(deltaTime:Number) : void
      {
         var verticalMovement:Number = NaN;
         var verticalDistanceMultiplier:Number = NaN;
         var SMOOTH_SCROOL:Boolean = false;
         var DELAY:int = 0;
         var i:int = 0;
         var obj:LevelObject = null;
         if(this.mLastRolledOverObject || this.mLastRolledOverObject2)
         {
            this.mLastRolledOverObjectTimer += deltaTime;
         }
         if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM)
         {
            if(this.mDraggingMaterialClip)
            {
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD2)
         {
            if(this.mLastRolledOverObject)
            {
               if(this.mLastRolledOverObjectTimer > ROTATE_ACTION_THRESHHOLD_TIME)
               {
                  verticalMovement = this.mMousePositionYB2 - this.mSelectedObjectsDragY;
                  verticalDistanceMultiplier = Math.min(6,Math.max(2,Math.abs(this.mLastRolledOverObject.getBody().GetPosition().y - this.mMousePositionYB2))) / 2;
                  verticalMovement *= 100 * LevelCamera.smLevelScale * verticalDistanceMultiplier;
                  if(this.mMousePositionXB2 < this.mLastRolledOverObject.getBody().GetPosition().x)
                  {
                     this.mLastRolledOverObject.rotateSmooth(verticalMovement);
                  }
                  else
                  {
                     this.mLastRolledOverObject.rotateSmooth(-verticalMovement);
                  }
                  this.mSelectedObjectsDragX = this.mMousePositionXB2;
                  this.mSelectedObjectsDragY = this.mMousePositionYB2;
               }
            }
            else if(this.mLastRolledOverObject2)
            {
            }
         }
         else if(false && this.mSelectedTool == SELECTED_TOOL_ROTATE_OLD1)
         {
            if(this.mLastRolledOverObject)
            {
               SMOOTH_SCROOL = false;
               if(SMOOTH_SCROOL)
               {
                  if(this.mLastRolledOverObjectTimer > ROTATE_ACTION_THRESHHOLD_TIME)
                  {
                     this.mLastRolledOverObject.rotateSmooth(-deltaTime);
                  }
               }
               else
               {
                  DELAY = 125;
                  while(this.mLastRolledOverObjectTimer > ROTATE_ACTION_THRESHHOLD_TIME + DELAY + 1)
                  {
                     this.mLastRolledOverObject.rotateSmooth(-100);
                     this.mLastRolledOverObjectTimer -= DELAY;
                  }
               }
            }
            else if(this.mLastRolledOverObject2)
            {
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            if(this.mSelectedObjectsDrag)
            {
               if(!this.mSelectedObjectsDragAllowed)
               {
                  this.mSelectedObjectsDragTimer += deltaTime;
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
            for(i = this.mLevelMain.mLevelObjects.mObjects.length - 1; i >= 0; i--)
            {
               obj = this.mLevelMain.mLevelObjects.mObjects[i];
               if(obj && (obj.isPig() || obj.isBlock() || obj.isMiscBlock()))
               {
                  if(obj.getBody().GetPosition().x < LevelCamera.EDITOR_BORDER_CASTLE_LEFT - 1 || obj.getBody().GetPosition().x > LevelCamera.EDITOR_BORDER_CASTLE_RIGHT + this.mLevelMain.mLevelCamera.mLevelExtension * LevelCamera.EDITOR_BORDER_HORIZONTAL_RAISE + 1)
                  {
                     if(this.isAlreadySelected(obj))
                     {
                        this.removeSelectedObjectFromList(this.isAlreadySelected(obj));
                        this.mLevelMain.mLevelObjects.removeObject(i);
                     }
                  }
               }
            }
         }
         this.executeActions();
      }
      
      public function updateMultipleSelectedObjects() : void
      {
         var top:Number = NaN;
         var bottom:Number = NaN;
         var left:Number = NaN;
         var right:Number = NaN;
         var obj:LevelObject = null;
         var obj2:LevelSlingshotObject = null;
         this.mSelectedObjectsMultipleSelectionSprite.graphics.clear();
         this.mSelectedObjectsMultipleSelectionSprite.graphics.lineStyle(1);
         this.mSelectedObjectsMultipleSelectionSprite.graphics.beginFill(65280,1);
         this.mSelectedObjectsMultipleSelectionSprite.graphics.drawRect(0,0,(this.mMousePositionXB2 - this.mSelectedObjectsDragX) / LevelMain.PIXEL_TO_B2_SCALE,(this.mMousePositionYB2 - this.mSelectedObjectsDragY) / LevelMain.PIXEL_TO_B2_SCALE);
         if(this.mSelectedObjectsDragY <= this.mMousePositionYB2)
         {
            top = this.mSelectedObjectsDragY;
            bottom = this.mMousePositionYB2;
         }
         else
         {
            top = this.mMousePositionYB2;
            bottom = this.mSelectedObjectsDragY;
         }
         if(this.mSelectedObjectsDragX <= this.mMousePositionXB2)
         {
            left = this.mSelectedObjectsDragX;
            right = this.mMousePositionXB2;
         }
         else
         {
            left = this.mMousePositionXB2;
            right = this.mSelectedObjectsDragX;
         }
         for(var i:int = 0; i < this.mLevelMain.mLevelObjects.mObjects.length; i++)
         {
            obj = this.mLevelMain.mLevelObjects.mObjects[i];
            if(obj && !obj.isGround())
            {
               if(obj.isInsideRectangle(top,bottom,left,right))
               {
                  this.newSelectedObject(obj,true);
               }
               else
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj));
               }
            }
         }
         for(i = 0; i < this.mLevelMain.mLevelSlingshot.mBirds.length; i++)
         {
            obj2 = this.mLevelMain.mLevelSlingshot.mBirds[i];
            if(obj2)
            {
               if(obj2.isInsideRectangle(top,bottom,left,right))
               {
                  this.newSelectedObject(obj2,true);
               }
               else
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj2));
               }
            }
         }
         if(this.mLevelMain.mLevelSlingshot.isInsideRectangle(top,bottom,left,right))
         {
            this.newSelectedObject(this.mLevelMain.mLevelSlingshot,true);
         }
         else
         {
            this.removeSelectedObjectFromList(this.isAlreadySelected(this.mLevelMain.mLevelSlingshot));
         }
      }
      
      public function addAction(actionType:int, newX:Number, newY:Number, newKeyword:String) : void
      {
         this.mActionBuffer[this.mActionBuffer.length] = new Array(actionType,newX,newY,newKeyword);
      }
      
      public function executeActions() : void
      {
         var temp:Array = null;
         var posX:Number = NaN;
         var posY:Number = NaN;
         var obj:LevelObject = null;
         var objIndex:int = 0;
         while(this.mActionBuffer.length > 0)
         {
            temp = this.mActionBuffer[0] as Array;
            if(temp[0] == ACTION_ADD_ITEM)
            {
               if(this.mCopiedObjects)
               {
                  this.pasteSelectedObjectsIntoLevel();
               }
               else
               {
                  this.createSavedLevels();
                  if((temp[3] as String).indexOf("BIRD_") >= 0)
                  {
                     if(this.mLevelMain.mLevelSlingshot.mBirds.length < this.mLevelMain.mLevelSlingshot.getMaxBirdCount())
                     {
                        this.mLevelMain.mLevelSlingshot.addNewBirdToEndOfList(temp[3],temp[1],temp[2]);
                     }
                     else
                     {
                        Log.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
                        AngryBirdsSocial.smLevelMain.addFloatingText("Too many birds!",AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 - 3,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
                     }
                  }
                  else if(this.mLevelMain.mLevelCamera.isCoordinateInBorder(temp[1],temp[2]))
                  {
                     if(this.calculateBlockCount() < this.getMaxBlockCount())
                     {
                        posX = temp[1];
                        posY = temp[2];
                        posX = roundUpCoordinate(posX,LevelItems.isItemStatic(temp[3]));
                        posY = roundUpCoordinate(posY,LevelItems.isItemStatic(temp[3]));
                        this.mLevelMain.mLevelObjects.addObject(temp[3],posX,posY);
                     }
                     else
                     {
                        Log.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Object Limit");
                        AngryBirdsSocial.smLevelMain.addFloatingText("Too many items!",AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 - 3,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
                     }
                  }
               }
            }
            else if(temp[0] == ACTION_ROTATE_ITEM)
            {
               obj = this.mLevelMain.mLevelObjects.getObjectFromPoint(temp[1],temp[2]);
               if(obj && !obj.isGround())
               {
                  obj.rotate(45);
               }
            }
            else if(temp[0] == ACTION_DELETE_ITEM)
            {
               objIndex = this.mLevelMain.mLevelObjects.getObjectIndexFromPoint(temp[1],temp[2]);
               if(objIndex > 0)
               {
                  this.mLevelMain.mLevelObjects.removeObject(objIndex,false);
               }
               else
               {
                  objIndex = this.mLevelMain.mLevelSlingshot.getObjectIndexFromPoint(temp[1],temp[2]);
                  if(objIndex >= 0)
                  {
                     this.mLevelMain.mLevelSlingshot.removeObject(objIndex);
                  }
               }
            }
            else if(temp[0] == ACTION_UNDO)
            {
               this.loadLastSavedLevel();
            }
            else if(temp[0] == ACTION_DELETE_ALL)
            {
               this.createSavedLevels();
               this.mLevelMain.mLevelObjects.removeAllTheObjects();
               this.mLevelMain.mLevelSlingshot.removeAllTheObjects();
            }
            else if(temp[0] == ACTION_SELECTED_COPY)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT)
               {
                  this.copySelectedObjectsIntoCopiedObjectsList();
               }
            }
            else if(temp[0] == ACTION_SELECTED_PASTE)
            {
               if(this.mSelectedTool == SELECTED_TOOL_ADD_ITEM)
               {
                  this.pasteSelectedObjectsIntoLevel();
               }
            }
            else if(temp[0] == ACTION_SELECTED_DELETE)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_DELETE)
               {
                  this.deleteSelectedObjectsFromLevel();
               }
            }
            else if(temp[0] == ACTION_SELECTED_ROTATE)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE)
               {
                  this.rotateSelectedItems();
               }
            }
            else if(temp[0] == ACTION_SELECTED_ROTATE_NEW)
            {
               if(this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE)
               {
                  this.rotateSelectedItemsNew();
               }
            }
            else if(temp[0] == ACTION_SELECTED_MOVE_DOWN)
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
            else if(temp[0] == ACTION_SELECTED_MOVE_UP)
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
            else if(temp[0] == ACTION_SELECTED_MOVE_LEFT)
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
            else if(temp[0] == ACTION_SELECTED_MOVE_RIGHT)
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
            else if(temp[0] == ACTION_SWITCH_BACKGROUND)
            {
               this.mLevelMain.mLevelBackground.resetLevelBackground(temp[3]);
            }
            else if(temp[0] == ACTION_CLEAR_BOX2D_FORCES)
            {
               this.mLevelMain.mLevelEngine.mWorld.ClearForces();
            }
            this.mActionBuffer.splice(0,1);
            temp = null;
         }
      }
      
      public function copySelectedObjectsIntoCopiedObjectsList() : void
      {
         var object:Object = null;
         var tempCopiedObjects:Array = new Array();
         var bottom:Number = 0;
         var top:Number = 0;
         var left:Number = 0;
         var right:Number = 0;
         for(var i:int = 0; i < this.mSelectedObjects.length; i++)
         {
            object = this.mSelectedObjects[i];
            if(object is LevelObject)
            {
               if(i == 0 || (object as LevelObject).getBody().GetPosition().x < left)
               {
                  left = (object as LevelObject).getBody().GetPosition().x;
               }
               if(i == 0 || (object as LevelObject).getBody().GetPosition().x > right)
               {
                  right = (object as LevelObject).getBody().GetPosition().x;
               }
               if(i == 0 || (object as LevelObject).getBody().GetPosition().y < top)
               {
                  top = (object as LevelObject).getBody().GetPosition().y;
               }
               if(i == 0 || (object as LevelObject).getBody().GetPosition().y > bottom)
               {
                  bottom = (object as LevelObject).getBody().GetPosition().y;
               }
            }
            else if(object is LevelSlingshotObject)
            {
               if(i == 0 || (object as LevelSlingshotObject).mX < left)
               {
                  left = (object as LevelSlingshotObject).mX;
               }
               if(i == 0 || (object as LevelSlingshotObject).mX > right)
               {
                  right = (object as LevelSlingshotObject).mX;
               }
               if(i == 0 || (object as LevelSlingshotObject).mY < top)
               {
                  top = (object as LevelSlingshotObject).mY;
               }
               if(i == 0 || (object as LevelSlingshotObject).mY > bottom)
               {
                  bottom = (object as LevelSlingshotObject).mY;
               }
            }
         }
         var centerX:Number = (left + right) / 2;
         var centerY:Number = (top + bottom) / 2;
         for(i = 0; i < this.mSelectedObjects.length; i++)
         {
            object = this.mSelectedObjects[i];
            if(object is LevelObject)
            {
               tempCopiedObjects[tempCopiedObjects.length] = new Array(true,(object as LevelObject).mObjectName,(object as LevelObject).getBody().GetPosition().x - centerX,(object as LevelObject).getBody().GetPosition().y - centerY,(object as LevelObject).getAngle());
            }
            else if(object is LevelSlingshotObject)
            {
               tempCopiedObjects[tempCopiedObjects.length] = new Array(false,(object as LevelSlingshotObject).mName,(object as LevelSlingshotObject).mX - centerX,(object as LevelSlingshotObject).mY - centerY,0);
            }
            else if(object is LevelSlingshot)
            {
            }
         }
         this.setSelectedTool(SELECTED_TOOL_ADD_ITEM);
         this.mCopiedObjects = tempCopiedObjects;
         this.createMaterialOnMouse();
      }
      
      public function pasteSelectedObjectsIntoLevel() : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         this.createSavedLevels();
         for(var i:int = 0; i < this.mCopiedObjects.length; i++)
         {
            if(this.mCopiedObjects[i][0] as Boolean)
            {
               if(this.calculateBlockCount() < this.getMaxBlockCount())
               {
                  posX = this.mMousePositionXB2 + this.mCopiedObjects[i][2];
                  posY = this.mMousePositionYB2 + this.mCopiedObjects[i][3];
                  posX = roundUpCoordinate(posX,LevelItems.isItemStatic(this.mCopiedObjects[i][1]));
                  posY = roundUpCoordinate(posY,LevelItems.isItemStatic(this.mCopiedObjects[i][1]));
                  this.mLevelMain.mLevelObjects.addObject(this.mCopiedObjects[i][1],posX,posY,this.mCopiedObjects[i][4]);
               }
               else
               {
                  Log.log("LevelEditor::pasteSelectedObjectsIntoLevel() -> Reached Object Limit");
                  AngryBirdsSocial.smLevelMain.addFloatingText("Too many items!",AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 - 3,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
               }
            }
            else if(this.mLevelMain.mLevelSlingshot.mBirds.length < this.mLevelMain.mLevelSlingshot.getMaxBirdCount())
            {
               this.mLevelMain.mLevelSlingshot.addNewBirdToEndOfList(this.mCopiedObjects[i][1],this.mCopiedObjects[i][2],this.mCopiedObjects[i][3]);
            }
            else
            {
               Log.log("LevelEditor::pasteSelectedObjectsIntoLevel() -> Reached Bird Limit");
               AngryBirdsSocial.smLevelMain.addFloatingText("Too many birds!",AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 - 3,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
            }
         }
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         x = -sideScroll;
         y = -verticalScroll;
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
      
      public function catagorySelected(catagoryName:String) : void
      {
         if(this.mSelectedTool != -1)
         {
            this.setSelectedTool(SELECTED_TOOL_SELECT);
            MouseCursorController.cursorHide();
         }
         this.clearMaterialOnMouse();
      }
      
      public function materialSelected(materialName:String) : void
      {
         this.mSelectedMaterialName = materialName;
         this.setSelectedTool(SELECTED_TOOL_ADD_ITEM);
         this.createMaterialOnMouse();
      }
      
      private function getIndexFromRepeaterName(name:String) : Number
      {
         var splitAr:Array = null;
         splitAr = name.split("_");
         return Number(splitAr[1]);
      }
      
      public function setSelectedTool(newTool:int) : void
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
         var clearSelectedObjects:Boolean = true;
         if((this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE || this.mSelectedTool == SELECTED_TOOL_DELETE) && (newTool == SELECTED_TOOL_SELECT || newTool == SELECTED_TOOL_ROTATE || newTool == SELECTED_TOOL_DELETE))
         {
            clearSelectedObjects = false;
         }
         this.setSelectedObjectsMultipleSelect(false);
         this.mCTRLpressed = false;
         this.mSHIFTpressed = false;
         this.mSelectedTool = newTool;
         this.setLastRollOverObject(null,false);
         this.setLastRollOverObject2(null,false);
         if(clearSelectedObjects)
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
      
      public function getCursorForTool(tool:int) : String
      {
         switch(tool)
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
      
      public function updateSelectedToolButtonOnUIView(buttonName:String) : void
      {
         ((this.mLevelMain.parent as StateLevelEditor).mUIView as ViewLevelEditor).mButtonGroupRightPanel.buttonSelected(buttonName);
      }
      
      public function togglePhysics(save:Boolean = true) : void
      {
         this.mPhysicsEnabled = !this.mPhysicsEnabled;
         if(!this.mPhysicsEnabled)
         {
            this.addAction(ACTION_CLEAR_BOX2D_FORCES,0,0,"");
         }
         if(this.mPhysicsEnabled && save)
         {
            this.createSavedLevels();
         }
      }
      
      public function createMaterialOnMouse() : void
      {
         var matClass:Class = null;
         var i:int = 0;
         var clip:MovieClip = null;
         if(this.mCopiedObjects)
         {
            this.mDraggingMaterialClip = new MovieClip();
            for(i = 0; i < this.mCopiedObjects.length; i++)
            {
               matClass = AssetCache.getAssetFromCache(this.mCopiedObjects[i][1]);
               clip = new matClass();
               clip = ViewLevelEditor.getThumbnailOutOfLevelObjectRenderer(clip);
               clip.x = this.mCopiedObjects[i][2] / LevelMain.PIXEL_TO_B2_SCALE;
               clip.y = this.mCopiedObjects[i][3] / LevelMain.PIXEL_TO_B2_SCALE;
               clip.rotation = 360 - this.mCopiedObjects[i][4];
               this.mDraggingMaterialClip.addChild(clip);
            }
            addChild(this.mDraggingMaterialClip);
            this.mDraggingMaterialClip.x = this.mMousePositionXB2 / LevelMain.PIXEL_TO_B2_SCALE;
            this.mDraggingMaterialClip.y = this.mMousePositionYB2 / LevelMain.PIXEL_TO_B2_SCALE;
         }
         else if(this.mSelectedMaterialName != null && this.mSelectedMaterialName.length > 0)
         {
            matClass = AssetCache.getAssetFromCache(this.mSelectedMaterialName);
            this.mDraggingMaterialClip = new matClass();
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
      
      public function mouseMove(p:Point) : Boolean
      {
         var obj:LevelObject = null;
         var obj2:LevelSlingshotObject = null;
         this.mMousePositionXB2 = p.x;
         this.mMousePositionYB2 = p.y;
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
                     obj = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
                     if(obj != this.mLastRolledOverObject)
                     {
                        this.setLastRollOverObject(null,false);
                     }
                  }
                  else if(this.mLastRolledOverObject2)
                  {
                     obj2 = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
                     if(obj2 != this.mLastRolledOverObject2)
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
      
      public function mouseDown(p:Point) : Boolean
      {
         var obj:LevelObject = null;
         var obj2:LevelSlingshotObject = null;
         var obj3:LevelSlingshot = null;
         this.mMousePositionXB2 = p.x;
         this.mMousePositionYB2 = p.y;
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
            obj = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            obj2 = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            obj3 = this.mLevelMain.mLevelSlingshot.isSlingshotIntersectWithThisPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(obj2)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj2) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj2));
               }
               else
               {
                  this.newSelectedObject(obj2,this.mCTRLpressed);
               }
            }
            else if(obj3)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj3) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj3));
               }
               else
               {
                  this.newSelectedObject(obj3,this.mCTRLpressed);
               }
            }
            else if(obj && !obj.isGround())
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj));
               }
               else
               {
                  this.newSelectedObject(obj,this.mCTRLpressed);
               }
            }
            else
            {
               this.newSelectedObject(null);
               this.setSelectedObjectsMultipleSelect(true);
            }
            if(LevelMain.DRAGGING_OVERLAYS_ENABLED && (obj || obj2 || obj3))
            {
               this.mLevelMain.createDraggingOverlay();
            }
         }
         else if(this.mSelectedTool == SELECTED_TOOL_ROTATE)
         {
            obj = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            obj2 = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            obj3 = this.mLevelMain.mLevelSlingshot.isSlingshotIntersectWithThisPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(obj2)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj2) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj2));
               }
               else
               {
                  this.newSelectedObject(obj2,this.mCTRLpressed);
               }
            }
            else if(obj3)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj3) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj3));
               }
               else
               {
                  this.newSelectedObject(obj3,this.mCTRLpressed);
               }
            }
            else if(obj && !obj.isGround())
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj));
               }
               else
               {
                  this.newSelectedObject(obj,this.mCTRLpressed);
               }
            }
            else
            {
               this.newSelectedObject(null);
               this.setSelectedObjectsMultipleSelect(true);
            }
            if(LevelMain.DRAGGING_OVERLAYS_ENABLED && (obj || obj2 || obj3))
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
            obj = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            obj2 = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            obj3 = this.mLevelMain.mLevelSlingshot.isSlingshotIntersectWithThisPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(obj2)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj2) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj2));
               }
               else
               {
                  this.newSelectedObject(obj2,this.mCTRLpressed);
               }
            }
            else if(obj3)
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj3) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj3));
               }
               else
               {
                  this.newSelectedObject(obj3,this.mCTRLpressed);
               }
            }
            else if(obj && !obj.isGround())
            {
               if(this.mCTRLpressed && this.isAlreadySelected(obj) >= 0)
               {
                  this.removeSelectedObjectFromList(this.isAlreadySelected(obj));
               }
               else
               {
                  this.newSelectedObject(obj,this.mCTRLpressed);
               }
            }
            else
            {
               this.newSelectedObject(null);
               this.setSelectedObjectsMultipleSelect(true);
            }
            if(LevelMain.DRAGGING_OVERLAYS_ENABLED && (obj || obj2 || obj3))
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
            obj = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(obj && !obj.isGround())
            {
               this.setLastRollOverObject(obj,true);
            }
            else
            {
               obj2 = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
               if(obj2)
               {
                  this.setLastRollOverObject2(obj2,true);
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
      
      public function mouseUp(p:Point) : Boolean
      {
         var obj:LevelObject = null;
         var obj2:LevelSlingshotObject = null;
         var obj3:LevelSlingshot = null;
         this.mMousePositionXB2 = p.x;
         this.mMousePositionYB2 = p.y;
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
            obj = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(obj && obj == this.mLastRolledOverObject)
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
            obj = this.mLevelMain.mLevelObjects.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
            if(obj && obj == this.mLastRolledOverObject)
            {
               this.addAction(ACTION_DELETE_ITEM,this.mMousePositionXB2,this.mMousePositionYB2,"");
            }
            else
            {
               obj2 = this.mLevelMain.mLevelSlingshot.getObjectFromPoint(this.mMousePositionXB2,this.mMousePositionYB2);
               if(obj2)
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
      
      public function mouseClick(p:Point) : Boolean
      {
         this.mMousePositionXB2 = p.x;
         this.mMousePositionYB2 = p.y;
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
      
      public function setLastRollOverObject(obj:LevelObject, nullObject2:Boolean = false) : void
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
         this.mLastRolledOverObject = obj;
         if(this.mLastRolledOverObject)
         {
            this.mLastRolledOverObject.mRenderer.addGlowFilter(65280,8,8);
            this.createSavedLevels();
         }
         this.mLastRolledOverObjectTimer = 0;
         if(nullObject2)
         {
            this.setLastRollOverObject2(null,false);
         }
      }
      
      public function setLastRollOverObject2(obj:LevelSlingshotObject, nullObject1:Boolean = false) : void
      {
         if(this.mLastRolledOverObject2)
         {
            this.mLastRolledOverObject2.clearGlowFilter();
            this.mLastRolledOverObject2.mGroundCheckTimer = 100;
            this.mLastRolledOverObject2 = null;
         }
         this.mLastRolledOverObject2 = obj;
         if(this.mLastRolledOverObject2)
         {
            this.mLastRolledOverObject2.addGlowFilter(8,65280);
            this.createSavedLevels();
         }
         this.mLastRolledOverObjectTimer = 0;
         if(nullObject1)
         {
            this.setLastRollOverObject(null,false);
         }
      }
      
      public function newSelectedObject(obj:Object, append:Boolean = false) : void
      {
         this.mSaveObjectsBeforeKeyMovements = true;
         if(obj != null && this.isAlreadySelected(obj) >= 0)
         {
            this.setSelectedObjectsDrag(true);
            return;
         }
         if(!append)
         {
            while(this.mSelectedObjects.length > 0)
            {
               this.removeSelectedObjectFromList(0);
            }
         }
         if(obj is LevelObject)
         {
            (obj as LevelObject).mRenderer.addGlowFilter(65280,8,8);
            this.mSelectedObjects[this.mSelectedObjects.length] = obj as LevelObject;
            this.setSelectedObjectsDrag(true);
         }
         else if(obj is LevelSlingshotObject)
         {
            (obj as LevelSlingshotObject).addGlowFilter(8,65280);
            this.mSelectedObjects[this.mSelectedObjects.length] = obj as LevelSlingshotObject;
            this.setSelectedObjectsDrag(true);
         }
         else if(obj is LevelSlingshot)
         {
            (obj as LevelSlingshot).addGlowFilter(8,65280);
            this.mSelectedObjects[this.mSelectedObjects.length] = obj as LevelSlingshot;
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
         for(var i:int = 0; i < this.mSelectedObjects.length; i++)
         {
            if(this.mSelectedObjects[i] is LevelObject)
            {
               this.mLevelMain.mLevelObjects.removeObject(this.mLevelMain.mLevelObjects.getObjectIndex(this.mSelectedObjects[i] as LevelObject));
            }
            else if(this.mSelectedObjects[i] is LevelSlingshotObject)
            {
               this.mLevelMain.mLevelSlingshot.removeObject(this.mLevelMain.mLevelSlingshot.getObjectIndex(this.mSelectedObjects[i] as LevelSlingshotObject));
            }
            else if(this.mSelectedObjects[i] is LevelSlingshot)
            {
               this.mLevelMain.mLevelSlingshot.clearGlowFilter();
               this.mLevelMain.mLevelSlingshot.mGroundCheckTimer = 100;
            }
            this.mSelectedObjects[i] = null;
         }
         this.newSelectedObject(null);
      }
      
      public function rotateSelectedItems() : void
      {
         this.createSavedLevels();
         for(var i:int = 0; i < this.mSelectedObjects.length; i++)
         {
            if(this.mSelectedObjects[i] is LevelObject)
            {
               (this.mSelectedObjects[i] as LevelObject).rotate(22.5,true);
            }
            else if(this.mSelectedObjects[i] is LevelSlingshotObject)
            {
            }
         }
      }
      
      public function rotateSelectedItemsNew() : void
      {
         var position:b2Vec2 = null;
         this.createSavedLevels();
         var i:int = 0;
         var bbMin:Point = new Point(0,0);
         var bbMax:Point = new Point(0,0);
         for(i = 0; i < this.mSelectedObjects.length; i++)
         {
            if(this.mSelectedObjects[i] is LevelObject && (this.mSelectedObjects[i] as LevelObject).mFixture != null)
            {
               position = (this.mSelectedObjects[i] as LevelObject).getBody().GetPosition();
               if(i == 0)
               {
                  bbMin.x = bbMax.x = position.x;
                  bbMin.y = bbMax.y = position.y;
               }
               else
               {
                  if(position.x < bbMin.x)
                  {
                     bbMin.x = position.x;
                  }
                  if(position.y < bbMin.y)
                  {
                     bbMin.y = position.y;
                  }
                  if(position.x > bbMax.x)
                  {
                     bbMax.x = position.x;
                  }
                  if(position.y > bbMax.y)
                  {
                     bbMax.y = position.y;
                  }
               }
            }
         }
         var pivot:Point = new Point();
         pivot.x = bbMin.x + (bbMax.x - bbMin.x) / 2;
         pivot.y = bbMin.y + (bbMax.y - bbMin.y) / 2;
         for(i = 0; i < this.mSelectedObjects.length; i++)
         {
            if(this.mSelectedObjects[i] is LevelObject && (this.mSelectedObjects[i] as LevelObject).mFixture != null)
            {
               (this.mSelectedObjects[i] as LevelObject).rotateAroundPivot(22.5,pivot);
            }
            else if(this.mSelectedObjects[i] is LevelSlingshotObject)
            {
            }
         }
      }
      
      public function removeSelectedObjectFromList(index:int) : void
      {
         var remove:LevelObject = null;
         var remove2:LevelSlingshotObject = null;
         var remove3:LevelSlingshot = null;
         if(index < 0 || index >= this.mSelectedObjects.length)
         {
            return;
         }
         if(this.mSelectedObjects[index] is LevelObject)
         {
            remove = this.mSelectedObjects[index] as LevelObject;
            if(remove)
            {
               remove.mRenderer.removeGlowfilter();
               if(remove.mFixture)
               {
                  this.roundUpGivenObject(remove);
                  remove.getBody().SetAwake(true);
               }
            }
            remove = null;
         }
         else if(this.mSelectedObjects[index] is LevelSlingshotObject)
         {
            remove2 = this.mSelectedObjects[index] as LevelSlingshotObject;
            if(remove2)
            {
               remove2.clearGlowFilter();
               remove2.mGroundCheckTimer = 100;
            }
            remove2 = null;
         }
         else if(this.mSelectedObjects[index] is LevelSlingshot)
         {
            remove3 = this.mSelectedObjects[index] as LevelSlingshot;
            if(remove3)
            {
               remove3.clearGlowFilter();
               remove3.mGroundCheckTimer = 100;
            }
            remove3 = null;
         }
         this.mSelectedObjects.splice(index,1);
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
         var shiftX:Number = this.mMousePositionXB2 - this.mSelectedObjectsDragX;
         var shiftY:Number = this.mMousePositionYB2 - this.mSelectedObjectsDragY;
         var vector:Number = Math.sqrt(shiftX * shiftX + shiftY * shiftY);
         if(vector > 0.25)
         {
            return true;
         }
         return false;
      }
      
      public function moveSelectedObjects(shiftX:Number = 0, shiftY:Number = 0) : void
      {
         var i:int = 0;
         var obj:LevelObject = null;
         var posX:Number = NaN;
         var posY:Number = NaN;
         var obj2:LevelSlingshotObject = null;
         var obj3:LevelSlingshot = null;
         var ignoreVertical:Boolean = false;
         var verticalExtra:Number = NaN;
         var slingshotMargin:Number = NaN;
         var roundUp:Boolean = true;
         if(shiftX == 0 && shiftY == 0 && this.mSelectedObjectsDrag)
         {
            shiftX = this.mMousePositionXB2 - this.mSelectedObjectsDragX;
            shiftY = this.mMousePositionYB2 - this.mSelectedObjectsDragY;
            roundUp = false;
         }
         var terminateDragging:Boolean = false;
         var moveAllowed:Boolean = true;
         if(moveAllowed)
         {
            for(i = 0; i < this.mSelectedObjects.length; i++)
            {
               if(this.mSelectedObjects[i] is LevelObject)
               {
                  obj = this.mSelectedObjects[i] as LevelObject;
                  if(obj && obj.mFixture)
                  {
                     posX = obj.getBody().GetPosition().x + shiftX;
                     posY = obj.getBody().GetPosition().y + shiftY;
                     if(!obj.isTexture() && !this.mLevelMain.mLevelCamera.isCoordinateInBorder(posX,posY))
                     {
                        terminateDragging = true;
                        posX -= shiftX;
                        posY -= shiftY;
                     }
                     obj.getBody().SetPosition(new b2Vec2(posX,posY));
                     obj.getBody().SetAwake(false);
                     if(roundUp)
                     {
                        this.roundUpGivenObject(obj);
                     }
                  }
               }
               else if(this.mSelectedObjects[i] is LevelSlingshotObject)
               {
                  obj2 = this.mSelectedObjects[i] as LevelSlingshotObject;
                  if(obj2)
                  {
                     obj2.setPosition(obj2.mX + shiftX,obj2.mY + shiftY);
                     if(!this.mLevelMain.mLevelCamera.isCoordinateInBorder(obj2.mX,obj2.mLegContactPoint))
                     {
                        terminateDragging = true;
                        obj2.setPosition(obj2.mX - shiftX,obj2.mY - shiftY);
                     }
                  }
               }
               else if(this.mSelectedObjects[i] is LevelSlingshot)
               {
                  obj3 = this.mSelectedObjects[i] as LevelSlingshot;
                  if(obj3)
                  {
                     ignoreVertical = shiftY < 0;
                     verticalExtra = 0;
                     if(ignoreVertical)
                     {
                        verticalExtra = -5;
                     }
                     obj3.setPosition(obj3.mX + shiftX,obj3.mY + shiftY,true);
                     slingshotMargin = 5 + 3 * this.mLevelMain.mLevelCamera.mLevelExtension;
                     if(!this.mLevelMain.mLevelCamera.isCoordinateInBorder(obj3.mX,obj3.mLegContactPoint + verticalExtra) || !this.mLevelMain.mLevelCamera.isCoordinateInBorder(obj3.mX - slingshotMargin,obj3.mLegContactPoint + verticalExtra) || !this.mLevelMain.mLevelCamera.isCoordinateInBorder(obj3.mX + slingshotMargin / 2,obj3.mLegContactPoint + verticalExtra))
                     {
                        terminateDragging = true;
                        obj3.setPosition(obj3.mX - shiftX,obj3.mY - shiftY,true);
                     }
                  }
               }
            }
         }
         this.mSelectedObjectsDragX = this.mMousePositionXB2;
         this.mSelectedObjectsDragY = this.mMousePositionYB2;
         if(terminateDragging)
         {
            this.setSelectedObjectsDrag(false);
         }
      }
      
      public function isAlreadySelected(obj:Object) : int
      {
         if(!obj)
         {
            return -1;
         }
         for(var i:int = 0; i < this.mSelectedObjects.length; i++)
         {
            if(obj == this.mSelectedObjects[i])
            {
               return i;
            }
         }
         return -1;
      }
      
      public function createSavedLevels() : void
      {
         var level:Array = new Array(this.mLevelMain.mLevelObjects.getLevelDataInArrayFormat(),this.mLevelMain.mLevelSlingshot.getLevelDataInArrayFormat(),this.mLevelSaved,this.mLevelCompleted);
         this.mSavedLevels.splice(0,0,level);
         var MAX_LEVEL_COUNT:int = 10;
         while(this.mSavedLevels.length > MAX_LEVEL_COUNT)
         {
            this.mSavedLevels.splice(MAX_LEVEL_COUNT,1);
         }
         Log.log("SAVED LEVEL, buffer lenght = " + this.mSavedLevels.length);
         this.mLevelCompleted = false;
         this.mLevelSaved = false;
      }
      
      public function loadLastSavedLevel(removeFromBuffer:Boolean = true) : void
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
            if(removeFromBuffer)
            {
               this.mSavedLevels.splice(0,1);
            }
         }
      }
      
      public function keyDown(e:KeyboardEvent) : void
      {
         if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            if(e.keyCode == Keyboard.CONTROL)
            {
               this.mCTRLpressed = true;
            }
            else if(e.keyCode == Keyboard.DOWN)
            {
               this.addAction(ACTION_SELECTED_MOVE_DOWN,0,0,"");
            }
            else if(e.keyCode == Keyboard.UP)
            {
               this.addAction(ACTION_SELECTED_MOVE_UP,0,0,"");
            }
            else if(e.keyCode == Keyboard.LEFT)
            {
               this.addAction(ACTION_SELECTED_MOVE_LEFT,0,0,"");
            }
            else if(e.keyCode == Keyboard.RIGHT)
            {
               this.addAction(ACTION_SELECTED_MOVE_RIGHT,0,0,"");
            }
         }
      }
      
      public function keyUp(e:KeyboardEvent) : void
      {
         if(this.mSelectedTool == SELECTED_TOOL_SELECT)
         {
            if(e.keyCode == Keyboard.CONTROL)
            {
               this.mCTRLpressed = false;
            }
         }
         if(e.keyCode == Keyboard.SHIFT)
         {
            this.mSHIFTpressed = false;
         }
         if(e.keyCode == Keyboard.DELETE)
         {
            if((this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_DELETE) && this.mSelectedObjects.length > 0)
            {
               Log.log("DELETE SELECTED ACTION");
               this.addAction(ACTION_SELECTED_DELETE,0,0,"");
            }
         }
         else if(e.keyCode == Keyboard.SPACE)
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
         else if(true || e.ctrlKey)
         {
            if(e.keyCode == 67 && this.mSelectedTool == SELECTED_TOOL_SELECT && this.mSelectedObjects.length > 0)
            {
               Log.log("COPY ACTION");
               this.addAction(ACTION_SELECTED_COPY,0,0,"");
            }
            else if(e.keyCode == 82 && (this.mSelectedTool == SELECTED_TOOL_SELECT || this.mSelectedTool == SELECTED_TOOL_ROTATE) && this.mSelectedObjects.length > 0)
            {
               Log.log("ROTATE ACTION");
               this.addAction(ACTION_SELECTED_ROTATE,0,0,"");
            }
            else if(e.keyCode == 86 && this.mSelectedTool == SELECTED_TOOL_ADD_ITEM && this.mCopiedObjects.length > 0)
            {
               Log.log("PASTE ACTION");
               this.addAction(ACTION_SELECTED_PASTE,0,0,"");
            }
            else if(e.keyCode == 71)
            {
               Log.log("GRAVITY ACTION");
               if(this.mSelectedTool != SELECTED_TOOL_PLAY)
               {
                  this.togglePhysics();
               }
            }
            else if(e.keyCode == 66)
            {
               Log.log("SWITCH BACKGROUND");
               if(this.mSelectedTool != SELECTED_TOOL_PLAY)
               {
                  this.addAction(ACTION_SWITCH_BACKGROUND,0,0,LevelThemeBackgrounds.getRandomBackgroundName());
               }
            }
            else if(e.keyCode == 69)
            {
               ((this.mLevelMain.parent as StateLevelEditor).mUIView as ViewLevelEditor).toggleDeleteRotateToolStatus();
               ((this.mLevelMain.parent as StateLevelEditor).mUIView as ViewLevelEditor).switchRotateAndDeleteButtons(this.mSelectedObjects.length == 0);
            }
            else if(e.keyCode == 90 || e.keyCode == 85)
            {
               if(this.mSelectedTool != LevelEditor.SELECTED_TOOL_PLAY)
               {
                  Log.log("UNDO ACTION");
                  this.addAction(LevelEditor.ACTION_UNDO,0,0,"");
               }
            }
         }
      }
      
      public function setSelectedObjectsDrag(drag:Boolean) : void
      {
         if(this.mSelectedObjectsMultipleSelection)
         {
            drag = false;
         }
         if(this.mSelectedObjectsDrag != drag || !drag)
         {
            this.mSelectedObjectsDragAllowed = false;
            this.mSelectedObjectsDragTimer = 0;
         }
         this.mSelectedObjectsDrag = drag;
         if(this.mSelectedObjectsDrag)
         {
            this.mSelectedObjectsDragX = this.mMousePositionXB2;
            this.mSelectedObjectsDragY = this.mMousePositionYB2;
         }
      }
      
      public function setSelectedObjectsMultipleSelect(activate:Boolean) : void
      {
         this.mSelectedObjectsMultipleSelection = activate;
         this.mSelectedObjectsMultipleSelectionSprite.visible = activate;
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
         var RATIO:Number = 0.25;
         var THUMBNAIL_WIDTH:Number = AngryBirdsSocial.SCREEN_WIDTH * RATIO;
         var THUMBNAIL_HEIGHT:Number = AngryBirdsSocial.SCREEN_HEIGHT * RATIO;
         var tmpBitmap:BitmapData = new BitmapData(THUMBNAIL_WIDTH,THUMBNAIL_HEIGHT);
         var matrix:Matrix = new Matrix();
         matrix.translate(this.mLevelMain.x / this.mLevelMain.scaleX,this.mLevelMain.y / this.mLevelMain.scaleY);
         var scaleX:Number = THUMBNAIL_WIDTH / AngryBirdsSocial.SCREEN_WIDTH * this.mLevelMain.scaleX;
         var scaleY:Number = THUMBNAIL_HEIGHT / AngryBirdsSocial.SCREEN_HEIGHT * this.mLevelMain.scaleY;
         matrix.scale(scaleX,scaleY);
         tmpBitmap.draw(this.mLevelMain,matrix);
         return tmpBitmap;
      }
      
      public function createScreenshotMovieClip() : MovieClip
      {
         var screenshot:Bitmap = new Bitmap(this.createScreenshot());
         var screenShotMc:MovieClip = new MovieClip();
         screenShotMc.addChild(screenshot);
         return screenShotMc;
      }
      
      public function createScreenshotAsEncodedString() : String
      {
         var jpgEncoder:JPGEncoder = new JPGEncoder(90);
         var bytes:ByteArray = jpgEncoder.encode(this.createScreenshot());
         return Base64.encodeByteArray(bytes);
      }
      
      public function storeLevelScreenshot(levelID:String) : void
      {
         AngryBirdsServer.sendScreenshot(levelID,this.createScreenshotAsEncodedString());
      }
      
      public function uploadLevel(publish:Boolean = false) : void
      {
         var obj:LevelObject = null;
         Log.log("publishLevel step 1");
         for(var i:int = 0; i < this.mLevelMain.mLevelObjects.mObjects.length; i++)
         {
            obj = this.mLevelMain.mLevelObjects.mObjects[i];
            if(obj && !obj.isGround())
            {
               this.removeSelectedObjectFromList(this.isAlreadySelected(obj));
            }
         }
         Log.log("publishLevel step 2");
         Log.log("publishLevel step 3");
         var userName:String = AngryBirdsSocial.USER.name;
         var levelName:String = " ";
         if(this.mLevelName != null)
         {
            levelName = escape(this.mLevelName);
         }
         Log.log("publishLevel step 4");
         AngryBirdsServer.uploadLevel(levelName,this.createLevelXML(levelName),publish,this.mLevelMain.mLevelData.levelID,this.levelResponseReceived);
      }
      
      private function levelResponseReceived(response:Object) : void
      {
         var levelKey:String = response.levelKey;
         AngryBirdsSocial.smLevelMain.mLevelData.levelID = levelKey;
         this.storeLevelScreenshot(levelKey);
      }
      
      public function createLevelXML(levelID:String = "Placeholder level name", addImageData:Boolean = false) : String
      {
         var strXML:String = "";
         strXML += "<Level id=\"" + levelID + "\" background=\"" + AngryBirdsSocial.smLevelMain.mLevelBackground.mLevelBackgroundInformation.mName + "\"";
         strXML += " LevelExtension=\"" + this.mLevelMain.mLevelCamera.mLevelExtension + "\"";
         strXML += " AutoCamera=\"" + (!!this.mLevelMain.mLevelCamera.mLevelAutoCamera ? "True" : "False") + "\"";
         strXML += ">" + AngryBirdsSocial.LINE_BREAK_XML;
         if(addImageData)
         {
            strXML += "<imgData>" + this.createScreenshotAsEncodedString() + "</imgData>" + AngryBirdsSocial.LINE_BREAK_XML;
         }
         strXML += AngryBirdsSocial.smLevelMain.mLevelCamera.getCamerasInXML();
         strXML += AngryBirdsSocial.smLevelMain.mLevelSlingshot.getSlingshotinXML();
         strXML += AngryBirdsSocial.smLevelMain.mLevelObjects.getLevelObjectsinXML();
         strXML += "</Level>";
         Log.log("Publish:\n" + strXML);
         return strXML;
      }
      
      public function checkLevelValidity(checkLevelCompleted:Boolean = true) : String
      {
         var obj:LevelObject = null;
         var returnStr:String = "";
         var pigFound:Boolean = false;
         var objects:Array = this.mLevelMain.mLevelObjects.mObjects;
         if(objects != null)
         {
            for each(obj in objects)
            {
               if(obj.isPig())
               {
                  pigFound = true;
                  break;
               }
            }
         }
         var birdFound:Boolean = this.mLevelMain.mLevelSlingshot.mBirds.length > 0;
         if(checkLevelCompleted && this.mLevelCompleted == false)
         {
            returnStr = "You need to Test Play!";
         }
         else if(!birdFound)
         {
            returnStr = "You need birds!";
         }
         else if(!pigFound)
         {
            returnStr = "You need pigs!";
         }
         return returnStr;
      }
      
      public function calculateLevelCost() : Number
      {
         return 0;
      }
      
      public function getExtensionCost() : Number
      {
         return (this.mLevelMain.mLevelCamera.mLevelExtension + 1) * 100;
      }
      
      public function calculateBlockCount() : Number
      {
         return this.mLevelMain.mLevelObjects.mObjects.length - 1;
      }
      
      public function getMaxBlockCount() : Number
      {
         return LEVEL_OBJECTS_LIMIT + this.mLevelMain.mLevelCamera.mLevelExtension * LEVEL_OBJECTS_LIMIT_EXTENSION;
      }
      
      public function setAutoCamera(autoCameraOn:Boolean) : void
      {
         this.mLevelMain.mLevelCamera.mLevelAutoCamera = autoCameraOn;
      }
      
      public function updateAutoCameraCoordinates() : void
      {
         var left:Number = NaN;
         var right:Number = NaN;
         var top:Number = NaN;
         var ground:Number = NaN;
         var scale:Number = NaN;
         var i:int = 0;
         var MARGIN:Number = NaN;
         var scaleNeeded:Number = NaN;
         var obj:LevelObject = null;
         var obj2:LevelSlingshotObject = null;
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
            left = (LevelCamera.EDITOR_BORDER_CASTLE_LEFT + LevelCamera.EDITOR_BORDER_CASTLE_RIGHT + this.mLevelMain.mLevelCamera.mLevelExtension * LevelCamera.EDITOR_BORDER_HORIZONTAL_RAISE) / 2;
            right = left;
            top = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            ground = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            scale = 1 - this.mLevelMain.mLevelCamera.mLevelExtension * LevelCamera.MANUAL_SCALE_STEP;
            for(i = 0; i < this.mLevelMain.mLevelObjects.mObjects.length; i++)
            {
               obj = this.mLevelMain.mLevelObjects.mObjects[i];
               if(obj && (obj.isPig() || obj.isBlock() || obj.isMiscBlock()))
               {
                  left = Math.min(left,obj.getBody().GetPosition().x);
                  right = Math.max(right,obj.getBody().GetPosition().x);
                  top = Math.min(top,obj.getBody().GetPosition().y);
               }
            }
            MARGIN = 1;
            left -= MARGIN;
            right += MARGIN;
            top -= MARGIN;
            scaleNeeded = AngryBirdsSocial.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE / (right - left);
            scale = Math.max(LevelCamera.SCALE_MIN,Math.min(scale,scaleNeeded));
            top = Math.min(top,ground - AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE);
            scaleNeeded = AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE / (ground - top);
            scale = Math.max(LevelCamera.SCALE_MIN,Math.min(scale,scaleNeeded));
            this.mLevelMain.mLevelCamera.mCastleCameraX = (left + right) / 2;
            this.mLevelMain.mLevelCamera.mCastleCameraY = (ground + top) / 2;
            this.mLevelMain.mLevelCamera.mCastleCameraScale = scale;
            left = (LevelCamera.EDITOR_BORDER_SLINGSHOT_RIGHT + LevelCamera.EDITOR_BORDER_SLINGSHOT_LEFT) / 2;
            right = left;
            top = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            ground = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            scale = 1;
            for(i = 0; i < this.mLevelMain.mLevelSlingshot.mBirds.length; i++)
            {
               obj2 = this.mLevelMain.mLevelSlingshot.mBirds[i];
               if(obj2)
               {
                  left = Math.min(left,obj2.mX);
                  right = Math.max(right,obj2.mX);
                  top = Math.min(top,obj2.mY);
               }
            }
            left = Math.min(left,this.mLevelMain.mLevelSlingshot.mX - 7);
            right = Math.max(right,this.mLevelMain.mLevelSlingshot.mX);
            top = Math.min(top,this.mLevelMain.mLevelSlingshot.mY - 7);
            MARGIN = 1;
            left -= MARGIN;
            right += MARGIN;
            top -= MARGIN;
            scaleNeeded = AngryBirdsSocial.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE / (right - left);
            scale = Math.max(LevelCamera.SCALE_MIN,Math.min(scale,scaleNeeded));
            top = Math.min(top,ground - AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE);
            scaleNeeded = AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE / (ground - top);
            scale = Math.max(LevelCamera.SCALE_MIN,Math.min(scale,scaleNeeded));
            this.mLevelMain.mLevelCamera.mSlingshotCameraX = (left + right) / 2;
            this.mLevelMain.mLevelCamera.mSlingshotCameraY = (ground + top) / 2;
            this.mLevelMain.mLevelCamera.mSlingshotCameraScale = scale;
         }
      }
      
      public function roundUpGivenObject(obj:LevelObject) : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         var objAngle:Number = NaN;
         var isStatic:Boolean = false;
         if(!USE_POSITION_GRIDS)
         {
            return;
         }
         if(obj && obj is LevelObject)
         {
            posX = obj.getBody().GetPosition().x;
            posY = obj.getBody().GetPosition().y;
            objAngle = obj.getAngle();
            isStatic = obj.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC;
            posX = LevelEditor.roundUpCoordinate(posX,isStatic);
            posY = LevelEditor.roundUpCoordinate(posY,isStatic);
            objAngle = LevelEditor.roundUpCoordinate(objAngle,isStatic);
            obj.getBody().GetPosition().x = posX;
            obj.getBody().GetPosition().y = posY;
            obj.setAngle(objAngle);
            obj.getBody().SetLinearVelocity(new b2Vec2(0,0));
            obj.getBody().SetAngularVelocity(0);
         }
      }
   }
}
