package com.angrybirds.data.level
{
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.data.level.object.LevelSlingshotObjectModel;
   import flash.geom.Point;
   
   public class LevelModel
   {
      
      public static const DEFAULT_THEME:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var mSlingshotX:Number = 0;
      
      protected var mSlingshotY:Number = -8;
      
      protected var mSlingshotAngle:Number = 0.0;
      
      protected var mObjects:Vector.<LevelObjectModel> = null;
      
      protected var mBirds:Vector.<LevelSlingshotObjectModel> = null;
      
      protected var mJoints:Vector.<LevelJointModel> = null;
      
      protected var mCameras:Vector.<LevelCameraModel> = null;
      
      public var mExtension:Number = 0;
      
      public var mAutoCamera:Boolean = false;
      
      protected var mScoreEagle:int = 0;
      
      protected var mScoreGold:int = 0;
      
      protected var mScoreSilver:int = 0;
      
      protected var mTheme:String = null;
      
      protected var mName:String = null;
      
      public function LevelModel()
      {
         super();
         this.mCameras = new Vector.<LevelCameraModel>();
         this.mObjects = new Vector.<LevelObjectModel>();
         this.mBirds = new Vector.<LevelSlingshotObjectModel>();
         this.mJoints = new Vector.<LevelJointModel>();
         this.mTheme = DEFAULT_THEME;
      }
      
      public static function createFromJSON(param1:String) : LevelModel
      {
         var _loc2_:LevelModel = new LevelModel();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:LevelItem) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function createFromClassicJSON(param1:String) : LevelModel
      {
         var _loc2_:LevelModel = createFromJSON(param1);
         _loc2_.mSlingshotX = _loc2_.mBirds[0].x;
         _loc2_.mSlingshotY = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.mObjects.length)
         {
            _loc2_.mObjects[_loc3_].angle = _loc2_.mObjects[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.mObjects.length;
      }
      
      public function get jointCount() : int
      {
         return this.mJoints.length;
      }
      
      public function get com.rovio.sound() : int
      {
         return this.mBirds.length;
      }
      
      public function get cameraCount() : int
      {
         return this.mCameras.length;
      }
      
      public function get scoreGold() : int
      {
         return this.mScoreGold;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.mScoreGold = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.mScoreSilver;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.mScoreSilver = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.mSlingshotX;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.mSlingshotX = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.mSlingshotY;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.mSlingshotY = param1;
      }
      
      public function get slingshotAngle() : Number
      {
         return this.mSlingshotAngle;
      }
      
      public function set slingshotAngle(param1:Number) : void
      {
         this.mSlingshotAngle = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get GetSupportVertex() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.mTheme;
      }
      
      public function set theme(param1:String) : void
      {
         this.mTheme = param1;
      }
      
      public function getEagleScore(param1:LevelItemManager, param2:int) : int
      {
         var _loc3_:int = this.getMaxScore(param1,param2);
         var _loc4_:int = this.SoundEffect();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.mScoreEagle)
         {
            return _loc5_;
         }
         if(this.mScoreEagle == 0)
         {
            return _loc5_;
         }
         return this.mScoreEagle;
      }
      
      public function setEagleScore(param1:int, param2:LevelItemManager, param3:int) : void
      {
         var _loc4_:int = this.getMaxScore(param2,param3);
         var _loc5_:int = this.SoundEffect();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.mScoreEagle = param1;
      }
      
      public function readDataFromJSON(param1:String) : void
      {
         var _loc4_:LevelCameraModel = null;
         var _loc5_:Object = null;
         var _loc6_:LevelSlingshotObjectModel = null;
         var _loc7_:Object = null;
         var _loc8_:LevelObjectModel = null;
         var _loc2_:Object = JSON.parse(param1);
         this.mExtension = _loc2_.LevelExtension;
         this.mAutoCamera = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.mScoreEagle = _loc2_.scoreEagle;
         this.mTheme = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.mJoints = this.buildJoints(_loc2_.counts.joints,_loc2_.world);
         }
         this.mCameras = new Vector.<LevelCameraModel>();
         this.mBirds = new Vector.<LevelSlingshotObjectModel>();
         this.mObjects = new Vector.<LevelObjectModel>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new LevelCameraModel()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.mCameras.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new LevelSlingshotObjectModel()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.mBirds.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new LevelObjectModel()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.type = _loc7_.id;
            _loc8_.id = _loc3_ - 1;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.mObjects.push(_loc8_);
            _loc3_++;
         }
         this.mSlingshotX = _loc2_.slingshotX;
         this.mSlingshotY = _loc2_.slingshotY;
      }
      
      public function getAsSerializeableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.mExtension;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.mScoreEagle;
         _loc1_.theme = this.mTheme;
         _loc1_.name = this.mName;
         _loc1_.camera = this.mCameras;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.mObjects.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.mObjects[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.mJoints.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.mJoints[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.mObjects.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.mJoints.length;
         _loc1_.slingshotX = this.mSlingshotX;
         _loc1_.slingshotY = this.mSlingshotY;
         return _loc1_;
      }
      
      public function getAsJSON() : String
      {
         return JSON.stringify(this.getAsSerializeableObject());
      }
      
      protected function buildJoints(param1:int, param2:Object) : Vector.<LevelJointModel>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:LevelJointModel = null;
         var _loc3_:Vector.<LevelJointModel> = new Vector.<LevelJointModel>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == LevelJointModel.REVOLUTE_JOINT || _loc5_.type == LevelJointModel.PRISMATIC_JOINT)
               {
                  _loc8_ = new LevelJointModel(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                  if(_loc5_.type == LevelJointModel.PRISMATIC_JOINT)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new LevelJointModel(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
               }
               if(_loc5_.type == LevelJointModel.DESTROY_ATTACHED)
               {
                  _loc8_.annihilationTime = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function getMaxScore(param1:LevelItemManager, param2:int) : int
      {
         var _loc4_:LevelObjectModel = null;
         var _loc5_:String = null;
         var _loc6_:LevelItem = null;
         if(param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.mObjects)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.getItem(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.getItem(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.calculateSpawnedObjectScores(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function calculateSpawnedObjectScores(param1:LevelItemManager, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function SoundEffect() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.getBirdScore();
         }
         return 0;
      }
      
      public function getBirdScore() : int
      {
         return 10000;
      }
      
      public function groundAnchorA() : XML
      {
         var _loc2_:LevelCameraModel = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.mExtension + "\"";
         _loc1_ += " AutoCamera=\"" + this.mAutoCamera + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.mCameras)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + LevelCamera.GetProxyCount) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.mBirds[0].x + "\" y=\"" + (this.mBirds[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.mBirds.length)
         {
            _loc1_ += "  <Bird id=\"" + this.mBirds[_loc3_].type + "\" x=\"" + this.mBirds[_loc3_].x + "\" y=\"" + this.mBirds[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.mObjects.length)
         {
            _loc1_ += "<Item id=\"" + this.mObjects[_loc3_].type + "\" x=\"" + this.mObjects[_loc3_].x + "\" y=\"" + this.mObjects[_loc3_].y + "\" rotation=\"" + this.mObjects[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : LevelObjectModel
      {
         return this.mObjects[param1];
      }
      
      public function addObject(param1:LevelObjectModel) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.mObjects.push(param1);
      }
      
      public function getJoint(param1:int) : LevelJointModel
      {
         return this.mJoints[param1];
      }
      
      public function addJoint(param1:LevelJointModel) : void
      {
         this.mJoints.push(param1);
      }
      
      public function getSlingShotObject(param1:int) : LevelSlingshotObjectModel
      {
         return this.mBirds[param1];
      }
      
      public function addSlingShotObject(param1:LevelSlingshotObjectModel) : void
      {
         this.mBirds.push(param1);
      }
      
      public function clearCameras() : void
      {
         this.mCameras = new Vector.<LevelCameraModel>();
      }
      
      public function clearBirds() : void
      {
         this.mBirds = new Vector.<LevelSlingshotObjectModel>();
      }
      
      public function getCamera(param1:int) : LevelCameraModel
      {
         return this.mCameras[param1];
      }
      
      public function addCamera(param1:LevelCameraModel) : void
      {
         this.mCameras.push(param1);
      }
   }
}
