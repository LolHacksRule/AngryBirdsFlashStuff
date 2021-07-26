package com.angrybirds.data.level
{
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.data.level.object.LevelObjectComplexModel;
   import com.angrybirds.data.level.object.LevelObjectExplosiveModel;
   import com.angrybirds.data.level.object.LevelObjectGravitySensorModel;
   import com.angrybirds.data.level.object.LevelObjectGunModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.data.level.object.LevelObjectModelBehaviorData;
   import com.angrybirds.data.level.object.LevelSlingshotObjectModel;
   import com.angrybirds.engine.leveleventmanager.LevelEvent;
   import com.angrybirds.engine.objects.GravityFilterCategory;
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.utils.HashMap;
   import com.rovio.utils.LuaUtils;
   import flash.geom.Point;
   
   public class LevelModelSpace extends LevelModel
   {
      
      private static const DEFAULT_GRAVITY_MULTIPLIER:Number = 4;
       
      
      protected var mGravityMultiplier:Number = 4.0;
      
      protected var mGravitySensors:Vector.<LevelObjectGravitySensorModel> = null;
      
      protected var mObjectNamesToIds:HashMap;
      
      protected var mHasGround:Boolean;
      
      public function LevelModelSpace()
      {
         super();
         this.mGravitySensors = new Vector.<LevelObjectGravitySensorModel>();
         this.mObjectNamesToIds = new HashMap();
      }
      
      public static function createFromLua(data:String) : LevelModelSpace
      {
         var level:LevelModelSpace = new LevelModelSpace();
         level.readFromLua(data);
         return level;
      }
      
      public function get gravitySensorCount() : int
      {
         return this.mGravitySensors.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.mHasGround;
      }
      
      public function getGravitySensor(index:int) : LevelObjectGravitySensorModel
      {
         return this.mGravitySensors[index];
      }
      
      protected function validateLuaObject(data:Object) : void
      {
      }
      
      protected function readFromLua(lua:String) : void
      {
         var data:Object = null;
         var pixelRatio:Number = NaN;
         var normalizedLua:String = LuaUtils.normalizeLuaString(lua);
         data = LuaUtils.normalizedLuaToObject(normalizedLua);
         this.validateLuaObject(data);
         mTheme = this.convertName(data.theme);
         mCameras = new Vector.<LevelCameraModel>();
         mBirds = new Vector.<LevelSlingshotObjectModel>();
         mObjects = new Vector.<LevelObjectModel>();
         pixelRatio = data.physicsToWorld;
         this.mGravityMultiplier = data.gravityForceMultiplier !== undefined ? Number(data.gravityForceMultiplier) : Number(DEFAULT_GRAVITY_MULTIPLIER);
         if(data.worldGravity)
         {
            mWorldGravity = data.worldGravity;
         }
         mScoreEagle = data.scores.MightyEagle;
         mScoreGold = data.scores.Gold;
         mScoreSilver = data.scores.Silver;
         var castleCamera:LevelCameraModel = this.readCameraModel(data.castleCameraData,pixelRatio,LevelCameraModel.CASTLE);
         var birdCamera:LevelCameraModel = this.readCameraModel(data.birdCameraData,pixelRatio,LevelCameraModel.SLINGSHOT);
         mCameras.push(castleCamera);
         mCameras.push(birdCamera);
         var objectOrder:Vector.<String> = this.readLevelObjectOrder(data.world,normalizedLua);
         this.readWorld(data.world,objectOrder);
         var jointOrder:Vector.<String> = this.readLevelJointOrder(data.joints,normalizedLua);
         this.readJoints(data.joints,jointOrder);
         if(data.slingshotX)
         {
            mSlingshotX = data.slingshotX;
         }
         if(data.slingshotY)
         {
            mSlingshotY = data.slingshotY;
         }
      }
      
      private function readLevelObjectOrder(data:Object, lua:String) : Vector.<String>
      {
         return this.readObjectOrder(data,lua,"world");
      }
      
      private function readLevelJointOrder(data:Object, lua:String) : Vector.<String>
      {
         return this.readObjectOrder(data,lua,"joints");
      }
      
      private function readObjectOrder(data:Object, lua:String, blockName:String) : Vector.<String>
      {
         var sortableName:SortableName = null;
         var blockLua:String = null;
         var name:* = null;
         var nameIndex:int = 0;
         var order:Array = [];
         var blockStart:int = lua.indexOf("\"" + blockName + "\"");
         if(blockStart >= 0)
         {
            blockLua = lua.substring(blockStart);
            for(name in data)
            {
               nameIndex = blockLua.indexOf("\"" + name + "\"");
               if(nameIndex)
               {
                  sortableName = new SortableName();
                  sortableName.name = name;
                  sortableName.index = nameIndex;
                  order.push(sortableName);
               }
            }
         }
         order.sortOn("index",Array.NUMERIC);
         var result:Vector.<String> = new Vector.<String>();
         for each(sortableName in order)
         {
            result.push(sortableName.name);
         }
         return result;
      }
      
      private function readWorld(data:Object, objectOrder:Vector.<String>) : void
      {
         var objectName:String = null;
         var gameObject:Object = null;
         if(data.ground)
         {
            this.mHasGround = true;
         }
         var id:int = 0;
         for each(objectName in objectOrder)
         {
            gameObject = data[objectName];
            if(gameObject.startNumber && gameObject.name.indexOf("Bird") >= 0)
            {
               this.readSlingshotObjectModel(gameObject);
            }
            else if(gameObject.radius)
            {
               this.readGravitySensor(gameObject);
            }
            else if(this.readGameObject(gameObject,id))
            {
               id++;
            }
         }
      }
      
      private function readSlingshotObjectModel(data:Object) : void
      {
         var slingshotObject:LevelSlingshotObjectModel = new LevelSlingshotObjectModel();
         slingshotObject.x = data.x;
         slingshotObject.y = data.y;
         slingshotObject.angle = data.angle;
         slingshotObject.type = this.convertName(data.definition);
         slingshotObject.index = data.startNumber - 1;
         if(slingshotObject.index == 0)
         {
            mSlingshotX = slingshotObject.x;
            mSlingshotY = slingshotObject.y - 8.5;
            mSlingshotAngle = slingshotObject.angle;
         }
         mBirds.push(slingshotObject);
      }
      
      private function readGravitySensor(data:Object) : void
      {
         var gravitySensor:LevelObjectGravitySensorModel = new LevelObjectGravitySensorModel();
         gravitySensor.x = data.x;
         gravitySensor.y = data.y;
         gravitySensor.shape = new CircleShapeDefinition(data.radius);
         gravitySensor.type = data.definition;
         gravitySensor.angle = this.convertAngle(data.angle);
         gravitySensor.minForce = data.gravitationMinForce;
         gravitySensor.maxForce = data.gravitationMaxForce;
         gravitySensor.gravityMultiplier = this.mGravityMultiplier;
         this.mGravitySensors.push(gravitySensor);
      }
      
      protected function shouldIgnoreObject(data:Object) : Boolean
      {
         if(data.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         if(data.definition.toUpperCase() == "GROUND")
         {
            this.mHasGround = true;
            return true;
         }
         return false;
      }
      
      protected function readGameObject(data:Object, id:int) : LevelObjectModel
      {
         var model:LevelObjectModel = null;
         var levelObjectTNT:LevelObjectExplosiveModel = null;
         var modelGun:LevelObjectGunModel = null;
         var modelComplex:LevelObjectComplexModel = null;
         var behaviors:Vector.<LevelObjectModelBehaviorData> = null;
         var j:int = 0;
         var object:Object = null;
         var events:Vector.<LevelEvent> = null;
         var k:int = 0;
         var eventObj:Object = null;
         if(this.shouldIgnoreObject(data))
         {
            return null;
         }
         if(data.explosionRadius != undefined || data.explosionForce != undefined || data.explosionDamageRadius != undefined || data.explosionDamage != undefined)
         {
            levelObjectTNT = new LevelObjectExplosiveModel();
            levelObjectTNT.explosionRadius = data.explosionRadius;
            levelObjectTNT.explosionForce = data.explosionForce;
            levelObjectTNT.explosionDamageRadius = data.explosionDamageRadius;
            levelObjectTNT.explosionDamage = data.explosionDamage;
            model = levelObjectTNT;
         }
         else if(data.shotPattern != undefined)
         {
            modelGun = new LevelObjectGunModel();
            modelGun.shotPattern = data.shotPattern;
            model = modelGun;
         }
         else if(!data.triggerEvents)
         {
            model = new LevelObjectModel();
         }
         else
         {
            modelComplex = new LevelObjectComplexModel();
            modelComplex.onDestroyedEvents.initialize(data.triggerEvents.onDestroyed);
            model = modelComplex;
         }
         model.x = data.x;
         model.y = data.y;
         if(data.z)
         {
            model.z = data.z;
         }
         else
         {
            model.z = LevelObject.Z_NOT_SET;
         }
         model.angle = this.convertAngle(data.angle);
         model.type = this.convertName(data.definition);
         model.id = id;
         model.instanceName = data.name;
         model.linearForce = new b2Vec2(!!data.forceX ? Number(data.forceX) : Number(0),!!data.forceY ? Number(data.forceY) : Number(0));
         if(data.behaviors)
         {
            behaviors = new Vector.<LevelObjectModelBehaviorData>();
            for(j = 0; j < data.behaviors.length; j++)
            {
               object = data.behaviors[j];
               behaviors.push(new LevelObjectModelBehaviorData(object.type,object.name,object.event));
            }
            model.setBehaviorsData(behaviors);
         }
         if(data.events)
         {
            events = new Vector.<LevelEvent>();
            for(k = 0; k < data.events.length; k++)
            {
               eventObj = data.events[k];
               events.push(new LevelEvent(eventObj.name,eventObj.parameters,eventObj.trigger));
            }
            model.setEvents(events);
         }
         if(data.gravityFilterCategory)
         {
            if(GravityFilterCategory[data.gravityFilterCategory] == undefined)
            {
               throw new Error("Unknown gravity filter category \'" + data.gravityFilterCategory + "\' for object \'" + data.definition + "\' (id: " + id + ")");
            }
            model.gravityFilter = GravityFilterCategory[data.gravityFilterCategory];
         }
         if(data.themeTexture)
         {
            model.themeTexture = data.themeTexture;
         }
         mObjects.push(model);
         if(this.mObjectNamesToIds[data.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + data.name);
         }
         this.mObjectNamesToIds[data.name] = id;
         return model;
      }
      
      private function readJoints(data:Object, jointOrder:Vector.<String>) : void
      {
         var jointName:String = null;
         var joint:Object = null;
         var type:int = 0;
         var point1:Point = null;
         var point2:Point = null;
         var jointModel:LevelJointModel = null;
         var end1:String = null;
         var end2:String = null;
         var index1:int = 0;
         var index2:int = 0;
         var collideConnected:Boolean = false;
         var limit:Boolean = false;
         var lowerLimit:Number = NaN;
         var upperLimit:Number = NaN;
         var motor:Boolean = false;
         var motorSpeed:Number = NaN;
         var backAndForth:Boolean = false;
         var maxTorque:Number = NaN;
         var worldAxisX:Number = NaN;
         var worldAxisY:Number = NaN;
         var coordinateType:int = 0;
         var dampingRatio:Number = NaN;
         var frequency:Number = NaN;
         if(!data)
         {
            return;
         }
         for each(jointName in jointOrder)
         {
            joint = data[jointName];
            type = joint.type;
            point1 = new Point(joint.x1,joint.y1);
            point2 = new Point(joint.x2,joint.y2);
            jointModel = null;
            end1 = joint.end1;
            end2 = joint.end2;
            index1 = this.mObjectNamesToIds[end1];
            index2 = this.mObjectNamesToIds[end2];
            if(this.mObjectNamesToIds[end1] == null || this.mObjectNamesToIds[end2] == null)
            {
               throw new Error("Invalid joint! Between objects: " + end1 + " and " + end2);
            }
            collideConnected = joint.collideConnected;
            if(type == LevelJointModel.REVOLUTE_JOINT || type == LevelJointModel.PRISMATIC_JOINT)
            {
               limit = joint.limit;
               lowerLimit = joint.lowerLimit;
               upperLimit = joint.upperLimit;
               motor = joint.motor;
               motorSpeed = joint.motorSpeed;
               backAndForth = joint.backAndForth;
               maxTorque = joint.maxTorque;
               jointModel = new LevelJointModel(type,index1,index2,point1,point2,collideConnected,limit,lowerLimit,upperLimit,motor,motorSpeed,backAndForth,maxTorque);
               if(type == LevelJointModel.PRISMATIC_JOINT)
               {
                  worldAxisX = joint.worldAxisX;
                  worldAxisY = joint.worldAxisY;
                  jointModel.axisX = worldAxisX;
                  jointModel.axisY = worldAxisY;
               }
            }
            else
            {
               jointModel = new LevelJointModel(type,index1,index2,point1,point2,collideConnected);
               if(type == LevelJointModel.DISTANCE_JOINT)
               {
                  coordinateType = joint.coordType;
                  dampingRatio = joint.dampingRatio;
                  frequency = joint.frequency;
                  jointModel.coordinateType = coordinateType;
                  jointModel.dampingRatio = dampingRatio;
                  jointModel.frequency = frequency;
               }
            }
            jointModel.breakable = joint.breakable;
            jointModel.breakForce = joint.breakForce;
            jointModel.isOneWayDestroyed = joint.isOneWayDestroyed;
            jointModel.destroyChild = joint.destroyChild;
            if(joint.type == LevelJointModel.DESTROY_ATTACHED)
            {
               jointModel.annihilationTime = joint.destroyTimer;
               jointModel.distanceToDestroyChild = joint.distanceToDestroyChild;
            }
            mJoints.push(jointModel);
         }
      }
      
      private function readCameraModel(data:Object, pixelRatio:Number, id:String) : LevelCameraModel
      {
         var camera:LevelCameraModel = new LevelCameraModel();
         var cameraData:Object = null;
         if(data.ipad)
         {
            cameraData = data.ipad;
         }
         else
         {
            cameraData = data.iphone;
         }
         var screenWidth:Number = cameraData.screenWidth;
         var screenHeight:Number = cameraData.screenHeight;
         var scale:Number = cameraData.sx;
         var posX:Number = cameraData.px;
         var posY:Number = cameraData.py;
         camera.x = posX / pixelRatio;
         camera.y = posY / pixelRatio;
         camera.left = (posX - 0.5 * screenWidth / scale) / pixelRatio;
         camera.right = (posX + 0.5 * screenWidth / scale) / pixelRatio;
         camera.top = (posY - 0.5 * screenHeight / scale) / pixelRatio;
         camera.bottom = (posY - 0.5 * screenHeight / scale) / pixelRatio;
         camera.scale = scale;
         camera.id = id;
         return camera;
      }
      
      protected function convertAngle(angle:Number) : Number
      {
         return angle * 180 / Math.PI;
      }
      
      protected function convertName(name:String) : String
      {
         return name;
      }
   }
}
