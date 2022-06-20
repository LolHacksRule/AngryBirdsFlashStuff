package com.angrybirds.data.level
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.data.level.object.LevelObjectModelBehaviorData;
   import com.angrybirds.data.level.object.LevelSlingshotObjectModel;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.leveleventmanager.LevelEvent;
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.Box2D.Common.Math.b2Vec2;
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
      
      protected var mBlockDestructionScorePercentage:int = 90;
      
      protected var mTheme:String = null;
      
      protected var mName:String = null;
      
      protected var mWorldGravity:Number = 20;
      
      protected var mBorderTop:Number;
      
      protected var mBorderGround:Number;
      
      protected var mBorderLeft:Number;
      
      protected var mBorderRight:Number;
      
      public function LevelModel()
      {
         super();
         this.mCameras = new Vector.<LevelCameraModel>();
         this.mObjects = new Vector.<LevelObjectModel>();
         this.mBirds = new Vector.<LevelSlingshotObjectModel>();
         this.mJoints = new Vector.<LevelJointModel>();
         this.mTheme = DEFAULT_THEME;
      }
      
      public static function createFromJSON(data:String) : LevelModel
      {
         var level:LevelModel = new LevelModel();
         level.readDataFromJSON(data);
         return level;
      }
      
      public static function createFromClassicJSON(data:String) : LevelModel
      {
         var level:LevelModel = createFromJSON(data);
         if(isNaN(level.mSlingshotX) && isNaN(level.mSlingshotY))
         {
            level.mSlingshotX = level.mBirds[0].x;
            level.mSlingshotY = level.mBirds[0].y - 8.5;
         }
         for(var i:Number = 0; i < level.mObjects.length; i++)
         {
            level.mObjects[i].angle = level.mObjects[i].angle;
         }
         return level;
      }
      
      public function get objectCount() : int
      {
         return this.mObjects.length;
      }
      
      public function get jointCount() : int
      {
         return this.mJoints.length;
      }
      
      public function get slingShotObjectCount() : int
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
      
      public function set scoreGold(score:int) : void
      {
         this.mScoreGold = score;
      }
      
      public function get scoreSilver() : int
      {
         return this.mScoreSilver;
      }
      
      public function set scoreSilver(score:int) : void
      {
         this.mScoreSilver = score;
      }
      
      public function get scoreEagle() : int
      {
         return this.mScoreEagle;
      }
      
      public function set scoreEagle(score:int) : void
      {
         this.mScoreEagle = score;
      }
      
      public function get blockDestructionScorePercentage() : int
      {
         return this.mBlockDestructionScorePercentage;
      }
      
      public function set blockDestructionScorePercentage(value:int) : void
      {
         this.mBlockDestructionScorePercentage = value;
      }
      
      public function get slingshotX() : Number
      {
         return this.mSlingshotX;
      }
      
      public function set slingshotX(x:Number) : void
      {
         this.mSlingshotX = x;
      }
      
      public function get slingshotY() : Number
      {
         return this.mSlingshotY;
      }
      
      public function set slingshotY(y:Number) : void
      {
         this.mSlingshotY = y;
      }
      
      public function get slingshotAngle() : Number
      {
         return this.mSlingshotAngle;
      }
      
      public function set slingshotAngle(angle:Number) : void
      {
         this.mSlingshotAngle = angle;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(newName:String) : void
      {
         this.mName = newName;
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return this.mWorldGravity;
      }
      
      public function set worldGravity(gravity:Number) : void
      {
         this.mWorldGravity = gravity;
      }
      
      public function get theme() : String
      {
         return this.mTheme;
      }
      
      public function set theme(newTheme:String) : void
      {
         this.mTheme = newTheme;
      }
      
      public function readDataFromJSON(data:String) : void
      {
         var camera:LevelCameraModel = null;
         var birdObj:Object = null;
         var bird:LevelSlingshotObjectModel = null;
         var blockObj:Object = null;
         var item:LevelObjectModel = null;
         var behaviors:Vector.<LevelObjectModelBehaviorData> = null;
         var j:int = 0;
         var object:Object = null;
         var events:Vector.<LevelEvent> = null;
         var k:int = 0;
         var eventObj:Object = null;
         var json:Object = JSON.parse(data);
         this.mExtension = json.LevelExtension;
         this.mAutoCamera = false;
         this.scoreSilver = json.scoreSilver;
         this.scoreGold = json.scoreGold;
         this.scoreEagle = json.scoreEagle;
         if(json.blockDestructionScorePercentage)
         {
            this.blockDestructionScorePercentage = json.blockDestructionScorePercentage;
         }
         this.mTheme = json.theme;
         this.mName = json.id;
         if(json.borderTop)
         {
            this.borderTop = json.borderTop;
         }
         if(json.borderGround)
         {
            this.borderGround = json.borderGround;
         }
         if(json.borderLeft)
         {
            this.borderLeft = json.borderLeft;
         }
         if(json.borderRight)
         {
            this.borderRight = json.borderRight;
         }
         if(json.counts.joints)
         {
            this.mJoints = this.buildJoints(json.counts.joints,json.world);
         }
         this.mCameras = new Vector.<LevelCameraModel>();
         this.mBirds = new Vector.<LevelSlingshotObjectModel>();
         this.mObjects = new Vector.<LevelObjectModel>();
         for(var i:Number = 0; i < json.camera.length; i++)
         {
            camera = new LevelCameraModel();
            camera.x = json.camera[i].x;
            camera.y = json.camera[i].y;
            camera.left = json.camera[i].left;
            camera.right = json.camera[i].right;
            camera.top = json.camera[i].top;
            camera.bottom = json.camera[i].bottom;
            camera.id = json.camera[i].id;
            camera.scale = Number(json.camera[i].scale) || Number(0);
            this.mCameras.push(camera);
         }
         for(i = 1; i <= json.counts.birds; i++)
         {
            birdObj = json.world["bird_" + i];
            bird = new LevelSlingshotObjectModel();
            bird.x = birdObj.x;
            bird.y = birdObj.y;
            bird.type = birdObj.id;
            bird.type = birdObj.id;
            bird.index = i - 1;
            this.mBirds.push(bird);
         }
         for(i = 1; i <= json.counts.blocks; i++)
         {
            blockObj = json.world["block_" + i];
            item = new LevelObjectModel();
            item.x = blockObj.x;
            item.y = blockObj.y;
            if(blockObj.z)
            {
               item.z = blockObj.z;
            }
            else
            {
               item.z = LevelObject.Z_NOT_SET;
            }
            item.type = blockObj.id;
            item.id = i - 1;
            if(blockObj.front)
            {
               item.front = blockObj.front;
            }
            if(blockObj.angularVelocity)
            {
               item.angularVelocity = blockObj.angularVelocity;
            }
            if(blockObj.hasOwnProperty("forceX") || blockObj.hasOwnProperty("forceY"))
            {
               item.linearForce = new b2Vec2(blockObj.forceX,blockObj.forceY);
            }
            if(blockObj.behaviors)
            {
               behaviors = new Vector.<LevelObjectModelBehaviorData>();
               for(j = 0; j < blockObj.behaviors.length; j++)
               {
                  object = blockObj.behaviors[j];
                  behaviors.push(new LevelObjectModelBehaviorData(object.type,object.name,object.event));
               }
               item.setBehaviorsData(behaviors);
            }
            if(blockObj.events)
            {
               events = new Vector.<LevelEvent>();
               for(k = 0; k < blockObj.events.length; k++)
               {
                  eventObj = blockObj.events[k];
                  events.push(new LevelEvent(eventObj.name,eventObj.parameters,eventObj.trigger));
               }
               item.setEvents(events);
            }
            item.awake = blockObj.awake;
            item.angle = blockObj.angle;
            if(item.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.mObjects.push(item);
         }
         this.mSlingshotX = json.slingshotX;
         this.mSlingshotY = json.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var joint:Object = null;
         var object:Object = new Object();
         object.LevelExtension = this.mExtension;
         object.scoreSilver = this.scoreSilver;
         object.scoreGold = this.scoreGold;
         object.scoreEagle = this.scoreEagle;
         object.worldGravity = this.worldGravity;
         object.borderTop = this.borderTop;
         object.borderGround = this.borderGround;
         object.borderLeft = this.borderLeft;
         object.borderRight = this.borderRight;
         object.theme = this.mTheme;
         object.name = this.mName;
         object.blockDestructionScorePercentage = this.blockDestructionScorePercentage;
         object.camera = this.mCameras;
         var i:Number = 0;
         object.world = new Object();
         for(i = 0; i < this.mBirds.length; i++)
         {
            object.world["bird_" + (i + 1)] = this.mBirds[i].getAsSerializableObject();
         }
         for(i = 0; i < this.mObjects.length; i++)
         {
            object.world["block_" + (i + 1)] = this.mObjects[i].getAsSerializableObject();
         }
         for(i = 0; i < this.mJoints.length; i++)
         {
            joint = this.mJoints[i].getAsSerializableObject();
            joint.index1 = this.getObjectIndex(joint.index1);
            joint.index2 = this.getObjectIndex(joint.index2);
            object.world["joint_" + (i + 1)] = joint;
         }
         object.counts = new Object();
         object.counts.blocks = this.mObjects.length;
         object.counts.birds = this.mBirds.length;
         object.counts.joints = this.mJoints.length;
         object.slingshotX = this.mSlingshotX;
         object.slingshotY = this.mSlingshotY;
         return object;
      }
      
      protected function getObjectIndex(id:int) : int
      {
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            if(this.mObjects[i].id == id)
            {
               return i;
            }
         }
         return -1;
      }
      
      public function getAsJSON() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function buildJoints(count:int, world:Object) : Vector.<LevelJointModel>
      {
         var jointObj:Object = null;
         var point1:Point = null;
         var point2:Point = null;
         var id1:int = 0;
         var id2:int = 0;
         var joint:LevelJointModel = null;
         var joints:Vector.<LevelJointModel> = new Vector.<LevelJointModel>();
         for(var i:int = 1; i <= count; i++)
         {
            jointObj = world["joint_" + i];
            if(jointObj != null)
            {
               point1 = new Point(jointObj.x1,jointObj.y1);
               point2 = new Point(jointObj.x2,jointObj.y2);
               id1 = jointObj.index1;
               id2 = jointObj.index2;
               joint = null;
               if(jointObj.type == LevelJointModel.REVOLUTE_JOINT || jointObj.type == LevelJointModel.PRISMATIC_JOINT)
               {
                  joint = new LevelJointModel(jointObj.type,id1,id2,point1,point2,jointObj.collideConnected,jointObj.limit,jointObj.lowerLimit,jointObj.upperLimit,jointObj.motor,jointObj.motorSpeed,jointObj.backAndForth,jointObj.maxTorque,jointObj.breakable,jointObj.breakForce,jointObj.isOneWayDestroyed);
                  if(jointObj.type == LevelJointModel.PRISMATIC_JOINT)
                  {
                     joint.axisX = jointObj.axisX;
                     joint.axisY = jointObj.axisY;
                  }
               }
               else
               {
                  joint = new LevelJointModel(jointObj.type,id1,id2,point1,point2,jointObj.collideConnected,false,0,0,false,0,false,0,jointObj.breakable,jointObj.breakForce,jointObj.isOneWayDestroyed);
               }
               if(jointObj.type == LevelJointModel.DESTROY_ATTACHED)
               {
                  joint.annihilationTime = Number(jointObj.destroyTimer) || Number(jointObj.annihilationTime) || Number(0);
                  joint.distanceToDestroyChild = Number(jointObj.distanceToDestroyChild) || Number(0);
               }
               joint.destroyChild = jointObj.destroyChild;
               joints.push(joint);
            }
         }
         return joints;
      }
      
      public function getMaxObjectScore(levelItemManager:LevelItemManager) : int
      {
         var item:LevelObjectModel = null;
         var itemName:String = null;
         var levelItem:LevelItem = null;
         if(!levelItemManager)
         {
            return 0;
         }
         var score:int = 0;
         for each(item in this.mObjects)
         {
            itemName = item.type;
            levelItem = levelItemManager.getItem(itemName);
            if(levelItem == null && itemName.indexOf("MISC_") == 0)
            {
               itemName = "MISC_FOOD_" + itemName.substring(5);
               levelItem = levelItemManager.getItem(itemName);
            }
            if(levelItem)
            {
               score += levelItem.destroyedScoreInc;
               if(levelItem.isDamageAwardingScore())
               {
                  score += levelItem.damageScore;
               }
            }
         }
         return score;
      }
      
      public function getMaxBlockScore(levelItemManager:LevelItemManager) : int
      {
         var item:LevelObjectModel = null;
         var itemName:String = null;
         var levelItem:LevelItem = null;
         if(!levelItemManager)
         {
            return 0;
         }
         var score:int = 0;
         for each(item in this.mObjects)
         {
            itemName = item.type;
            levelItem = levelItemManager.getItem(itemName);
            if(!(levelItem == null || levelItem.itemType == LevelItem.ITEM_TYPE_PIG))
            {
               if(levelItem == null && itemName.indexOf("MISC_") == 0)
               {
                  itemName = "MISC_FOOD_" + itemName.substring(5);
                  levelItem = levelItemManager.getItem(itemName);
               }
               if(levelItem)
               {
                  score += levelItem.destroyedScoreInc;
                  if(levelItem.isDamageAwardingScore())
                  {
                     score += levelItem.damageScore;
                  }
               }
            }
         }
         return score;
      }
      
      public function getMaxBirdScore() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.getBirdScore();
         }
         return 0;
      }
      
      private function getBirdScore() : int
      {
         return 10000;
      }
      
      public function getAsXML() : XML
      {
         var camera:LevelCameraModel = null;
         var i:int = 0;
         var strXML:* = "";
         strXML += "<Level background=\"ThemeHills\"";
         strXML += " LevelExtension=\"" + this.mExtension + "\"";
         strXML += " AutoCamera=\"" + this.mAutoCamera + "\"";
         strXML += " scoreSilver=\"" + this.scoreSilver + "\"";
         strXML += " scoreGold=\"" + this.scoreGold + "\"";
         strXML += " scoreEagle=\"" + this.scoreEagle + "\"";
         strXML += " blockDestructionScorePercentage=\"" + this.blockDestructionScorePercentage + "\"";
         strXML += " worldGravity=\"" + this.worldGravity + "\"";
         strXML += " topBorder=\"" + this.borderTop + "\"";
         strXML += " groundBorder=\"" + this.borderGround + "\"";
         strXML += " leftBorder=\"" + this.borderLeft + "\"";
         strXML += " rightBorder=\"" + this.borderRight + "\"";
         strXML += ">";
         strXML += "<Cameras>";
         for each(camera in this.mCameras)
         {
            strXML += " <Camera id=\"" + camera.id + "\" leftBorder=\"" + camera.left + "\" rightBorder=\"" + camera.right + "\" topBorder=\"" + camera.top + "\" bottomBorder=\"" + (camera.top + LevelCamera.SCREEN_HEIGHT_B2) + "\"></Camera>";
         }
         strXML += "</Cameras>";
         strXML += "<Slingshot x=\"" + this.mBirds[0].x + "\" y=\"" + (this.mBirds[0].y - 8) + "\">";
         strXML += " <Birds>";
         for(i = 0; i < this.mBirds.length; i++)
         {
            strXML += "  <Bird id=\"" + this.mBirds[i].type + "\" x=\"" + this.mBirds[i].x + "\" y=\"" + this.mBirds[i].y + "\"></Bird>";
         }
         strXML += " </Birds>";
         strXML += "</Slingshot>";
         for(i = 0; i < this.mObjects.length; i++)
         {
            strXML += "<Item id=\"" + this.mObjects[i].type + "\" x=\"" + this.mObjects[i].x + "\" y=\"" + this.mObjects[i].y + "\" z=\"" + this.mObjects[i].z + "\" rotation=\"" + this.mObjects[i].angle + "\" ></Item>";
         }
         strXML += "</Level>";
         return new XML(strXML);
      }
      
      public function getObject(index:int) : LevelObjectModel
      {
         return this.mObjects[index];
      }
      
      public function addObject(item:LevelObjectModel) : void
      {
         if(item.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.mObjects.push(item);
      }
      
      public function getJoint(index:int) : LevelJointModel
      {
         return this.mJoints[index];
      }
      
      public function addJoint(joint:LevelJointModel) : void
      {
         this.mJoints.push(joint);
      }
      
      public function getSlingShotObject(index:int) : LevelSlingshotObjectModel
      {
         return this.mBirds[index];
      }
      
      public function addSlingShotObject(bird:LevelSlingshotObjectModel) : void
      {
         this.mBirds.push(bird);
      }
      
      public function clearCameras() : void
      {
         this.mCameras = new Vector.<LevelCameraModel>();
      }
      
      public function clearBirds() : void
      {
         this.mBirds = new Vector.<LevelSlingshotObjectModel>();
      }
      
      public function getCamera(index:int) : LevelCameraModel
      {
         return this.mCameras[index];
      }
      
      public function addCamera(camera:LevelCameraModel) : void
      {
         this.mCameras.push(camera);
      }
      
      public function get borderTop() : Number
      {
         return this.mBorderTop;
      }
      
      public function set borderTop(value:Number) : void
      {
         this.mBorderTop = value;
      }
      
      public function get borderGround() : Number
      {
         return this.mBorderGround;
      }
      
      public function set borderGround(value:Number) : void
      {
         this.mBorderGround = value;
      }
      
      public function get borderLeft() : Number
      {
         return this.mBorderLeft;
      }
      
      public function set borderLeft(value:Number) : void
      {
         this.mBorderLeft = value;
      }
      
      public function get borderRight() : Number
      {
         return this.mBorderRight;
      }
      
      public function set borderRight(value:Number) : void
      {
         this.mBorderRight = value;
      }
   }
}
