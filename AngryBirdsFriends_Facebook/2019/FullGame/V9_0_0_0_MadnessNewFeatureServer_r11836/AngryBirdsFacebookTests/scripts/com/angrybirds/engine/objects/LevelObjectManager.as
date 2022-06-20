package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemMaterial;
   import com.angrybirds.data.level.item.PolygonShapeDefinition;
   import com.angrybirds.data.level.item.RectangleShapeDefinition;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.angrybirds.data.level.object.DestroyAttachedJoint;
   import com.angrybirds.data.level.object.LevelJoint;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.data.level.object.LevelObjectModelBehaviorData;
   import com.angrybirds.engine.LevelBorders;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.ScoreCollector;
   import com.angrybirds.engine.leveleventmanager.LevelEvent;
   import com.angrybirds.engine.levels.ILevelLogic;
   import com.angrybirds.engine.objects.utils.ObjectDistanceResults;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleBase;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.Joints.b2Joint;
   import com.rovio.Box2D.Dynamics.Joints.b2JointEdge;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJoint;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.graphics.Animation;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.sound.SoundEngine;
   import com.rovio.utils.HashMap;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.display.Image;
   import starling.display.Quad;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
   public class LevelObjectManager implements ILevelObjectUpdateManager
   {
      
      private static const VISUALIZE_JOINTS:Boolean = false;
      
      public static const INITIAL_DYNAMIC_OBJECT_ID:int = 1000000000;
      
      public static const ID_UNDEFINED:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
      
      public static const OBJECT_STATE_DESTROY:String = "onDestroy";
       
      
      protected var mObjects:Vector.<LevelObjectBase>;
      
      protected var mSensors:Vector.<LevelObjectSensor>;
      
      protected var mParticles:Vector.<LevelParticleBase>;
      
      protected var mObjectsViaInstaceName:HashMap;
      
      private var mDynamicObjectId:int = 1000000000;
      
      public var mLevelMain:LevelMain;
      
      protected var mExplosions:Vector.<LevelExplosion>;
      
      protected var mMainSprite:starling.display.Sprite;
      
      protected var mTextureSprite:starling.display.Sprite;
      
      protected var mObjectSprite:starling.display.Sprite;
      
      protected var mInFrontObjectSprite:starling.display.Sprite;
      
      protected var mBackgroundSprite:starling.display.Sprite;
      
      protected var mOverlaySprite:starling.display.Sprite;
      
      protected var mGroundTextures:Vector.<Texture>;
      
      protected var mJoints:Vector.<LevelJoint>;
      
      protected var mTextureIndex:int = 1;
      
      protected var mDestroyAttachedJoints:Vector.<DestroyAttachedJoint>;
      
      protected var mBirdCount:int = 0;
      
      protected var mPigsKilled:int = 0;
      
      private var mBirdsShot:int = 0;
      
      private var mObjectModel:LevelObjectModel;
      
      protected var mActiveObject:LevelObject;
      
      private var mGroundTextureEnabled:Boolean = true;
      
      private var mCollisionsEnabled:Boolean = true;
      
      protected var mLevelLogic:ILevelLogic;
      
      private var mLevelInitialized:Boolean = false;
      
      private var mRandSlippingObjects:Array;
      
      private var mTempAnimatableLevelObjects:Array;
      
      public function LevelObjectManager(levelMain:LevelMain, levelModel:LevelModel, sprite:starling.display.Sprite, groundType:String)
      {
         var backgroundX:Number = NaN;
         var backgroundY:Number = NaN;
         var i:int = 0;
         var groundObject:LevelObjectBase = null;
         this.mObjects = new Vector.<LevelObjectBase>();
         this.mSensors = new Vector.<LevelObjectSensor>();
         this.mParticles = new Vector.<LevelParticleBase>();
         this.mObjectsViaInstaceName = new HashMap();
         this.mExplosions = new Vector.<LevelExplosion>();
         this.mGroundTextures = new Vector.<Texture>();
         this.mDestroyAttachedJoints = new Vector.<DestroyAttachedJoint>();
         this.mObjectModel = new LevelObjectModel();
         super();
         this.mLevelMain = levelMain;
         this.mMainSprite = sprite;
         this.mMainSprite.touchable = false;
         this.mCollisionsEnabled = true;
         this.mGroundTextureEnabled = true;
         this.mTextureSprite = new starling.display.Sprite();
         this.mObjectSprite = new starling.display.Sprite();
         this.mInFrontObjectSprite = new starling.display.Sprite();
         this.mOverlaySprite = new starling.display.Sprite();
         this.mBackgroundSprite = new starling.display.Sprite();
         this.mMainSprite.addChild(this.mTextureSprite);
         this.mMainSprite.addChild(this.mObjectSprite);
         this.mMainSprite.addChild(this.mInFrontObjectSprite);
         ObjectDistanceResults.init(4,2);
         this.mTempAnimatableLevelObjects = [];
         this.addLevelObjects(levelModel);
         if(levelModel.hasGround)
         {
            backgroundX = (this.mLevelMain.borders.leftBorder + this.mLevelMain.borders.rightBorder) / 2;
            backgroundY = 0 + LevelBorders.LEVEL_BORDER_GROUND_THICKNESS;
            for(i = 0; i < 5; i++)
            {
               groundObject = this.addObject(groundType,backgroundX,backgroundY,0,LevelObjectManager.ID_UNDEFINED);
               if(groundObject != null)
               {
                  break;
               }
            }
         }
      }
      
      public function get overlaySprite() : starling.display.Sprite
      {
         return this.mOverlaySprite;
      }
      
      public function get inFrontObjectSprite() : starling.display.Sprite
      {
         return this.mInFrontObjectSprite;
      }
      
      public function get objectsSprite() : starling.display.Sprite
      {
         return this.mObjectSprite;
      }
      
      public function get backgroundSprite() : starling.display.Sprite
      {
         return this.mBackgroundSprite;
      }
      
      public function get mainSprite() : starling.display.Sprite
      {
         return this.mMainSprite;
      }
      
      public function get activeObject() : LevelObject
      {
         return this.mActiveObject;
      }
      
      public function get objectCount() : int
      {
         return this.mObjects.length;
      }
      
      public function set levelLogic(levelLogic:ILevelLogic) : void
      {
         if(levelLogic != this.mLevelLogic)
         {
            this.mLevelLogic = levelLogic;
            if(this.mLevelInitialized && this.mLevelLogic)
            {
               this.mLevelLogic.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.mLevelInitialized)
         {
            this.mLevelInitialized = true;
            if(this.mLevelLogic)
            {
               this.mLevelLogic.levelStarted();
            }
         }
      }
      
      public function getLevelItem(itemId:String) : LevelItem
      {
         return this.mLevelMain.levelItemManager.getItem(itemId);
      }
      
      public function activateSpecialPower(targetX:Number, targetY:Number) : Boolean
      {
         var result:Boolean = false;
         if(this.mActiveObject)
         {
            result = this.mActiveObject.activateSpecialPower(this,targetX,targetY);
         }
         return result;
      }
      
      public function addLevelObject(item:LevelObjectModel) : void
      {
         var scale:Number = 1;
         var levelItem:LevelItem = this.mLevelMain.levelItemManager.getItem(item.type);
         if(levelItem)
         {
            scale = levelItem.scale;
         }
         this.addObjectFromModel(item,item.id,false,false,false,scale);
      }
      
      protected function addLevelObjects(levelModel:LevelModel) : void
      {
         var item:LevelObjectModel = null;
         var scale:Number = NaN;
         var levelItem:LevelItem = null;
         var jointModel:LevelJointModel = null;
         var i:int = 0;
         for(i = 0; i < levelModel.objectCount; i++)
         {
            item = levelModel.getObject(i);
            scale = 1;
            levelItem = this.mLevelMain.levelItemManager.getItem(item.type);
            if(levelItem)
            {
               scale = levelItem.scale;
            }
            this.addObjectFromModel(item,item.id,false,false,false,scale);
         }
         this.generateTerrainTexture();
         this.setTexture(true);
         this.mJoints = new Vector.<LevelJoint>();
         for(i = 0; i < levelModel.jointCount; i++)
         {
            jointModel = levelModel.getJoint(i);
            this.createJoint(jointModel);
         }
      }
      
      public function dispose() : void
      {
         var texture:Texture = null;
         ObjectDistanceResults.dispose();
         while(this.mObjects.length > 0)
         {
            this.removeObjectWithIndex(0,false,true);
         }
         while(this.mParticles.length > 0)
         {
            this.removeParticleWithIndex(0);
         }
         this.mObjects = null;
         this.mSensors = null;
         this.mParticles = null;
         this.mObjectsViaInstaceName = null;
         this.mDestroyAttachedJoints = null;
         this.mTempAnimatableLevelObjects = null;
         if(this.mMainSprite)
         {
            this.mMainSprite.dispose();
            this.mMainSprite = null;
         }
         this.mTextureSprite = null;
         this.mObjectSprite = null;
         if(this.mInFrontObjectSprite)
         {
            this.mInFrontObjectSprite.dispose();
            this.mInFrontObjectSprite = null;
         }
         if(this.mOverlaySprite)
         {
            this.mOverlaySprite.dispose();
            this.mOverlaySprite = null;
         }
         if(this.mBackgroundSprite)
         {
            this.mBackgroundSprite.dispose();
            this.mBackgroundSprite = null;
         }
         while(this.mGroundTextures.length > 0)
         {
            texture = this.mGroundTextures.pop();
            this.mLevelMain.textureManager.unregisterBitmapDataTexture(texture);
         }
      }
      
      public function setTexture(isOn:Boolean) : void
      {
         this.mTextureSprite.visible = isOn;
         this.mBackgroundSprite.visible = isOn;
      }
      
      public function generateTerrainTexture() : void
      {
         var object:LevelObjectBase = null;
         var rect:Rectangle = null;
         var levelObject:LevelObject = null;
         var shape:ShapeDefinition = null;
         var shapeDimension:Number = NaN;
         var textureType:String = null;
         var groundRect:Rectangle = null;
         var backgroundRect:Rectangle = null;
         var terrainTextures:Vector.<LevelObject> = new Vector.<LevelObject>();
         var bgTextures:Vector.<LevelObject> = new Vector.<LevelObject>();
         for each(object in this.mObjects)
         {
            levelObject = object as LevelObject;
            if(levelObject && levelObject.isTexture())
            {
               shape = levelObject.levelItem.shape;
               shapeDimension = shape.getDimension() / LevelMain.PIXEL_TO_B2_SCALE;
               rect = new Rectangle(object.sprite.x - shapeDimension / 2,object.sprite.y - shapeDimension / 2,shapeDimension,shapeDimension);
               textureType = levelObject.getTextureType();
               if(textureType == LevelItem.TEXTURE_TYPE_BG)
               {
                  bgTextures.push(levelObject);
                  if(backgroundRect == null)
                  {
                     backgroundRect = new Rectangle(rect.x,rect.y,rect.width,rect.height);
                  }
                  else
                  {
                     backgroundRect = backgroundRect.union(rect);
                  }
               }
               else
               {
                  terrainTextures.push(levelObject);
                  if(groundRect == null)
                  {
                     groundRect = new Rectangle(rect.x,rect.y,rect.width,rect.height);
                  }
                  else
                  {
                     groundRect = groundRect.union(rect);
                  }
               }
            }
         }
         if(groundRect)
         {
            this.addTerrain(groundRect,terrainTextures,this.getLevelTextureName(),this.mTextureSprite);
         }
         if(backgroundRect)
         {
            this.addTerrain(backgroundRect,bgTextures,this.getLevelBackgroundTextureName(),this.mBackgroundSprite);
         }
      }
      
      private function addTerrain(rect:Rectangle, objects:Vector.<LevelObject>, textureName:String, parentSprite:starling.display.Sprite) : void
      {
         var leftBorder:Number = this.mLevelMain.camera.borderLeft / LevelMain.PIXEL_TO_B2_SCALE;
         var rightBorder:Number = this.mLevelMain.camera.borderRight / LevelMain.PIXEL_TO_B2_SCALE;
         var borderCenter:Number = (leftBorder + rightBorder) / 2;
         var border:Number = (rightBorder - leftBorder) / 2;
         leftBorder = borderCenter - border;
         rightBorder = borderCenter + border;
         rect.left = Math.max(rect.left,leftBorder) - 4;
         rect.right = Math.min(rect.right,rightBorder) + 4;
         if(rect.left >= rect.right - 1)
         {
            return;
         }
         var scale:Number = 1;
         while(rect.width > 2048 || rect.height > 2048)
         {
            rect.left /= 1.05;
            rect.top /= 1.05;
            rect.right /= 1.05;
            rect.bottom /= 1.05;
            scale /= 1.05;
         }
         var width:int = rect.width;
         var height:int = rect.height;
         var left:int = rect.left;
         var top:int = rect.top;
         var groundBitmap:BitmapData = new BitmapData(width,height,true,0);
         var textureScale:Number = this.getLevelTextureScale();
         this.fillLevelTextureBitmapData(groundBitmap.rect,groundBitmap,scale * textureScale,textureName);
         var maskBitmap:BitmapData = this.generateGroundTextureMask(objects,width,height,left,top,scale);
         groundBitmap.copyChannel(maskBitmap,maskBitmap.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         var texture:Texture = this.mLevelMain.textureManager.getTextureFromBitmapData(groundBitmap);
         this.mGroundTextures.push(texture);
         var image:Image = new Image(texture);
         image.x = left / scale;
         image.y = top / scale;
         image.scaleX = 1 / scale;
         image.scaleY = 1 / scale;
         parentSprite.addChild(image);
         maskBitmap.dispose();
      }
      
      private function generateGroundTextureMask(textures:Vector.<LevelObject>, width:int, height:int, left:int, top:int, scale:Number) : BitmapData
      {
         var object:LevelObject = null;
         var currentScale:Number = NaN;
         var shape:ShapeDefinition = null;
         var maskBitmap:BitmapData = new BitmapData(width,height,true,0);
         var mask:BitmapData = new BitmapData(1,1,true,4294967295);
         var matrix:Matrix = new Matrix();
         for each(object in textures)
         {
            matrix.identity();
            currentScale = scale;
            shape = object.levelItem.shape;
            if(shape is RectangleShapeDefinition)
            {
               this.drawRectangleShapeOnBitmap(shape,maskBitmap,mask,matrix,object.sprite.x,object.sprite.y,object.getAngle(),scale,currentScale,left,top);
            }
            else if(shape is PolygonShapeDefinition)
            {
               if((shape as PolygonShapeDefinition).vertices.length == 4)
               {
                  this.drawRectangleShapeOnBitmap(shape,maskBitmap,mask,matrix,object.sprite.x,object.sprite.y,object.getAngle(),scale,currentScale,left,top);
               }
               else if((shape as PolygonShapeDefinition).vertices.length == 3)
               {
                  this.drawTriangleShapeOnBitmap(shape as PolygonShapeDefinition,maskBitmap,matrix,object.sprite.x,object.sprite.y,object.getAngle(),scale,currentScale,left,top);
               }
            }
            else if(shape is CircleShapeDefinition)
            {
               this.drawCircleShapeOnBitmap(shape as CircleShapeDefinition,maskBitmap,matrix,object.sprite.x,object.sprite.y,scale,currentScale,left,top);
            }
         }
         mask.dispose();
         return maskBitmap;
      }
      
      protected function drawRectangleShapeOnBitmap(shape:ShapeDefinition, maskBitmap:BitmapData, mask:BitmapData, matrix:Matrix, x:Number, y:Number, angle:Number, scale:Number, currentScale:Number, left:Number, top:Number) : void
      {
         var shapeWidth:Number = shape.getWidth() / LevelMain.PIXEL_TO_B2_SCALE * currentScale;
         var shapeHeight:Number = shape.getHeight() / LevelMain.PIXEL_TO_B2_SCALE * currentScale;
         matrix.scale(shapeWidth,shapeHeight);
         matrix.translate(-shapeWidth / 2,-shapeHeight / 2);
         matrix.rotate(angle);
         matrix.translate(x * scale - left,y * scale - top);
         maskBitmap.draw(mask,matrix);
      }
      
      protected function drawTriangleShapeOnBitmap(shape:PolygonShapeDefinition, maskBitmap:BitmapData, matrix:Matrix, x:Number, y:Number, angle:Number, scale:Number, currentScale:Number, left:Number, top:Number) : void
      {
         var vertex:b2Vec2 = null;
         var sprite:flash.display.Sprite = new flash.display.Sprite();
         sprite.graphics.beginFill(16777215);
         var vertices:Vector.<Number> = new Vector.<Number>();
         for(var i:int = 0; i < shape.vertices.length; i++)
         {
            vertex = shape.vertices[i];
            vertices.push(vertex.x / LevelMain.PIXEL_TO_B2_SCALE * currentScale,vertex.y / LevelMain.PIXEL_TO_B2_SCALE * currentScale);
         }
         sprite.graphics.drawTriangles(vertices);
         sprite.graphics.endFill();
         matrix.rotate(angle);
         matrix.translate(x * scale - left,y * scale - top);
         maskBitmap.draw(sprite,matrix);
         sprite.graphics.clear();
         sprite = null;
      }
      
      protected function drawCircleShapeOnBitmap(shape:CircleShapeDefinition, maskBitmap:BitmapData, matrix:Matrix, x:Number, y:Number, scale:Number, currentScale:Number, left:Number, top:Number) : void
      {
         var radius:Number = shape.radius;
         var shapeRadius:Number = radius / LevelMain.PIXEL_TO_B2_SCALE * currentScale;
         var sprite:flash.display.Sprite = new flash.display.Sprite();
         sprite.graphics.beginFill(16777215);
         sprite.graphics.drawCircle(shapeRadius,shapeRadius,shapeRadius);
         sprite.graphics.endFill();
         matrix.translate(x * scale - left - shapeRadius,y * scale - top - shapeRadius);
         maskBitmap.draw(sprite,matrix);
         sprite.graphics.clear();
         sprite = null;
      }
      
      protected function getLevelTextureName() : String
      {
         return this.mLevelMain.background.getGroundTextureName();
      }
      
      protected function getLevelBackgroundTextureName() : String
      {
         return this.mLevelMain.background.getBackgroundTextureName();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function fillLevelTextureBitmapData(rect:Rectangle, bitmapData:BitmapData, scale:Number, textureName:String) : void
      {
         var textureBitmap:BitmapData = null;
         var transform:Matrix = null;
         var TEXTURE_WIDTH:int = 0;
         var TEXTURE_HEIGHT:int = 0;
         var startIndexY:int = 0;
         var lastIndexY:int = 0;
         var startIndexX:int = 0;
         var lastIndexX:int = 0;
         var aX:int = 0;
         var aY:int = 0;
         var texture:PivotTexture = this.mLevelMain.backgroundTextureManager.getTexture(textureName);
         if(texture)
         {
            textureBitmap = new BitmapData(texture.bitmapData.width * scale,texture.bitmapData.height * scale);
            transform = new Matrix();
            transform.scale(scale,scale);
            textureBitmap.draw(texture.bitmapData,transform,null,null,null,true);
            TEXTURE_WIDTH = textureBitmap.width;
            TEXTURE_HEIGHT = textureBitmap.height;
            startIndexY = rect.top / TEXTURE_HEIGHT;
            if(rect.top < 0)
            {
               startIndexY--;
            }
            lastIndexY = rect.bottom / TEXTURE_HEIGHT;
            lastIndexY++;
            startIndexX = rect.left / TEXTURE_WIDTH;
            if(rect.left < 0)
            {
               startIndexX--;
            }
            lastIndexX = rect.right / TEXTURE_WIDTH;
            lastIndexX++;
            for(aX = startIndexX; aX < lastIndexX; aX++)
            {
               for(aY = startIndexY; aY < lastIndexY; aY++)
               {
                  bitmapData.copyPixels(textureBitmap,textureBitmap.rect,new Point(aX * TEXTURE_WIDTH,aY * TEXTURE_HEIGHT));
               }
            }
            textureBitmap.dispose();
         }
      }
      
      protected function addObjectBird(model:LevelObjectModel, sprite:starling.display.Sprite, animation:Animation, levelItem:LevelItem, scale:Number = 1.0, tryToScream:Boolean = true) : LevelObjectBird
      {
         var obj:LevelObjectBird = null;
         var itemName:String = model.type;
         var x:Number = model.x;
         var y:Number = model.y;
         var rotation:Number = model.angle;
         switch(itemName)
         {
            case "BIRD_BLACK":
               obj = new LevelObjectBirdBlack(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_BLUE":
               obj = new LevelObjectBirdBlue(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_GREEN":
               obj = new LevelObjectBirdGreen(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_WHITE":
               obj = new LevelObjectBirdWhite(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_YELLOW":
               obj = new LevelObjectBirdYellow(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_RED":
               obj = new LevelObjectBirdRed(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_REDBIG":
               obj = new LevelObjectBirdBigRed(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_ORANGE":
               obj = new LevelObjectBirdOrange(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_SARDINE":
               obj = new LevelObjectSardine(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            case "BIRD_MIGHTY_EAGLE":
               obj = new LevelObjectMightyEagle(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
               break;
            default:
               obj = new LevelObjectBird(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,tryToScream);
         }
         return obj;
      }
      
      public function hasBirds() : Boolean
      {
         return this.mBirdCount > 0;
      }
      
      protected function addObjectPig(model:LevelObjectModel, sprite:starling.display.Sprite, animation:Animation, levelItem:LevelItem, scale:Number = 1.0) : LevelObjectPig
      {
         return new LevelObjectPig(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
      }
      
      public function addObject(type:String, x:Number, y:Number, rotation:Number, id:int, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0, overlay:Boolean = false, inFrontObject:Boolean = false, angularVelocity:Number = 0.0, linearVelocity:b2Vec2 = null, angularDamping:Number = 0.0, linearDamping:Number = 0.0, awake:Boolean = true, health:Number = 1.0) : LevelObjectBase
      {
         this.mObjectModel = new LevelObjectModel();
         this.mObjectModel.type = type;
         this.mObjectModel.x = x;
         this.mObjectModel.y = y;
         this.mObjectModel.angle = rotation;
         this.mObjectModel.areaWidth = 0;
         this.mObjectModel.areaHeight = 0;
         this.mObjectModel.angularVelocity = angularVelocity;
         this.mObjectModel.angularDamping = angularDamping;
         this.mObjectModel.linearDamping = linearDamping;
         this.mObjectModel.awake = awake;
         this.mObjectModel.health = health;
         return this.addObjectFromModel(this.mObjectModel,id,trail,activeObject,tryToScream,scale,overlay,inFrontObject);
      }
      
      public function addObjectWithArea(type:String, x:Number, y:Number, rotation:Number, id:int, areaWidth:Number = 0.0, areaHeight:Number = 0.0, scale:Number = 1.0, overlay:Boolean = false, inFrontObject:Boolean = false) : LevelObjectBase
      {
         this.mObjectModel = new LevelObjectModel();
         this.mObjectModel.type = type;
         this.mObjectModel.x = x;
         this.mObjectModel.y = y;
         this.mObjectModel.angle = rotation;
         this.mObjectModel.areaWidth = areaWidth;
         this.mObjectModel.areaHeight = areaHeight;
         return this.addObjectFromModel(this.mObjectModel,id,false,false,false,scale,overlay,inFrontObject);
      }
      
      protected function addObjectFromModel(model:LevelObjectModel, id:int, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0, overlay:Boolean = false, inFrontObject:Boolean = false) : LevelObjectBase
      {
         if(this.isFoundEasterEgg(model.type))
         {
            return null;
         }
         var objSprite:starling.display.Sprite = new starling.display.Sprite();
         var obj:LevelObjectBase = this.createObject(model,id,objSprite,tryToScream,scale);
         if(obj == null)
         {
            return null;
         }
         if(obj is LevelObject && (obj as LevelObject).isTexture())
         {
            objSprite.visible = !this.mGroundTextureEnabled;
         }
         if(obj is LevelObjectBird && !(obj is LevelObjectMightyEagle))
         {
            ++this.mBirdCount;
         }
         if(!overlay)
         {
            if(inFrontObject)
            {
               this.mInFrontObjectSprite.addChildSorted(objSprite);
            }
            else
            {
               this.mObjectSprite.addChildSorted(objSprite);
            }
         }
         else
         {
            this.mOverlaySprite.addChildSorted(objSprite);
         }
         if(trail)
         {
            this.mLevelMain.addTrailingObject(obj);
         }
         if(activeObject)
         {
            this.mActiveObject = LevelObject(obj);
         }
         return obj;
      }
      
      protected function isFoundEasterEgg(modelType:String) : Boolean
      {
         return false;
      }
      
      private function createObject(model:LevelObjectModel, id:int, sprite:starling.display.Sprite, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObjectBase
      {
         var behaviorsData:Vector.<LevelObjectModelBehaviorData> = null;
         var behaviorData:LevelObjectModelBehaviorData = null;
         var canHandleInBehaviorManager:Boolean = false;
         var levelObject:LevelObject = null;
         if(id == ID_NEXT_FREE)
         {
            id = this.mDynamicObjectId;
            ++this.mDynamicObjectId;
         }
         else
         {
            if(id >= INITIAL_DYNAMIC_OBJECT_ID)
            {
               throw new Error("Invalid object id: " + id + ". Has to be less than " + INITIAL_DYNAMIC_OBJECT_ID);
            }
            if(this.getObjectWithId(id))
            {
               throw new Error("Object with id: " + id + " already added!");
            }
         }
         var obj:LevelObjectBase = this.createObjectInstance(model,sprite,tryToScream,scale);
         if(obj is LevelObject)
         {
            if((obj as LevelObject).hasSpecialBehavior)
            {
               behaviorsData = (obj as LevelObject).levelObjectModel.getBehaviorsData();
               for each(behaviorData in behaviorsData)
               {
                  canHandleInBehaviorManager = this.mLevelMain.registerBehaviorForEvent(behaviorData.type,behaviorData.event);
                  if(!canHandleInBehaviorManager)
                  {
                     (obj as LevelObject).registerForLevelEvents(this.mLevelMain,behaviorData);
                  }
               }
            }
         }
         if(obj is LevelObjectBird)
         {
            ++this.mBirdsShot;
         }
         if(obj)
         {
            levelObject = obj as LevelObject;
            if(obj is LevelParticleBase)
            {
               this.mParticles.push(obj);
            }
            else
            {
               if(levelObject)
               {
                  levelObject.assignId(id);
                  this.mObjectsViaInstaceName[model.instanceName] = obj;
               }
               this.mObjects.push(obj);
               if(obj is LevelObjectSensor)
               {
                  this.mSensors.push(obj);
               }
            }
            if(this.mLevelLogic)
            {
               this.mLevelLogic.objectCreated(obj);
            }
         }
         return obj;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(model:LevelObjectModel, sprite:starling.display.Sprite, animation:Animation, levelItem:LevelItem, explosionType:int, scale:Number = 1.0) : LevelObjectBase
      {
         return new LevelObjectBlockBomb(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,explosionType);
      }
      
      protected function createWhiteBirdsEggInstance(model:LevelObjectModel, sprite:starling.display.Sprite, animation:Animation, levelItem:LevelItem, explosionType:int, scale:Number = 1.0) : LevelObjectBase
      {
         return new LevelObjectWhiteBirdsEgg(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,explosionType);
      }
      
      protected function createObjectInstance(model:LevelObjectModel, sprite:starling.display.Sprite, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObjectBase
      {
         var levelItem:LevelItem = this.mLevelMain.levelItemManager.getItem(model.type);
         if(!levelItem)
         {
            return null;
         }
         var animationName:String = levelItem.itemName;
         if(animationName.substr(0,13) == "BLOCK_STATIC_")
         {
            animationName = this.getCommonTextureName();
         }
         var animation:Animation = this.mLevelMain.animationManager.getAnimation(animationName);
         var obj:LevelObjectBase = null;
         if(model.type.indexOf("BIRD") == 0)
         {
            obj = this.addObjectBird(model,sprite,animation,levelItem,scale,tryToScream);
         }
         else if(levelItem.itemType == LevelItem.ITEM_TYPE_PIG)
         {
            obj = this.addObjectPig(model,sprite,animation,levelItem,scale);
            obj.isLevelGoal = true;
         }
         else if(levelItem.itemType == LevelItem.ITEM_TYPE_BLOCK || levelItem.itemType == LevelItem.ITEM_TYPE_MISC)
         {
            if(levelItem.itemName.indexOf("TNT") >= 0)
            {
               obj = this.createBombBlockInstance(model,sprite,animation,levelItem,LevelExplosion.TYPE_TNT,scale);
            }
            else if(levelItem.itemName == LevelObjectBirdWhite.WHITE_BIRD_EGG_ITEM_ID)
            {
               obj = this.createWhiteBirdsEggInstance(model,sprite,animation,levelItem,LevelExplosion.TYPE_WHITE_BIRD_EGG,scale);
            }
            else
            {
               obj = new LevelObjectBlock(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale,levelItem.particleJSONId,levelItem.particleVariationCount);
            }
         }
         else
         {
            obj = new LevelObject(sprite,animation,this.mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         return obj;
      }
      
      public function addScore(score:int, scoreType:String, showScore:Boolean, x:Number, y:Number, materialId:int, floatingScoreFont:String) : void
      {
         this.mLevelMain.addScore(score,ScoreCollector.SCORE_TYPE_DAMAGE,showScore,x,y,materialId,floatingScoreFont);
      }
      
      public function addParticle(particleName:String, particleGroup:int, particleType:int, x:Number, y:Number, lifeTime:Number, text:String, material:int, speedX:Number = 0, speedY:Number = 0, gravity:Number = 0, rotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:int = -1, defaultClearAfterPlay:Boolean = false) : void
      {
         this.mLevelMain.particles.addParticle(particleName,particleGroup,particleType,x,y,lifeTime,text,material,speedX,speedY,gravity,rotation,scale,defaultAutoPlayFps,defaultClearAfterPlay);
      }
      
      public function addSimpleParticle(particleJSONId:String, particleName:String, particleGroup:int, particleType:int, x:Number, y:Number, lifeTime:Number, text:String, material:int, speedX:Number = 0, speedY:Number = 0, gravity:Number = 0, rotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:int = -1, defaultClearAfterPlay:Boolean = false) : void
      {
         this.mLevelMain.particles.addSimpleParticle(particleJSONId,particleName,particleGroup,particleType,x,y,lifeTime,text,material,speedX,speedY,gravity,rotation,scale,defaultAutoPlayFps,defaultClearAfterPlay);
      }
      
      public function addScalingParticle(particleJSONId:String, particleGroup:int, particleType:int, startScalingLifetimePercentage:Number, x:Number, y:Number, lifeTime:Number, material:int, speedX:Number = 0, speedY:Number = 0, gravity:Number = 0, rotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:int = -1, defaultClearAfterPlay:Boolean = false) : void
      {
         this.mLevelMain.particles.addScalingParticle(particleJSONId,particleGroup,particleType,startScalingLifetimePercentage,x,y,lifeTime,material,speedX,speedY,gravity,rotation,scale,defaultAutoPlayFps,defaultClearAfterPlay);
      }
      
      public function removeJointsForObject(obj:LevelObject) : void
      {
         var joint:LevelJoint = null;
         var topJoint:LevelJoint = null;
         var objA:LevelObjectBase = null;
         var objB:LevelObjectBase = null;
         var id:int = obj.id;
         for(var i:int = this.mJoints.length - 1; i >= 0; i--)
         {
            joint = this.mJoints[i];
            if(this.mJoints[i].id1 == id || this.mJoints[i].id2 == id)
            {
               if(joint.B2Joint)
               {
                  objA = joint.B2Joint.GetBodyA().GetUserData() as LevelObjectBase;
                  objB = joint.B2Joint.GetBodyB().GetUserData() as LevelObjectBase;
                  if(objA)
                  {
                     objA.attachedJointRemoved(objB);
                  }
                  if(objB)
                  {
                     objB.attachedJointRemoved(objA);
                  }
               }
               topJoint = this.mJoints.pop();
               if(i < this.mJoints.length)
               {
                  this.mJoints[i] = topJoint;
               }
               this.removeJoint(joint);
            }
         }
      }
      
      protected function createJoint(jointModel:LevelJointModel, isNewJoint:Boolean = false) : LevelJoint
      {
         var id1:int = jointModel.id1;
         var id2:int = jointModel.id2;
         var joint:LevelJoint = LevelJoint.createJoint(jointModel);
         joint.setValuesToDefault = isNewJoint;
         this.mJoints.push(joint);
         var obj1:LevelObjectBase = this.getObjectWithId(id1);
         var obj2:LevelObjectBase = this.getObjectWithId(id2);
         if(obj1 && obj2)
         {
            if(joint.type != LevelJointModel.DESTROY_ATTACHED)
            {
               joint.B2Joint = this.mLevelMain.mLevelEngine.mWorld.CreateJoint(joint.getJointDefinition(obj1,obj2));
               if(joint.type == LevelJointModel.WELD_JOINT && joint.destroyChild)
               {
                  this.mDestroyAttachedJoints.push(new DestroyAttachedJoint(id1,id2,joint.annihilationTime,jointModel.isOneWayDestroyed,jointModel.distanceToDestroyChild));
               }
            }
            else
            {
               this.mDestroyAttachedJoints.push(new DestroyAttachedJoint(id1,id2,joint.annihilationTime,jointModel.isOneWayDestroyed,jointModel.distanceToDestroyChild));
            }
            obj1.attachedJointCreated(obj2);
            obj2.attachedJointCreated(obj1);
         }
         return joint;
      }
      
      protected function removeJoint(joint:LevelJoint) : void
      {
         if(joint.B2Joint)
         {
            this.mLevelMain.mLevelEngine.mWorld.DestroyJoint(joint.B2Joint);
         }
         if(joint.debug_quad)
         {
            if(this.mObjectSprite.contains(joint.debug_quad))
            {
               this.mObjectSprite.removeChild(joint.debug_quad,true);
            }
         }
      }
      
      public function addExplosion(type:int, x:Number, y:Number, ignoredObjectId:int = -1) : void
      {
         this.mExplosions.push(LevelExplosion.createExplosion(type,x,y,ignoredObjectId));
         this.playExplosionSound(type);
      }
      
      protected function playExplosionSound(type:int) : void
      {
         SoundEngine.playSound("tnt_box_explodes","ChannelExplosions");
      }
      
      public function addCustomExplosion(x:Number, y:Number, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, objectIdToIgnore:int = -1, showParticleEffect:Boolean = true, playSound:Boolean = true) : void
      {
         this.mExplosions.push(LevelExplosion.createCustomExplosion(x,y,pushRadius,push,damageRadius,damage,objectIdToIgnore,showParticleEffect));
         if(playSound)
         {
            SoundEngine.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      public function getForceAtPoint(x:Number, y:Number, radius:Number, result:b2Vec2) : b2Vec2
      {
         if(!result)
         {
            result = new b2Vec2();
         }
         result.SetV(this.mLevelMain.mLevelEngine.mWorld.GetGravity());
         return result;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         return this.mLevelMain.timeSpeedMultiplier;
      }
      
      public function getObjectIndexFromPoint(x:Number, y:Number) : int
      {
         var obj:LevelObject = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.isInCoordinates(x,y))
            {
               return i;
            }
         }
         return -1;
      }
      
      public function getObjectFromPoint(x:Number, y:Number) : LevelObject
      {
         var obj:LevelObject = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj)
            {
               if(obj.isInCoordinates(x,y))
               {
                  return obj;
               }
            }
         }
         return null;
      }
      
      public function getObjectsFromPoint(x:Number, y:Number) : Vector.<LevelObject>
      {
         var obj:LevelObject = null;
         var result:Vector.<LevelObject> = new Vector.<LevelObject>();
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.isInCoordinates(x,y))
            {
               result.push(obj);
            }
         }
         return result;
      }
      
      public function getObject(index:int) : LevelObjectBase
      {
         return this.mObjects[index];
      }
      
      public function getObjectWithId(id:int) : LevelObject
      {
         var levelObjectBase:LevelObjectBase = null;
         var levelObject:LevelObject = null;
         for each(levelObjectBase in this.mObjects)
         {
            levelObject = levelObjectBase as LevelObject;
            if(levelObject && levelObject.id == id)
            {
               return levelObject;
            }
         }
         return null;
      }
      
      public function getObjectWithInstanceName(name:String) : LevelObject
      {
         return this.mObjectsViaInstaceName[name];
      }
      
      public function renderObjects(deltaTimeMilliSeconds:Number, physicsStepMilliSeconds:Number, physicsTimeOffsetMilliSeconds:Number) : void
      {
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            this.mObjects[i].render(deltaTimeMilliSeconds,physicsStepMilliSeconds,physicsTimeOffsetMilliSeconds);
         }
         this.updateParticles(deltaTimeMilliSeconds);
         for(i = this.mParticles.length - 1; i >= 0; i--)
         {
            this.mParticles[i].render(deltaTimeMilliSeconds,physicsStepMilliSeconds,physicsTimeOffsetMilliSeconds);
         }
      }
      
      protected function getExplosionDamageMultiplier(distance:Number, maximumDistance:Number) : Number
      {
         return 1 / distance;
      }
      
      protected function getExplosionDistanceToObject(explosionX:Number, explosionY:Number, object:LevelObject) : ObjectDistanceResults
      {
         var pos:b2Vec2 = object.getBody().GetPosition();
         var distX:Number = pos.x - explosionX;
         var distY:Number = pos.y - explosionY;
         var dist:Number = Math.sqrt(distX * distX + distY * distY);
         var distance:ObjectDistanceResults = ObjectDistanceResults.getObject();
         distance.distance = dist;
         distance.contact.x = pos.x;
         distance.contact.y = pos.y;
         return distance;
      }
      
      protected function applyExplosionDamage(object:LevelObject, damage:Number, addScore:Boolean = false) : void
      {
         object.applyDamage(damage,this,null,addScore);
      }
      
      protected function ignoreExplosion(object:LevelObject, explosionType:int) : Boolean
      {
         return false;
      }
      
      protected function updateExplosions() : void
      {
         var explosion:LevelExplosion = null;
         var pushRadius:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         var damage:Number = NaN;
         var objectBase:LevelObjectBase = null;
         var object:LevelObject = null;
         var dist:ObjectDistanceResults = null;
         var push:Number = NaN;
         var pushX:Number = NaN;
         var pushY:Number = NaN;
         var objectDamage:Number = NaN;
         if(!this.mCollisionsEnabled)
         {
            return;
         }
         var pushDirection:Point = new Point();
         while(this.mExplosions.length > 0)
         {
            explosion = this.mExplosions.shift();
            pushRadius = explosion.pushRadius;
            x = explosion.x;
            y = explosion.y;
            damage = explosion.damage;
            this.shakeCameraOnExplosion(explosion.push);
            for each(objectBase in this.mObjects)
            {
               object = objectBase as LevelObject;
               if(object && !this.ignoreExplosion(object,explosion.type))
               {
                  dist = this.getExplosionDistanceToObject(x,y,object);
                  if(dist.distance <= explosion.pushRadius)
                  {
                     push = explosion.push * this.getExplosionDamageMultiplier(dist.distance,explosion.pushRadius);
                     if(dist.distance > 0)
                     {
                        pushDirection.x = dist.contact.x - x;
                        pushDirection.y = dist.contact.y - y;
                        pushDirection.normalize(1);
                        pushX = push * pushDirection.x;
                        pushY = push * pushDirection.y;
                        object.getBody().ApplyImpulse(new b2Vec2(pushX,pushY),new b2Vec2(dist.contact.x,dist.contact.y));
                     }
                  }
                  if(dist.distance <= explosion.damageRadius)
                  {
                     objectDamage = damage * this.getExplosionDamageMultiplier(dist.distance,explosion.damageRadius);
                     if(isNaN(objectDamage))
                     {
                        objectDamage = 0;
                     }
                     this.applyExplosionDamage(object,objectDamage);
                  }
                  ObjectDistanceResults.disposeObj(dist);
               }
            }
            if(explosion.showParticleEffect)
            {
               this.updateExplosionEffects(explosion,x,y,pushRadius);
            }
         }
      }
      
      protected function updateExplosionEffects(explosion:LevelExplosion, x:Number, y:Number, pushRadius:Number) : void
      {
         var speed:Number = NaN;
         var time:Number = NaN;
         var angle2:Number = NaN;
         this.mLevelMain.particles.addParticle(this.getMainExplosionCoreName(explosion.type),LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,x,y,600,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,0,0,0,0,1,20,true);
         for(var p:int = 30; p < 150; p += 5)
         {
            speed = 0.75 * pushRadius + Math.random() * pushRadius;
            time = 1250 + Math.random() * 750;
            angle2 = p / (180 / Math.PI);
            this.mLevelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_EXPLOSIONS_PARTICLE,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,x,y,time,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,speed * Math.cos(angle2),-speed * Math.sin(angle2),20,0);
         }
      }
      
      protected function getMainExplosionCoreName(objectType:int) : String
      {
         var _loc2_:* = objectType;
         switch(0)
         {
         }
         return LevelParticle.PARTICLE_NAME_EXPLOSION_CORE;
      }
      
      public function updateObjects(deltaTimeMilliSeconds:Number) : void
      {
         var levelObj:LevelObject = null;
         var obj:LevelObjectBase = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i];
            if(obj.removeOnNextUpdate)
            {
               this.removeObjectWithIndex(i,true);
            }
            else
            {
               this.updateObject(obj,deltaTimeMilliSeconds);
               levelObj = obj as LevelObject;
               if(this.objectIsOutOfBounds(obj))
               {
                  this.removeObjectWithIndex(i,!(levelObj is LevelObjectBird));
               }
               else if(levelObj && levelObj.isReadyToBeRemoved(deltaTimeMilliSeconds))
               {
                  this.removeObjectWithIndex(i,false);
               }
            }
         }
         this.updateJoints(deltaTimeMilliSeconds);
         this.updateExplosions();
         if(this.mLevelLogic)
         {
            this.mLevelLogic.update(deltaTimeMilliSeconds);
         }
      }
      
      protected function updateObject(obj:LevelObjectBase, deltaTimeMilliSeconds:Number) : void
      {
         obj.update(deltaTimeMilliSeconds,this);
      }
      
      protected function updateParticles(deltaTimeMilliSeconds:Number) : void
      {
         var particle:LevelParticleBase = null;
         for(var i:int = this.mParticles.length - 1; i >= 0; i--)
         {
            particle = this.mParticles[i];
            if(particle.removeOnNextUpdate)
            {
               this.removeParticleWithIndex(i);
            }
            else
            {
               particle.update(deltaTimeMilliSeconds,this);
            }
         }
      }
      
      protected function updateJoints(deltaTimeMilliSeconds:Number) : void
      {
         this.updateDestroyAttachedJoints(deltaTimeMilliSeconds);
         this.updateNormalJoints();
      }
      
      protected function updateDestroyAttachedJoints(deltaTimeMilliSeconds:Number) : void
      {
         var destroyAttachJoint:DestroyAttachedJoint = null;
         var object:LevelObjectBase = null;
         var object2:LevelObjectBase = null;
         var point1:b2Vec2 = null;
         var point2:b2Vec2 = null;
         var distance:Number = NaN;
         for(var i:int = this.mDestroyAttachedJoints.length - 1; i >= 0; i--)
         {
            destroyAttachJoint = this.mDestroyAttachedJoints[i];
            if(destroyAttachJoint.timerStarted)
            {
               if(!destroyAttachJoint.update(deltaTimeMilliSeconds))
               {
                  if(!destroyAttachJoint.isOneWayDestroyed)
                  {
                     object = this.getObjectWithId(destroyAttachJoint.objectId1);
                     this.removeObject(object,true);
                  }
                  object = this.getObjectWithId(destroyAttachJoint.objectId2);
                  if(object)
                  {
                     this.removeObject(object,true);
                  }
                  this.mDestroyAttachedJoints.splice(i,1);
               }
            }
            else if(destroyAttachJoint.distanceToDestroyChild > 0)
            {
               object = this.getObjectWithId(destroyAttachJoint.objectId1);
               if(object && (object.getBody().GetLinearVelocity().x > 0 || object.getBody().GetLinearVelocity().y > 0))
               {
                  object2 = this.getObjectWithId(destroyAttachJoint.objectId2);
                  if(object2)
                  {
                     point1 = object.getBody().GetPosition();
                     point2 = object2.getBody().GetPosition();
                     distance = Math.sqrt((point1.x - point2.x) * (point1.x - point2.x) + (point1.y - point2.y) * (point1.y - point2.y));
                     if(distance > destroyAttachJoint.distanceToDestroyChild)
                     {
                        destroyAttachJoint.timerStarted = true;
                     }
                  }
               }
            }
         }
      }
      
      private function visualizeJoint(joint:LevelJoint) : void
      {
         var object1:LevelObject = joint.debug_object_1;
         var object2:LevelObject = joint.debug_object_2;
         if(!object1)
         {
            object1 = this.getObjectWithId(joint.id1);
            joint.debug_object_1 = object1;
         }
         if(!object2)
         {
            object2 = this.getObjectWithId(joint.id2);
            joint.debug_object_2 = object2;
         }
         var x1:Number = object1.sprite.x;
         var y1:Number = object1.sprite.y;
         var x2:Number = object2.sprite.x;
         var y2:Number = object2.sprite.y;
         var length:Number = Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
         var angle:Number = Math.atan2(y2 - y1,x2 - x1);
         if(joint.debug_quad == null)
         {
            joint.debug_quad = new Quad(4,4,4294901760);
            this.mObjectSprite.addChild(joint.debug_quad);
         }
         joint.debug_quad.x = x1;
         joint.debug_quad.y = y1;
         joint.debug_quad.width = length;
         joint.debug_quad.rotation = angle;
      }
      
      protected function getPrismaticJointBuffer(upper:Number, lower:Number, speed:Number) : Number
      {
         return 0.01;
      }
      
      private function updateNormalJoints() : void
      {
         var joint:LevelJoint = null;
         var lower:Number = NaN;
         var upper:Number = NaN;
         var translation:Number = NaN;
         var speed:Number = NaN;
         var prismaticBuffer:Number = NaN;
         var angle:Number = NaN;
         for each(joint in this.mJoints)
         {
            if(VISUALIZE_JOINTS)
            {
               this.visualizeJoint(joint);
            }
            if(joint.isBackAndForth && joint.isLimited && joint.isMotor)
            {
               lower = joint.lowerLimit;
               upper = joint.upperLimit;
               if(joint.type == LevelJointModel.PRISMATIC_JOINT)
               {
                  translation = (joint.B2Joint as b2PrismaticJoint).GetJointTranslation();
                  speed = (joint.B2Joint as b2PrismaticJoint).GetMotorSpeed();
                  prismaticBuffer = this.getPrismaticJointBuffer(upper,lower,speed);
                  if(speed > 0 && translation >= upper - prismaticBuffer || speed < 0 && translation <= lower + prismaticBuffer)
                  {
                     (joint.B2Joint as b2PrismaticJoint).SetMotorSpeed(-speed);
                  }
               }
               else if(joint.type == LevelJointModel.REVOLUTE_JOINT)
               {
                  angle = (joint.B2Joint as b2RevoluteJoint).GetJointAngle();
                  speed = (joint.B2Joint as b2RevoluteJoint).GetMotorSpeed();
                  if(speed > 0 && angle >= upper || speed < 0 && angle <= lower)
                  {
                     (joint.B2Joint as b2RevoluteJoint).SetMotorSpeed(-speed);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var joint:LevelJoint = null;
         while(this.mJoints.length > 0)
         {
            joint = this.mJoints.pop();
            this.removeJoint(joint);
         }
      }
      
      public function objectIsOutOfBounds(obj:LevelObjectBase) : Boolean
      {
         this.checkCameraBoundaries(obj);
         if(obj && (!obj.levelItem || obj.levelItem.getItemBodyType() != LevelItemMaterial.BODY_TYPE_STATIC) && obj.getBody() && this.locationIsOutOfBounds(obj.getBody().GetPosition().x,obj.getBody().GetPosition().y))
         {
            if(obj is LevelObject)
            {
               LevelObject(obj).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function checkCameraBoundaries(obj:LevelObjectBase) : void
      {
      }
      
      public function locationIsOutOfCamera(x:Number, y:Number) : Boolean
      {
         return this.mLevelMain.camera.isOutOfCamera(x,y);
      }
      
      public function locationIsOutOfBounds(x:Number, y:Number) : Boolean
      {
         return this.mLevelMain.borders.isOutOfLevel(x,y);
      }
      
      public function removeParticleWithIndex(index:int) : void
      {
         if(index < 0)
         {
            return;
         }
         var particle:LevelParticleBase = this.mParticles[index];
         this.removeChildFromMainSprite(particle.sprite);
         this.mParticles[index] = null;
         this.mParticles.splice(index,1);
         particle.dispose();
         particle = null;
      }
      
      protected function shouldShowScoreText(object:LevelObject) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(object:LevelObject) : Point
      {
         var x:Number = object.getBody().GetPosition().x;
         var y:Number = object.getBody().GetPosition().y - 3;
         return new Point(x,y);
      }
      
      public function removeObjectWithIndex(index:int, countScore:Boolean = false, disposing:Boolean = false) : void
      {
         var levelObj:LevelObject = null;
         var pos:Point = null;
         var material:int = 0;
         var showScore:Boolean = false;
         var sensorIndex:int = 0;
         if(index < 0)
         {
            return;
         }
         var obj:LevelObjectBase = this.mObjects[index];
         if(obj is LevelObjectPig)
         {
            ++this.mPigsKilled;
         }
         else if(obj is LevelObjectBird)
         {
            --this.mBirdCount;
         }
         if(obj == this.mActiveObject)
         {
            this.mActiveObject = null;
         }
         if(obj is LevelObject)
         {
            levelObj = obj as LevelObject;
            if(countScore)
            {
               pos = this.getScoreTextPosition(levelObj);
               material = LevelParticle.getTextMaterialFromEngineMaterial(levelObj.itemName,levelObj.isLevelGoal);
               showScore = this.shouldShowScoreText(levelObj);
               if(levelObj.levelItem.destroyedScoreInc > 0)
               {
                  this.mLevelMain.addScore(levelObj.levelItem.destroyedScoreInc,ScoreCollector.SCORE_TYPE_REMOVED,showScore,pos.x,pos.y,material,levelObj.levelItem.floatingScoreFont);
               }
            }
            if(disposing)
            {
               levelObj.updateBeforeRemoving(null,countScore);
            }
            else
            {
               levelObj.updateBeforeRemoving(this,countScore);
            }
            this.removeJointsForObject(levelObj);
            this.removeDestroyedAttachedJoints(levelObj);
            delete this.mObjectsViaInstaceName[levelObj.levelObjectModel.instanceName];
         }
         this.removeChildFromMainSprite(obj.sprite);
         this.mObjects[index] = null;
         this.mObjects.splice(index,1);
         if(obj is LevelObjectSensor)
         {
            sensorIndex = this.mSensors.indexOf(LevelObjectSensor(obj));
            if(sensorIndex >= 0)
            {
               this.mSensors.splice(sensorIndex,1);
            }
         }
         if(this.mLevelLogic)
         {
            this.mLevelLogic.objectRemoved(obj);
         }
         if(!disposing)
         {
            this.objectRemoved(obj);
         }
         obj.dispose();
         obj = null;
      }
      
      protected function removeDestroyedAttachedJoints(levelObj:LevelObject) : void
      {
         var destroyAttachedJoint:DestroyAttachedJoint = null;
         for each(destroyAttachedJoint in this.mDestroyAttachedJoints)
         {
            if(destroyAttachedJoint.objectId1 == levelObj.id || destroyAttachedJoint.objectId2 == levelObj.id)
            {
               destroyAttachedJoint.timerStarted = true;
            }
         }
      }
      
      protected function objectRemoved(levelObjectBase:LevelObjectBase) : void
      {
         var levelObject:LevelObject = null;
         var model:LevelObjectModel = null;
         var events:Vector.<LevelEvent> = null;
         var i:int = 0;
         var event:LevelEvent = null;
         if(levelObjectBase is LevelObject)
         {
            levelObject = levelObjectBase as LevelObject;
            model = levelObject.levelObjectModel;
            if(model)
            {
               events = model.getEvents();
               if(events)
               {
                  for(i = 0; i < events.length; i++)
                  {
                     event = events[i];
                     if(event.triggerType == OBJECT_STATE_DESTROY)
                     {
                        this.mLevelMain.notifyAll(event);
                     }
                  }
               }
            }
         }
      }
      
      protected function performTriggerActionOnObject(targetObject:LevelObject, action:String, trigger:String) : void
      {
         if(targetObject)
         {
            targetObject.performTriggerAction(action,trigger,this);
         }
      }
      
      protected function removeChildFromMainSprite(sprite:starling.display.Sprite) : void
      {
         if(sprite && sprite.parent)
         {
            sprite.parent.removeChild(sprite);
         }
      }
      
      public function removeObject(obj:LevelObjectBase, countScore:Boolean = false, disposing:Boolean = false) : void
      {
         if(obj)
         {
            this.removeObjectWithIndex(this.mObjects.indexOf(obj),countScore,disposing);
         }
      }
      
      public function replaceObject(srcObject:LevelObjectBase, targetBlockName:String) : LevelObjectBase
      {
         var levelObj:LevelObject = null;
         var sensorIndex:int = 0;
         var index:int = this.mObjects.indexOf(srcObject);
         if(index < 0)
         {
            return null;
         }
         var obj:LevelObjectBase = this.mObjects[index];
         var body:b2Body = obj.getBody();
         var objNew:LevelObjectBase = this.addObject(targetBlockName,body.GetPosition().x,body.GetPosition().y,body.GetAngle() / Math.PI * 180,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false);
         (objNew as LevelObject).setBody(obj.getBody());
         (objNew as LevelObject).setAngularVelocity(obj.getBody().GetAngularVelocity());
         if(obj == this.mActiveObject)
         {
            this.mActiveObject = null;
         }
         if(obj is LevelObject)
         {
            levelObj = obj as LevelObject;
            levelObj.updateBeforeRemoving(null,true);
            this.removeJointsForObject(levelObj);
            this.removeDestroyedAttachedJoints(levelObj);
            delete this.mObjectsViaInstaceName[levelObj.levelObjectModel.instanceName];
         }
         this.removeChildFromMainSprite(obj.sprite);
         this.mObjects[index] = null;
         this.mObjects.splice(index,1);
         if(obj is LevelObjectSensor)
         {
            sensorIndex = this.mSensors.indexOf(LevelObjectSensor(obj));
            if(sensorIndex >= 0)
            {
               this.mSensors.splice(sensorIndex,1);
            }
         }
         if(this.mLevelLogic)
         {
            this.mLevelLogic.objectRemoved(obj);
         }
         obj.dispose(false);
         obj = null;
         return objNew;
      }
      
      public function setShadingEffect(active:Boolean) : void
      {
         if(active)
         {
            this.mLevelMain.startShadingEffect();
         }
      }
      
      public function setCameraShaking(shake:Boolean, frequency:Number = 0, amplitude:Number = 0, durationMilliSeconds:Number = 0) : void
      {
         this.mLevelMain.setCameraShaking(shake,frequency,amplitude,durationMilliSeconds);
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         this.mMainSprite.x = -sideScroll;
         this.mMainSprite.y = -verticalScroll;
         this.mOverlaySprite.x = -sideScroll;
         this.mOverlaySprite.y = -verticalScroll;
         this.mInFrontObjectSprite.x = -sideScroll;
         this.mInFrontObjectSprite.y = -verticalScroll;
         this.mBackgroundSprite.x = -sideScroll;
         this.mBackgroundSprite.y = -verticalScroll;
      }
      
      public function isLevelGoalObjectsAlive() : Boolean
      {
         var obj:LevelObjectBase = null;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i];
            if(obj)
            {
               if(obj.isLevelGoal)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function isPigsAlive() : Boolean
      {
         var obj:LevelObjectBase = null;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i];
            if(obj && obj is LevelObjectPig && (obj as LevelObjectPig).health > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getPigCount(acceptOnlyIdle:Boolean = false) : int
      {
         var obj:LevelObjectPig = null;
         var counter:int = 0;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObjectPig;
            if(obj && obj.health > 0)
            {
               if(!acceptOnlyIdle || !obj.isBlinking && !obj.isScreaming)
               {
                  counter++;
               }
            }
         }
         return counter;
      }
      
      public function getAnimatableObjectIndices() : Array
      {
         var obj:LevelObject = null;
         this.mTempAnimatableLevelObjects.length = 0;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.health > 0)
            {
               if(obj.isAnimatable())
               {
                  this.mTempAnimatableLevelObjects.push(i);
               }
            }
         }
         return this.mTempAnimatableLevelObjects;
      }
      
      public function getBlockCount() : int
      {
         var obj:LevelObject = null;
         var counter:int = 0;
         for each(obj in this.mObjects)
         {
            if(obj is LevelObjectBlock)
            {
               counter++;
            }
         }
         return counter;
      }
      
      public function getStaticCount() : int
      {
         var obj:LevelObject = null;
         var counter:int = 0;
         for each(obj in this.mObjects)
         {
            if(obj && obj.isTexture())
            {
               counter++;
            }
         }
         return counter;
      }
      
      public function makePigsSmile(timeCoefficient:Number = 1) : void
      {
         var obj:LevelObjectPig = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObjectPig;
            if(obj && obj.health > 0)
            {
               obj.scream();
            }
         }
      }
      
      public function isBirdsAlive() : Boolean
      {
         var obj:LevelObjectBird = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObjectBird;
            if(obj && obj.health > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var obj:LevelObject = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj != null && obj.health > 0 && !obj.isGround())
            {
               if(obj.isDamageAwardingScore() && !obj.considerSleeping())
               {
                  return false;
               }
               if(obj is LevelObjectBird && obj.health > 0)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public function getRandomPig(acceptOnlyIdle:Boolean = false) : LevelObjectPig
      {
         var obj:LevelObjectPig = null;
         var arrayLength:int = this.mObjects.length;
         var pigCount:int = this.getPigCount(acceptOnlyIdle);
         if(pigCount == 0)
         {
            return null;
         }
         var index:int = Math.random() * pigCount;
         var counter:int = 0;
         for(var i:int = 0; i < arrayLength; i++)
         {
            obj = this.mObjects[i] as LevelObjectPig;
            if(obj && obj.health > 0)
            {
               if(!acceptOnlyIdle || obj.isNormal)
               {
                  if(counter >= index)
                  {
                     return obj;
                  }
                  counter++;
               }
            }
         }
         return null;
      }
      
      public function getRandomSlippingObject() : LevelObject
      {
         var obj:LevelObject = null;
         var index:int = 0;
         var randLevelObj:LevelObject = null;
         if(this.mRandSlippingObjects == null)
         {
            this.mRandSlippingObjects = [];
         }
         this.mRandSlippingObjects.length = 0;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj)
            {
               if(obj.health > 0 && obj.isSlipping)
               {
                  this.mRandSlippingObjects.push(obj);
               }
            }
         }
         if(this.mRandSlippingObjects.length > 0)
         {
            index = Math.random() * this.mRandSlippingObjects.length;
            randLevelObj = this.mRandSlippingObjects[index];
         }
         return randLevelObj;
      }
      
      public function getMaxScore() : int
      {
         var levelObj:LevelObject = null;
         var counter:int = 0;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            levelObj = this.mObjects[i] as LevelObject;
            if(levelObj)
            {
               counter += levelObj.levelItem.destroyedScoreInc;
               if(levelObj.isDamageAwardingScore())
               {
                  counter += levelObj.levelItem.damageScore;
               }
            }
         }
         return int(counter + this.mLevelMain.slingshot.getMaxScore());
      }
      
      protected function hasMinimumCollisionSpeedClassic(obj1:LevelObjectBase, obj2:LevelObjectBase) : Boolean
      {
         if(obj1 is LevelObject && obj2 is LevelObject && !(obj1 as LevelObject).isFastEnoughToDamage() && !(obj2 as LevelObject).isFastEnoughToDamage())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(obj1:LevelObjectBase, obj2:LevelObjectBase) : Boolean
      {
         return this.hasMinimumCollisionSpeedClassic(obj1,obj2);
      }
      
      public function resetBirds() : void
      {
         this.mBirdCount = 0;
      }
      
      protected function shakeCameraOnCollision(force:Number, health1:Number, health2:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(force:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(collider:LevelObject, target:LevelObject) : Number
      {
         var forceFactor:Number = NaN;
         if(target is LevelObjectBird)
         {
            return 1;
         }
         if(collider is LevelObjectBird)
         {
            return Number(collider.getDamageFactor(target.getMaterialName()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(collider:LevelObject, target:LevelObject) : Number
      {
         if(target is LevelObjectBird)
         {
            return 0;
         }
         return 1;
      }
      
      protected function getCollisionForce(obj1:LevelObject, obj2:LevelObject) : Number
      {
         var forceFactor1:Number = this.getCollisionForceFactor(obj1,obj2);
         var forceFactor2:Number = this.getCollisionForceFactor(obj2,obj1);
         var mass1:Number = obj1.getBody().GetMass();
         var mass2:Number = obj2.getBody().GetMass();
         var velocity1:b2Vec2 = obj1.getPreviousLinearVelocity();
         var velocity2:b2Vec2 = obj2.getPreviousLinearVelocity();
         var forceX:Number = forceFactor1 * mass1 * velocity1.x - forceFactor2 * mass2 * velocity2.x;
         var forceY:Number = forceFactor1 * mass1 * velocity1.y - forceFactor2 * mass2 * velocity2.y;
         return Number(Math.sqrt(forceX * forceX + forceY * forceY) / 10);
      }
      
      public function shouldIgnoreCollision(obj1:LevelObject, obj2:LevelObject) : Boolean
      {
         if(obj2 is LevelObjectBirdBlue && obj1 is LevelObjectBirdBlue)
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(baseObj1:LevelObjectBase, baseObj2:LevelObjectBase, contact:b2Contact) : Boolean
      {
         var levelJoint:LevelJoint = null;
         var jointListObj1:b2JointEdge = null;
         var jointListObj2:b2JointEdge = null;
         var objJoint:b2Joint = null;
         var nextJointEdge:b2JointEdge = null;
         var velocityFactor1:Number = NaN;
         var velocityFactor2:Number = NaN;
         if(!this.mCollisionsEnabled)
         {
            return false;
         }
         baseObj1.collidedWith(baseObj2);
         baseObj2.collidedWith(baseObj1);
         var obj1:LevelObject = baseObj1 as LevelObject;
         var obj2:LevelObject = baseObj2 as LevelObject;
         if(!obj1 || !obj2)
         {
            return true;
         }
         if(obj1.destroysCollidingObjects || obj2.destroyedOnCollision)
         {
            obj2.applyDamage(obj2.healthMax * 2,this,obj1,true);
            obj1.causedDamageToObjects();
            return true;
         }
         if(obj2.destroysCollidingObjects || obj1.destroyedOnCollision)
         {
            obj1.applyDamage(obj1.healthMax * 2,this,obj2,true);
            obj2.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(obj1,obj2))
         {
            return false;
         }
         if(this.shouldIgnoreCollision(obj1,obj2))
         {
            return false;
         }
         var force:Number = this.getCollisionForce(obj1,obj2);
         var oldHealth1:Number = Math.max(0,obj1.health);
         var oldHealth2:Number = Math.max(0,obj2.health);
         if(!obj1.disableCameraShakeOnCollision && !obj2.disableCameraShakeOnCollision)
         {
            this.shakeCameraOnCollision(force,oldHealth1,oldHealth2);
         }
         var damageFactor1:Number = this.getCollisionDamageFactor(obj1,obj2);
         var damageFactor2:Number = this.getCollisionDamageFactor(obj2,obj1);
         var damage1:Number = force * damageFactor2;
         var damage2:Number = force * damageFactor1;
         var resultHealth1:Number = damage1 > 0 ? Number(obj1.applyDamage(damage1,this,obj2,true)) : Number(obj1.health);
         var resultHealth2:Number = damage2 > 0 ? Number(obj2.applyDamage(damage2,this,obj1,true)) : Number(obj2.health);
         for each(levelJoint in this.mJoints)
         {
            if(levelJoint.breakable && force >= levelJoint.breakForce)
            {
               jointListObj1 = obj1.getBody().GetJointList();
               jointListObj2 = obj2.getBody().GetJointList();
               if(jointListObj1 != null)
               {
                  objJoint = jointListObj1.joint;
                  nextJointEdge = jointListObj1.next;
                  while(objJoint)
                  {
                     if(objJoint == levelJoint.B2Joint)
                     {
                        this.removeJoint(levelJoint);
                        break;
                     }
                     if(!nextJointEdge)
                     {
                        break;
                     }
                     objJoint = nextJointEdge.joint;
                     nextJointEdge = nextJointEdge.next;
                  }
               }
               if(jointListObj2 != null)
               {
                  objJoint = jointListObj2.joint;
                  nextJointEdge = jointListObj2.next;
                  while(objJoint && nextJointEdge)
                  {
                     if(objJoint == levelJoint.B2Joint)
                     {
                        this.removeJoint(levelJoint);
                        break;
                     }
                     if(!nextJointEdge)
                     {
                        break;
                     }
                     objJoint = nextJointEdge.joint;
                     nextJointEdge = nextJointEdge.next;
                  }
               }
            }
         }
         if(resultHealth1 < oldHealth1)
         {
            obj2.causedDamageToObjects();
         }
         if(resultHealth2 < oldHealth2)
         {
            obj1.causedDamageToObjects();
         }
         if(obj1 is LevelObjectBird)
         {
            if(resultHealth2 <= 0)
            {
               if(!obj2.disableBirdPassThrough)
               {
                  velocityFactor1 = obj1.getVelocityFactor(obj2.getMaterialName());
                  this.applyBirdSpeedBoost(obj1 as LevelObjectBird,force * damageFactor1,oldHealth2,velocityFactor1);
               }
               return false;
            }
         }
         if(obj2 is LevelObjectBird)
         {
            if(resultHealth1 <= 0)
            {
               if(!obj1.disableBirdPassThrough)
               {
                  velocityFactor2 = obj2.getVelocityFactor(obj1.getMaterialName());
                  this.applyBirdSpeedBoost(obj2 as LevelObjectBird,force * damageFactor2,oldHealth1,velocityFactor2);
               }
               return false;
            }
         }
         return resultHealth1 <= 0 && resultHealth2 <= 0;
      }
      
      public function objectCollisionEnded(obj1:LevelObjectBase, obj2:LevelObjectBase) : void
      {
         if(obj1)
         {
            obj1.collisionEnded(obj2);
         }
         if(obj2)
         {
            obj2.collisionEnded(obj1);
         }
      }
      
      protected function applyBirdSpeedBoost(bird:LevelObjectBird, force:Number, oldHealth:Number, velocityFactor:Number) : void
      {
         if(force == 0)
         {
            return;
         }
         var multiplier:Number = (force - oldHealth) / force;
         if(isNaN(multiplier))
         {
            multiplier = 0;
         }
         multiplier *= velocityFactor;
         if(multiplier > 1)
         {
            multiplier = 1;
         }
         var velocity:b2Vec2 = bird.getPreviousLinearVelocity();
         bird.setLinearVelocityForEndOfUpdateCycle(new b2Vec2(velocity.x * multiplier,velocity.y * multiplier));
      }
      
      public function cheatKillAllTheLevelGoals() : void
      {
         var obj:LevelObject = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.isLevelGoal)
            {
               this.removeObjectWithIndex(i,true);
            }
         }
      }
      
      public function cheatKillDynamites() : void
      {
         var obj:LevelObject = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj != null && obj.isTnt())
            {
               this.removeObjectWithIndex(i,true);
            }
         }
      }
      
      public function getObjectCount() : int
      {
         return this.mObjects.length;
      }
      
      public function writeObjectInformation(dst:LevelModel) : void
      {
         var obj:LevelObject = null;
         var data:LevelObjectModel = null;
         var events:Vector.<LevelEvent> = null;
         var jointData:LevelJointModel = null;
         var joint:LevelJoint = null;
         for(var i:Number = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj)
            {
               if(obj.isConcreteObject)
               {
                  if(!obj.isGround())
                  {
                     data = new LevelObjectModel();
                     data.angle = obj.getAngle() / (Math.PI / 180);
                     data.id = obj.id;
                     data.type = obj.itemName;
                     if(obj.itemName == TemporaryBlock.NAME)
                     {
                        data.type = (obj as TemporaryBlock).originalBlockType;
                     }
                     data.x = obj.getBody().GetPosition().x;
                     data.y = obj.getBody().GetPosition().y;
                     if(!obj.isTexture())
                     {
                        data.z = obj.getZ();
                     }
                     if(obj.getLinearForce())
                     {
                        data.linearForce = obj.getLinearForce();
                     }
                     if(obj.levelObjectModel.hasSpecialBehavior)
                     {
                        data.setBehaviorsData(obj.levelObjectModel.getBehaviorsData());
                     }
                     events = obj.levelObjectModel.getEvents();
                     if(events)
                     {
                        data.setEvents(events);
                     }
                     dst.addObject(data);
                  }
               }
            }
         }
         for(var j:Number = 0; j < this.mJoints.length; j++)
         {
            joint = this.mJoints[j];
            jointData = new LevelJointModel(joint.type,joint.id1,joint.id2,joint.point1,joint.point2,joint.isCollideConnected,joint.isLimited,joint.lowerLimit,joint.upperLimit,joint.isMotor,joint.motorSpeed,joint.isBackAndForth,joint.maxTorque,joint.breakable,joint.breakForce,joint.isOneWayDestroyed);
            jointData.annihilationTime = joint.annihilationTime;
            jointData.distanceToDestroyChild = joint.distanceToDestroyChild;
            jointData.axisX = joint.axisX;
            jointData.axisY = joint.axisY;
            jointData.breakable = joint.breakable;
            jointData.breakForce = joint.breakForce;
            jointData.destroyChild = joint.destroyChild;
            dst.addJoint(jointData);
         }
      }
      
      public function getObjectsWithinBoundingBox(min:Point, max:Point) : Array
      {
         var list:Array = [];
         for(var i:Number = 0; i < this.mObjects.length; i++)
         {
            if(this.mObjects[i].isInsideRectangle(min.y,max.y,min.x,max.x))
            {
               list.push(this.mObjects[i]);
            }
         }
         return list;
      }
      
      public function setGroundTextureEnabled(value:Boolean) : void
      {
         var obj:LevelObject = null;
         this.mGroundTextureEnabled = value;
         this.setTexture(value);
         for(var i:Number = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.isTexture())
            {
               obj.sprite.visible = !this.mGroundTextureEnabled;
            }
         }
      }
      
      public function setCollisionsEnabled(value:Boolean) : void
      {
         this.mCollisionsEnabled = value;
      }
      
      public function getBirdsShot() : int
      {
         return this.mBirdsShot;
      }
      
      public function getPigsKilled() : int
      {
         return this.mPigsKilled;
      }
      
      public function hasObject(obj:LevelObjectBase) : Boolean
      {
         var index:int = this.mObjects.indexOf(obj);
         return index >= 0;
      }
   }
}
