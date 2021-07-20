package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.rovio.graphics.PivotTexture;
   import com.angrybirds.engine.levels.ILevelLogic;
   import com.rovio.utils.HashMap;
   import starling.textures.Texture;
   import com.angrybirds.data.level.item.PolygonShapeDefinition;
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItemMaterial;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.RectangleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.rovio.Box2D.Dynamics.Joints.b2JointEdge;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJoint;
   import com.angrybirds.engine.objects.utils.ObjectDistanceResults;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.sound.SoundEngine;
   import starling.display.Quad;
   import starling.display.Image;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.engine.particles.LevelParticleBase;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelJoint;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.data.level.object.DestroyAttachedJoint;
   import com.angrybirds.data.level.object.LevelObjectComplexModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelBorders;
   import com.angrybirds.engine.ScoreCollector;
   import com.angrybirds.engine.LevelMain;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelObjectManager implements ILevelObjectUpdateManager
   {
      
      private static const VISUALIZE_JOINTS:Boolean = false;
      
      private static const INITIAL_DYNAMIC_OBJECT_ID:int = 1000000000;
      
      public static const ID_UNDEFINED:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
       
      
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
      
      protected var mOverlaySprite:starling.display.Sprite;
      
      protected var mGroundTextures:Vector.<Texture>;
      
      protected var mJoints:Vector.<LevelJoint>;
      
      protected var mTextureIndex:int = 1;
      
      protected var mDestroyAttachedJoints:Vector.<DestroyAttachedJoint>;
      
      protected var mBirdCount:int = 0;
      
      private var mPigsKilled:int = 0;
      
      private var mBirdsShot:int = 0;
      
      private var mObjectModel:LevelObjectModel;
      
      private var mActiveObject:LevelObjectBird;
      
      private var mGroundTextureEnabled:Boolean = true;
      
      private var mCollisionsEnabled:Boolean = true;
      
      private var mLevelLogic:ILevelLogic;
      
      private var mLevelInitialized:Boolean = false;
      
      public function LevelObjectManager(param1:LevelMain, param2:LevelModel, param3:starling.display.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.mObjects = new Vector.<LevelObjectBase>();
         this.mSensors = new Vector.<LevelObjectSensor>();
         this.mParticles = new Vector.<LevelParticleBase>();
         this.mObjectsViaInstaceName = new HashMap();
         this.mExplosions = new Vector.<LevelExplosion>();
         this.mGroundTextures = new Vector.<Texture>();
         this.mDestroyAttachedJoints = new Vector.<DestroyAttachedJoint>();
         this.mObjectModel = new LevelObjectModel();
         super();
         this.mLevelMain = param1;
         this.mMainSprite = param3;
         this.mMainSprite.touchable = false;
         this.mCollisionsEnabled = true;
         this.mGroundTextureEnabled = true;
         this.mTextureSprite = new starling.display.Sprite();
         this.mObjectSprite = new starling.display.Sprite();
         this.mOverlaySprite = new starling.display.Sprite();
         this.mMainSprite.addChild(this.mTextureSprite);
         this.mMainSprite.addChild(this.mObjectSprite);
         if(param2.hasGround)
         {
            _loc5_ = (this.mLevelMain.borders.leftBorder + this.mLevelMain.borders.rightBorder) / 2;
            _loc6_ = 0 + LevelBorders.LEVEL_BORDER_GROUND_THICKNESS;
            this.addObject(param4,_loc5_,_loc6_,0,LevelObjectManager.ID_UNDEFINED);
         }
         this.addLevelObjects(param2);
      }
      
      public function get overlaySprite() : starling.display.Sprite
      {
         return this.mOverlaySprite;
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
      
      public function set levelLogic(param1:ILevelLogic) : void
      {
         if(param1 != this.mLevelLogic)
         {
            this.mLevelLogic = param1;
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
      
      public function getLevelItem(param1:String) : LevelItem
      {
         return this.mLevelMain.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.mActiveObject)
         {
            _loc3_ = this.mActiveObject.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:LevelModel) : void
      {
         var _loc3_:LevelObjectModel = null;
         var _loc4_:Number = NaN;
         var _loc5_:LevelItem = null;
         var _loc6_:LevelJointModel = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.mLevelMain.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.addObjectFromModel(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.generateGroundTexture();
         this.setTexture(true);
         this.mJoints = new Vector.<LevelJoint>();
         _loc2_ = 0;
         while(_loc2_ < param1.jointCount)
         {
            _loc6_ = param1.getJoint(_loc2_);
            this.createJoint(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
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
         if(this.mMainSprite)
         {
            this.mMainSprite.dispose();
            this.mMainSprite = null;
         }
         this.mTextureSprite = null;
         this.mObjectSprite = null;
         if(this.mOverlaySprite)
         {
            this.mOverlaySprite.dispose();
            this.mOverlaySprite = null;
         }
         while(this.mGroundTextures.length > 0)
         {
            _loc1_ = this.mGroundTextures.pop();
            this.mLevelMain.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function setTexture(param1:Boolean) : void
      {
         this.mTextureSprite.visible = param1;
      }
      
      private function generateGroundTexture() : void
      {
         var _loc3_:LevelObjectBase = null;
         var _loc4_:Rectangle = null;
         var _loc5_:LevelObject = null;
         var _loc6_:ShapeDefinition = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:Number = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:Image = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<LevelObject> = new Vector.<LevelObject>();
         for each(_loc3_ in this.mObjects)
         {
            if((_loc5_ = _loc3_ as LevelObject) && _loc5_.isTexture())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / LevelMain.PIXEL_TO_B2_SCALE * Math.sqrt(2);
               _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
               if(_loc1_ == null)
               {
                  _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               }
               else
               {
                  _loc1_ = _loc1_.union(_loc4_);
               }
            }
         }
         if(_loc1_)
         {
            _loc8_ = this.mLevelMain.camera.borderLeft / LevelMain.PIXEL_TO_B2_SCALE;
            _loc9_ = this.mLevelMain.camera.borderRight / LevelMain.PIXEL_TO_B2_SCALE;
            _loc10_ = (_loc8_ + _loc9_) / 2;
            _loc11_ = (_loc9_ - _loc8_) / 2;
            _loc8_ = _loc10_ - _loc11_;
            _loc9_ = _loc10_ + _loc11_;
            _loc1_.left = Math.max(_loc1_.left,_loc8_) - 4;
            _loc1_.right = Math.min(_loc1_.right,_loc9_) + 4;
            if(_loc1_.left >= _loc1_.right - 1)
            {
               return;
            }
            _loc12_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 1.05;
               _loc1_.top /= 1.05;
               _loc1_.right /= 1.05;
               _loc1_.bottom /= 1.05;
               _loc12_ /= 1.05;
            }
            _loc13_ = _loc1_.width;
            _loc14_ = _loc1_.height;
            _loc15_ = _loc1_.left;
            _loc16_ = _loc1_.top;
            _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
            _loc18_ = this.getLevelTextureScale();
            this.fillLevelTextureBitmapData(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.generateGroundTextureMask(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc17_);
            this.mGroundTextures.push(_loc20_);
            (_loc21_ = new Image(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.mTextureSprite.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function generateGroundTextureMask(param1:Vector.<LevelObject>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:LevelObject = null;
         var _loc11_:Number = NaN;
         var _loc12_:ShapeDefinition = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is RectangleShapeDefinition)
            {
               this.drawRectangleShapeOnBitmap(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.getAngle(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is PolygonShapeDefinition)
            {
               if((_loc12_ as PolygonShapeDefinition).vertices.length == 4)
               {
                  this.drawRectangleShapeOnBitmap(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.getAngle(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as PolygonShapeDefinition).vertices.length == 3)
               {
                  this.drawTriangleShapeOnBitmap(_loc12_ as PolygonShapeDefinition,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.getAngle(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is CircleShapeDefinition)
            {
               this.drawCircleShapeOnBitmap(_loc12_ as CircleShapeDefinition,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function drawRectangleShapeOnBitmap(param1:ShapeDefinition, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / LevelMain.PIXEL_TO_B2_SCALE * param9;
         var _loc13_:Number = param1.getHeight() / LevelMain.PIXEL_TO_B2_SCALE * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function drawTriangleShapeOnBitmap(param1:PolygonShapeDefinition, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / LevelMain.PIXEL_TO_B2_SCALE * param8,_loc14_.y / LevelMain.PIXEL_TO_B2_SCALE * param8);
            _loc13_++;
         }
         _loc11_.graphics.drawTriangles(_loc12_);
         _loc11_.graphics.endFill();
         param3.rotate(param6);
         param3.translate(param4 * param7 - param9,param5 * param7 - param10);
         param2.draw(_loc11_,param3);
         _loc11_.graphics.clear();
         _loc11_ = null;
      }
      
      protected function drawCircleShapeOnBitmap(param1:CircleShapeDefinition, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / LevelMain.PIXEL_TO_B2_SCALE * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function getLevelTextureName() : String
      {
         return this.mLevelMain.background.getGroundTextureName();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function fillLevelTextureBitmapData(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc4_:String = this.getLevelTextureName();
         var _loc5_:PivotTexture;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.getTexture(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_);
            _loc8_ = _loc6_.width - 2;
            _loc9_ = _loc6_.height - 2;
            _loc10_ = param1.top / _loc9_;
            if(param1.top < 0)
            {
               _loc10_--;
            }
            _loc11_ = (_loc11_ = int(param1.bottom / _loc9_)) + 1;
            _loc12_ = param1.left / _loc8_;
            if(param1.left < 0)
            {
               _loc12_--;
            }
            _loc13_ = (_loc13_ = int(param1.right / _loc8_)) + 1;
            _loc14_ = _loc12_;
            while(_loc14_ < _loc13_)
            {
               _loc15_ = _loc10_;
               while(_loc15_ < _loc11_)
               {
                  param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                  _loc15_++;
               }
               _loc14_++;
            }
            _loc6_.dispose();
         }
      }
      
      protected function addObjectBird(param1:LevelObjectModel, param2:starling.display.Sprite, param3:Animation, param4:LevelItem, param5:Number = 1.0, param6:Boolean = true) : LevelObjectBird
      {
         var _loc11_:LevelObjectBird = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new LevelObjectBirdBlack(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new LevelObjectBirdBlue(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new LevelObjectBirdGreen(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new LevelObjectBirdWhite(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new LevelObjectBirdYellow(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new LevelObjectBirdRed(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new LevelObjectBirdBigRed(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new LevelObjectBirdOrange(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new LevelObjectSardine(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new LevelObjectMightyEagle(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new LevelObjectBird(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.mBirdCount > 0;
      }
      
      protected function addObjectPig(param1:LevelObjectModel, param2:starling.display.Sprite, param3:Animation, param4:LevelItem, param5:Number = 1.0) : LevelObjectPig
      {
         return new LevelObjectPig(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : LevelObjectBase
      {
         this.mObjectModel.type = param1;
         this.mObjectModel.x = param2;
         this.mObjectModel.y = param3;
         this.mObjectModel.angle = param4;
         this.mObjectModel.areaWidth = 0;
         this.mObjectModel.areaHeight = 0;
         return this.addObjectFromModel(this.mObjectModel,param5,param6,param7,param8,param9,param10);
      }
      
      public function addObjectWithArea(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : LevelObjectBase
      {
         this.mObjectModel.type = param1;
         this.mObjectModel.x = param2;
         this.mObjectModel.y = param3;
         this.mObjectModel.angle = param4;
         this.mObjectModel.areaWidth = param6;
         this.mObjectModel.areaHeight = param7;
         return this.addObjectFromModel(this.mObjectModel,param5,false,false,false,param8,param9);
      }
      
      protected function addObjectFromModel(param1:LevelObjectModel, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : LevelObjectBase
      {
         var _loc8_:starling.display.Sprite = new starling.display.Sprite();
         var _loc9_:LevelObjectBase;
         if((_loc9_ = this.createObject(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is LevelObject && (_loc9_ as LevelObject).isTexture())
         {
            _loc8_.visible = !this.mGroundTextureEnabled;
         }
         if(_loc9_ is LevelObjectBird && !(_loc9_ is LevelObjectMightyEagle))
         {
            ++this.mBirdCount;
         }
         if(!param7)
         {
            this.mObjectSprite.addChildSorted(_loc8_);
         }
         else
         {
            this.mOverlaySprite.addChildSorted(_loc8_);
         }
         if(param3)
         {
            this.mLevelMain.addTrailingObject(_loc9_);
         }
         if(param4 && _loc9_ is LevelObjectBird)
         {
            this.mActiveObject = LevelObjectBird(_loc9_);
         }
         return _loc9_;
      }
      
      private function createObject(param1:LevelObjectModel, param2:int, param3:starling.display.Sprite, param4:Boolean = true, param5:Number = 1.0) : LevelObjectBase
      {
         var _loc7_:LevelObject = null;
         if(param2 == ID_NEXT_FREE)
         {
            param2 = this.mDynamicObjectId;
            ++this.mDynamicObjectId;
         }
         else
         {
            if(param2 >= INITIAL_DYNAMIC_OBJECT_ID)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + INITIAL_DYNAMIC_OBJECT_ID);
            }
            if(this.getObjectWithId(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:LevelObjectBase;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is LevelObjectBird)
         {
            ++this.mBirdsShot;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as LevelObject;
            if(_loc6_ is LevelParticleBase)
            {
               this.mParticles.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.assignId(param2);
                  this.mObjectsViaInstaceName[param1.instanceName] = _loc6_;
               }
               this.mObjects.push(_loc6_);
               if(_loc6_ is LevelObjectSensor)
               {
                  this.mSensors.push(_loc6_);
               }
            }
            if(this.mLevelLogic)
            {
               this.mLevelLogic.objectCreated(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:LevelObjectModel, param2:starling.display.Sprite, param3:Animation, param4:LevelItem, param5:int, param6:Number = 1.0) : LevelObjectBase
      {
         return new LevelObjectBlockBomb(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createWhiteBirdsEggInstance(param1:LevelObjectModel, param2:starling.display.Sprite, param3:Animation, param4:LevelItem, param5:int, param6:Number = 1.0) : LevelObjectBase
      {
         return new LevelObjectWhiteBirdsEgg(param2,param3,this.mLevelMain.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:LevelObjectModel, param2:starling.display.Sprite, param3:Boolean = true, param4:Number = 1.0) : LevelObjectBase
      {
         var _loc5_:LevelItem;
         if(!(_loc5_ = this.mLevelMain.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.getCommonTextureName();
         }
         var _loc7_:Animation = this.mLevelMain.animationManager.getAnimation(_loc6_);
         var _loc8_:LevelObjectBase = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == LevelItem.ITEM_TYPE_PIG)
         {
            _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == LevelItem.ITEM_TYPE_BLOCK || _loc5_.itemType == LevelItem.ITEM_TYPE_MISC)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,LevelExplosion.TYPE_TNT,param4);
            }
            else if(_loc5_.itemName == LevelObjectBirdWhite.WHITE_BIRD_EGG_ITEM_ID)
            {
               _loc8_ = this.createWhiteBirdsEggInstance(param1,param2,_loc7_,_loc5_,LevelExplosion.TYPE_WHITE_BIRD_EGG,param4);
            }
            else
            {
               _loc8_ = new LevelObjectBlock(param2,_loc7_,this.mLevelMain.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new LevelObject(param2,_loc7_,this.mLevelMain.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.mLevelMain.addScore(param1,ScoreCollector.SCORE_TYPE_DAMAGE,param3,param4,param5,param6);
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.mLevelMain.particles.addParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.mLevelMain.particles.addSimpleParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      protected function removeJointsForObject(param1:LevelObject) : void
      {
         var _loc4_:LevelJoint = null;
         var _loc5_:LevelJoint = null;
         var _loc6_:LevelObjectBase = null;
         var _loc7_:LevelObjectBase = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.mJoints.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.mJoints[_loc3_];
            if(this.mJoints[_loc3_].id1 == _loc2_ || this.mJoints[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.B2Joint)
               {
                  _loc6_ = _loc4_.B2Joint.GetBodyA().GetUserData() as LevelObjectBase;
                  _loc7_ = _loc4_.B2Joint.GetBodyB().GetUserData() as LevelObjectBase;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.mJoints.pop();
               if(_loc3_ < this.mJoints.length)
               {
                  this.mJoints[_loc3_] = _loc5_;
               }
               this.removeJoint(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function createJoint(param1:LevelJointModel) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:LevelJoint = LevelJoint.createJoint(param1);
         this.mJoints.push(_loc4_);
         var _loc5_:LevelObjectBase = this.getObjectWithId(_loc2_);
         var _loc6_:LevelObjectBase = this.getObjectWithId(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != LevelJointModel.DESTROY_ATTACHED)
            {
               _loc4_.B2Joint = this.mLevelMain.mLevelEngine.mWorld.CreateJoint(_loc4_.getJointDefinition(_loc5_,_loc6_));
            }
            else
            {
               this.mDestroyAttachedJoints.push(new DestroyAttachedJoint(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
      }
      
      protected function removeJoint(param1:LevelJoint) : void
      {
         if(param1.B2Joint)
         {
            this.mLevelMain.mLevelEngine.mWorld.DestroyJoint(param1.B2Joint);
         }
         if(param1.debug_quad)
         {
            if(this.mObjectSprite.contains(param1.debug_quad))
            {
               this.mObjectSprite.removeChild(param1.debug_quad,true);
            }
         }
      }
      
      public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.mExplosions.push(LevelExplosion.createExplosion(param1,param2,param3));
         this.playExplosionSound(param1);
      }
      
      protected function playExplosionSound(param1:int) : void
      {
         SoundEngine.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function addCustomExplosion(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.mExplosions.push(LevelExplosion.createCustomExplosion(param1,param2,param3,param4,param5,param6));
         SoundEngine.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.mLevelMain.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         return this.mLevelMain.timeSpeedMultiplier;
      }
      
      public function getObjectIndexFromPoint(param1:Number, param2:Number) : int
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.mObjects.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.mObjects[_loc3_] as LevelObject) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : LevelObject
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.mObjects.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.mObjects[_loc3_] as LevelObject)
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc4_;
               }
            }
            _loc3_--;
         }
         return null;
      }
      
      public function getObject(param1:int) : LevelObjectBase
      {
         return this.mObjects[param1];
      }
      
      public function getObjectWithId(param1:int) : LevelObject
      {
         var _loc2_:LevelObjectBase = null;
         var _loc3_:LevelObject = null;
         for each(_loc2_ in this.mObjects)
         {
            _loc3_ = _loc2_ as LevelObject;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function getObjectWithInstanceName(param1:String) : LevelObject
      {
         return this.mObjectsViaInstaceName[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.mObjects.length - 1;
         while(_loc4_ >= 0)
         {
            this.mObjects[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.updateParticles(param1);
         _loc4_ = this.mParticles.length - 1;
         while(_loc4_ >= 0)
         {
            this.mParticles[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:LevelObject) : ObjectDistanceResults
      {
         var _loc4_:Number = param3.getBody().GetPosition().x - param1;
         var _loc5_:Number = param3.getBody().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:ObjectDistanceResults;
         (_loc7_ = new ObjectDistanceResults()).distance = _loc6_;
         _loc7_.contact = new Point(param3.getBody().GetPosition().x,param3.getBody().GetPosition().y);
         return _loc7_;
      }
      
      protected function applyExplosionDamage(param1:LevelObject, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:LevelObject) : Boolean
      {
         return false;
      }
      
      protected function updateExplosions() : void
      {
         var _loc1_:LevelExplosion = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:LevelObjectBase = null;
         var _loc7_:LevelObject = null;
         var _loc8_:ObjectDistanceResults = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.mCollisionsEnabled)
         {
            return;
         }
         while(this.mExplosions.length > 0)
         {
            _loc1_ = this.mExplosions.shift();
            _loc2_ = _loc1_.pushRadius;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.shakeCameraOnExplosion(_loc1_.push);
            for each(_loc6_ in this.mObjects)
            {
               if((_loc7_ = _loc6_ as LevelObject) && !this.ignoreExplosion(_loc7_))
               {
                  if((_loc8_ = this.getExplosionDistanceToObject(_loc3_,_loc4_,_loc7_)).distance <= _loc1_.pushRadius)
                  {
                     _loc9_ = _loc1_.push * this.getExplosionDamageMultiplier(_loc8_.distance,_loc1_.pushRadius);
                     if(_loc8_.distance > 0)
                     {
                        (_loc10_ = new Point(_loc8_.contact.x - _loc3_,_loc8_.contact.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.getBody().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.contact.x,_loc8_.contact.y));
                     }
                  }
                  if(_loc8_.distance <= _loc1_.damageRadius)
                  {
                     _loc13_ = _loc5_ * this.getExplosionDamageMultiplier(_loc8_.distance,_loc1_.damageRadius);
                     this.applyExplosionDamage(_loc7_,_loc13_);
                  }
               }
            }
            this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function updateExplosionEffects(param1:LevelExplosion, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.mLevelMain.particles.addParticle(this.getMainExplosionCoreName(param1.type),LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,param2,param3,600,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.mLevelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_EXPLOSIONS_PARTICLE,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,param2,param3,_loc7_,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return LevelParticle.PARTICLE_NAME_EXPLOSION_CORE;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:LevelObject = null;
         var _loc2_:LevelObjectBase = null;
         var _loc3_:int = this.mObjects.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.mObjects[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.removeObjectWithIndex(_loc3_,true);
            }
            else
            {
               this.updateObject(_loc2_,param1);
               _loc4_ = _loc2_ as LevelObject;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.playSoundEffect(LevelItemSoundResource.SOUND_DESTROYED);
                  }
                  this.removeObjectWithIndex(_loc3_,!(_loc4_ is LevelObjectBird));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.playSoundEffect(LevelItemSoundResource.SOUND_DESTROYED);
                  this.removeObjectWithIndex(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.updateJoints(param1);
         this.updateExplosions();
         if(this.mLevelLogic)
         {
            this.mLevelLogic.update(param1);
         }
      }
      
      protected function updateObject(param1:LevelObjectBase, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function updateParticles(param1:Number) : void
      {
         var _loc2_:LevelParticleBase = null;
         var _loc3_:int = this.mParticles.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.mParticles[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.removeParticleWithIndex(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function updateJoints(param1:Number) : void
      {
         this.updateDestroyAttachedJoints(param1);
         this.updateNormalJoints();
      }
      
      protected function updateDestroyAttachedJoints(param1:Number) : void
      {
         var _loc3_:DestroyAttachedJoint = null;
         var _loc4_:LevelObjectBase = null;
         var _loc2_:int = this.mDestroyAttachedJoints.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.mDestroyAttachedJoints[_loc2_];
            if(_loc3_.timerStarted)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.isOneWayDestroy)
                  {
                     _loc4_ = this.getObjectWithId(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.getObjectWithId(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.mDestroyAttachedJoints.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function visualizeJoint(param1:LevelJoint) : void
      {
         var _loc2_:LevelObject = param1.debug_object_1;
         var _loc3_:LevelObject = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.getObjectWithId(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.getObjectWithId(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.debug_quad == null)
         {
            param1.debug_quad = new Quad(4,4,4294901760);
            this.mObjectSprite.addChild(param1.debug_quad);
         }
         param1.debug_quad.x = _loc4_;
         param1.debug_quad.y = _loc5_;
         param1.debug_quad.width = _loc8_;
         param1.debug_quad.rotation = _loc9_;
      }
      
      protected function getPrismaticJointBuffer(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function updateNormalJoints() : void
      {
         var _loc1_:LevelJoint = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.mJoints)
         {
            if(VISUALIZE_JOINTS)
            {
               this.visualizeJoint(_loc1_);
            }
            if(_loc1_.isBackAndForth && _loc1_.isLimited && _loc1_.isMotor)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == LevelJointModel.PRISMATIC_JOINT)
               {
                  _loc4_ = (_loc1_.B2Joint as b2PrismaticJoint).GetJointTranslation();
                  _loc5_ = (_loc1_.B2Joint as b2PrismaticJoint).GetMotorSpeed();
                  _loc6_ = this.getPrismaticJointBuffer(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.B2Joint as b2PrismaticJoint).SetMotorSpeed(-_loc5_);
                  }
               }
               else if(_loc1_.type == LevelJointModel.REVOLUTE_JOINT)
               {
                  _loc7_ = (_loc1_.B2Joint as b2RevoluteJoint).GetJointAngle();
                  if((_loc5_ = (_loc1_.B2Joint as b2RevoluteJoint).GetMotorSpeed()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.B2Joint as b2RevoluteJoint).SetMotorSpeed(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var _loc1_:LevelJoint = null;
         while(this.mJoints.length > 0)
         {
            _loc1_ = this.mJoints.pop();
            this.removeJoint(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:LevelObjectBase) : Boolean
      {
         this.checkCameraBoundaries(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != LevelItemMaterial.BODY_TYPE_STATIC) && param1.getBody() && this.locationIsOutOfBounds(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            if(param1 is LevelObject)
            {
               LevelObject(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function checkCameraBoundaries(param1:LevelObjectBase) : void
      {
      }
      
      public function locationIsOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return this.mLevelMain.camera.isOutOfCamera(param1,param2);
      }
      
      public function locationIsOutOfBounds(param1:Number, param2:Number) : Boolean
      {
         return this.mLevelMain.borders.isOutOfLevel(param1,param2);
      }
      
      public function removeParticleWithIndex(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:LevelParticleBase = this.mParticles[param1];
         this.removeChildFromMainSprite(_loc2_.sprite);
         this.mParticles[param1] = null;
         this.mParticles.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:LevelObject) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:LevelObject) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:LevelObject = null;
         var _loc6_:DestroyAttachedJoint = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:LevelObjectBase;
         if((_loc4_ = this.mObjects[param1]) is LevelObjectPig)
         {
            ++this.mPigsKilled;
         }
         else if(_loc4_ is LevelObjectBird)
         {
            --this.mBirdCount;
         }
         if(_loc4_ == this.mActiveObject)
         {
            this.mActiveObject = null;
         }
         if(_loc4_ is LevelObject)
         {
            _loc5_ = _loc4_ as LevelObject;
            if(param2)
            {
               _loc7_ = this.getScoreTextPosition(_loc5_);
               _loc8_ = LevelParticle.getTextMaterialFromEngineMaterial(_loc5_.itemName);
               _loc9_ = this.shouldShowScoreText(_loc5_);
               this.mLevelMain.addScore(_loc5_.levelItem.score,ScoreCollector.SCORE_TYPE_REMOVED,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.removeJointsForObject(_loc5_);
            for each(_loc6_ in this.mDestroyAttachedJoints)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.timerStarted = true;
               }
            }
            delete this.mObjectsViaInstaceName[_loc5_.levelObjectModel.instanceName];
         }
         this.removeChildFromMainSprite(_loc4_.sprite);
         this.mObjects[param1] = null;
         this.mObjects.splice(param1,1);
         if(_loc4_ is LevelObjectSensor)
         {
            if((_loc10_ = this.mSensors.indexOf(_loc4_)) >= 0)
            {
               this.mSensors.splice(_loc10_,1);
            }
         }
         if(this.mLevelLogic)
         {
            this.mLevelLogic.objectRemoved(_loc4_);
         }
         this.objectRemoved(_loc4_);
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function objectRemoved(param1:LevelObjectBase) : void
      {
         var _loc2_:LevelObject = null;
         var _loc3_:LevelObjectComplexModel = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:LevelObject = null;
         if(param1 is LevelObject)
         {
            _loc2_ = param1 as LevelObject;
            _loc3_ = _loc2_.levelObjectModel as LevelObjectComplexModel;
            if(_loc3_)
            {
               for(_loc4_ in _loc3_.onDestroyedEvents.objectEvents)
               {
                  _loc5_ = _loc3_.onDestroyedEvents.objectEvents[_loc4_];
                  _loc6_ = this.getObjectWithInstanceName(_loc4_);
                  this.performTriggerActionOnObject(_loc6_,_loc5_,"onDestroyed");
               }
            }
         }
      }
      
      protected function performTriggerActionOnObject(param1:LevelObject, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.performTriggerAction(param2,param3,this);
         }
      }
      
      private function removeChildFromMainSprite(param1:starling.display.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:LevelObjectBase, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.removeObjectWithIndex(this.mObjects.indexOf(param1),param2);
         }
      }
      
      public function setShadingEffect(param1:Boolean) : void
      {
         if(param1)
         {
            this.mLevelMain.startShadingEffect();
         }
      }
      
      public function setCameraShaking(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.mLevelMain.setCameraShaking(param1,param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.mMainSprite.x = -param1;
         this.mMainSprite.y = -param2;
         this.mOverlaySprite.x = -param1;
         this.mOverlaySprite.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:LevelObjectBase = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mObjects.length)
         {
            _loc2_ = this.mObjects[_loc1_];
            if(_loc2_ && _loc2_ is LevelObjectPig && (_loc2_ as LevelObjectPig).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:LevelObjectPig = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.mObjects.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.mObjects[_loc3_] as LevelObjectPig) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.isBlinking && !_loc4_.isScreaming)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function getBlockCount() : int
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mObjects)
         {
            if(_loc2_ is LevelObjectBlock)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mObjects)
         {
            if(_loc2_ && _loc2_.isTexture())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:LevelObjectPig = null;
         var _loc2_:int = this.mObjects.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObjectPig;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function isBirdsAlive() : Boolean
      {
         var _loc2_:LevelObjectBird = null;
         var _loc1_:int = this.mObjects.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.mObjects[_loc1_] as LevelObjectBird;
            if(_loc2_ && _loc2_.health > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.mObjects.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.mObjects[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.isGround())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.considerSleeping())
               {
                  return false;
               }
               if(_loc2_ is LevelObjectBird && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function getRandomPig(param1:Boolean = false) : LevelObjectPig
      {
         var _loc7_:LevelObjectPig = null;
         var _loc2_:int = this.mObjects.length;
         var _loc3_:int = this.getPigCount(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.mObjects[_loc6_] as LevelObjectPig) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.isBlinking && !_loc7_.isScreaming)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     return _loc7_;
                  }
                  _loc5_++;
               }
            }
            _loc6_++;
         }
         return null;
      }
      
      public function getMaxScore() : int
      {
         var _loc3_:LevelObject = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.mObjects.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObject;
            if(_loc3_)
            {
               _loc1_ += _loc3_.levelItem.score;
               if(_loc3_.isDamageAwardingScore())
               {
                  _loc1_ += this.damageScoreMultiplier * int(_loc3_.healthMax);
               }
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.getMaxScore());
      }
      
      protected function hasMinimumCollisionSpeed(param1:LevelObjectBase, param2:LevelObjectBase) : Boolean
      {
         if(param1 is LevelObject && param2 is LevelObject && !(param1 as LevelObject).isFastEnoughToDamage() && !(param2 as LevelObject).isFastEnoughToDamage())
         {
            return false;
         }
         return true;
      }
      
      public function resetBirds() : void
      {
         this.mBirdCount = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:LevelObject, param2:LevelObject) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is LevelObjectBird)
         {
            return 1;
         }
         if(param1 is LevelObjectBird)
         {
            return Number(param1.getDamageFactor(param2.getMaterialName()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:LevelObject, param2:LevelObject) : Number
      {
         if(param2 is LevelObjectBird)
         {
            return 0;
         }
         return 1;
      }
      
      protected function getCollisionForce(param1:LevelObject, param2:LevelObject) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.getBody().GetMass();
         var _loc7_:Number = param2.getBody().GetMass();
         var _loc8_:b2Vec2 = param1.getPreviousLinearVelocity();
         var _loc9_:b2Vec2 = param2.getPreviousLinearVelocity();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function objectCollision(param1:LevelObjectBase, param2:LevelObjectBase, param3:b2Contact) : Boolean
      {
         var _loc13_:LevelJoint = null;
         var _loc14_:b2JointEdge = null;
         var _loc15_:b2JointEdge = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         if(!this.mCollisionsEnabled)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:LevelObject = param1 as LevelObject;
         var _loc5_:LevelObject = param2 as LevelObject;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.destroyedOnCollision)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.destroyedOnCollision)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(_loc4_ is LevelObjectBird && _loc5_ is LevelObjectBird)
         {
            return true;
         }
         var _loc6_:Number = this.getCollisionForce(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc4_.applyDamage(_loc6_ * _loc10_,this,_loc5_,true);
         var _loc12_:Number = _loc5_.applyDamage(_loc6_ * _loc9_,this,_loc4_,true);
         for each(_loc13_ in this.mJoints)
         {
            if(_loc13_.isBreakable && _loc6_ >= _loc13_.minBreakForce)
            {
               _loc14_ = _loc4_.getBody().GetJointList();
               _loc15_ = _loc5_.getBody().GetJointList();
               if(_loc14_ != null && _loc14_.joint == _loc13_.B2Joint || _loc15_ != null && _loc15_.joint == _loc13_.B2Joint)
               {
                  this.removeJoint(_loc13_);
               }
            }
         }
         if(_loc11_ < _loc7_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc12_ < _loc8_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is LevelObjectBird)
         {
            if(_loc12_ <= 0)
            {
               _loc16_ = _loc4_.getVelocityFactor(_loc5_.getMaterialName());
               this.applyBirdSpeedBoost(_loc4_ as LevelObjectBird,_loc6_ * _loc9_,_loc8_,_loc16_);
               return false;
            }
         }
         if(_loc5_ is LevelObjectBird)
         {
            if(_loc11_ <= 0)
            {
               _loc17_ = _loc5_.getVelocityFactor(_loc4_.getMaterialName());
               this.applyBirdSpeedBoost(_loc5_ as LevelObjectBird,_loc6_ * _loc10_,_loc7_,_loc17_);
               return false;
            }
         }
         return _loc11_ <= 0 && _loc12_ <= 0;
      }
      
      public function objectCollisionEnded(param1:LevelObjectBase, param2:LevelObjectBase) : void
      {
         if(param1)
         {
            param1.collisionEnded(param2);
         }
         if(param2)
         {
            param2.collisionEnded(param1);
         }
      }
      
      protected function applyBirdSpeedBoost(param1:LevelObjectBird, param2:Number, param3:Number, param4:Number) : void
      {
         if(param2 == 0)
         {
            return;
         }
         var _loc5_:Number = (param2 - param3) / param2;
         if(isNaN(_loc5_))
         {
            _loc5_ = 0;
         }
         if((_loc5_ *= param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.getPreviousLinearVelocity();
         param1.setLinearVelocityForEndOfUpdateCycle(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function cheatKillAllThePigs() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.mObjects.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.mObjects[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_ is LevelObjectPig)
            {
               this.removeObjectWithIndex(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function cheatKillDynamites() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.mObjects.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.mObjects[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_.isTnt())
            {
               this.removeObjectWithIndex(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.mObjects.length;
      }
      
      public function writeObjectInformation(param1:LevelModel) : void
      {
         var _loc4_:LevelObject = null;
         var _loc5_:LevelObjectModel = null;
         var _loc6_:LevelJointModel = null;
         var _loc7_:LevelJoint = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mObjects.length)
         {
            if(_loc4_ = this.mObjects[_loc2_] as LevelObject)
            {
               if(_loc4_.isConcreteObject)
               {
                  if(!_loc4_.isGround())
                  {
                     (_loc5_ = new LevelObjectModel()).angle = _loc4_.getAngle() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.getBody().GetPosition().x;
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.mJoints.length)
         {
            _loc7_ = this.mJoints[_loc3_];
            _loc6_ = new LevelJointModel(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.isCollideConnected,_loc7_.isLimited,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.isMotor,_loc7_.motorSpeed,_loc7_.isBackAndForth,_loc7_.maxTorque);
            param1.addJoint(_loc6_);
            _loc3_++;
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.mObjects.length)
         {
            if(this.mObjects[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.mObjects[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:LevelObject = null;
         this.mGroundTextureEnabled = param1;
         this.setTexture(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.mObjects.length)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObject;
            if(_loc3_ && _loc3_.isTexture())
            {
               _loc3_.sprite.visible = !this.mGroundTextureEnabled;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.mCollisionsEnabled = param1;
      }
      
      public function getBirdsShot() : int
      {
         return this.mBirdsShot;
      }
      
      public function getPigsKilled() : int
      {
         return this.mPigsKilled;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.mLevelMain.damageScoreMultiplier;
      }
   }
}
