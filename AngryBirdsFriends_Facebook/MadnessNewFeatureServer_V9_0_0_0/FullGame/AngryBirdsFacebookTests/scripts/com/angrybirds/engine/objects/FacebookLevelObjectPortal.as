package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemFriends;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectPortal extends LevelObjectBlock
   {
      
      private static const SECONDS_TOUCHING_BEFORE_FORCE_TELEPORT:Number = 1;
      
      private static const UPDATE_ROUNDS_FOR_QUEUED_OBJECTS:int = 2;
       
      
      private var mMinSpeedOut:Number;
      
      private var mTeleportQueue:Vector.<Object>;
      
      private var mForceTeleportTimers:Object;
      
      private var mPortalPair:FacebookLevelObjectPortal;
      
      private var mSideBlocksInstalled:Boolean;
      
      public function FacebookLevelObjectPortal(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         notDamageAwarding = true;
         this.init();
      }
      
      override protected function createBodyDefinition(x:Number, y:Number) : b2BodyDef
      {
         var bodyDefinition:b2BodyDef = null;
         bodyDefinition = new b2BodyDef();
         bodyDefinition.position.x = x;
         bodyDefinition.position.y = y;
         bodyDefinition.type = b2Body.b2_staticBody;
         return bodyDefinition;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var fixture:b2Fixture = super.createFixture();
         fixture.SetSensor(true);
         return fixture;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         return health;
      }
      
      protected function init() : void
      {
         this.mMinSpeedOut = Number((levelItem as LevelItemFriends).getProperty("portal","minSpeedOut"));
         this.mTeleportQueue = new Vector.<Object>();
         this.mForceTeleportTimers = new Object();
         this.mSideBlocksInstalled = false;
      }
      
      public function sensorContactStart(collidingObject:LevelObjectBase) : Boolean
      {
         if(!collidingObject)
         {
            return false;
         }
         if(this.isMovingTowardsPortal(collidingObject as LevelObject) && !this.isInQueue(collidingObject as LevelObject))
         {
            this.addToTeleportQueue(collidingObject as LevelObject);
         }
         else
         {
            this.mForceTeleportTimers["" + (collidingObject as LevelObject).id] = SECONDS_TOUCHING_BEFORE_FORCE_TELEPORT * 1000;
         }
         return true;
      }
      
      public function sensorContactEnd(collidingObject:LevelObjectBase) : void
      {
         delete this.mForceTeleportTimers["" + (collidingObject as LevelObject).id];
      }
      
      private function isMovingTowardsPortal(object:LevelObject) : Boolean
      {
         var velocityX:Number = object.getBody().GetLinearVelocity().x;
         var velocityY:Number = object.getBody().GetLinearVelocity().y;
         var portalNormal:Object = {
            "x":Math.cos(getAngle() + Math.PI),
            "y":Math.sin(getAngle() + Math.PI)
         };
         var dotNormalVelocity:Number = velocityX * portalNormal.x + velocityY * portalNormal.y;
         var objectSpeed:Number = object.getSpeedVectorMagnitude();
         var collisionAngle:Number = Math.acos(dotNormalVelocity / objectSpeed);
         return collisionAngle > Math.PI * 0.5;
      }
      
      private function isInQueue(object:LevelObject) : Boolean
      {
         return this.mTeleportQueue.indexOf(object) > -1;
      }
      
      private function addToTeleportQueue(object:LevelObject, overrideVelocity:Point = null) : void
      {
         object.setToPortalQueue(true);
         var velocityX:Number = object.getBody().GetLinearVelocity().x;
         var velocityY:Number = object.getBody().GetLinearVelocity().y;
         var queueItem:Object = {
            "object":object,
            "oldVelocity":(!!overrideVelocity ? overrideVelocity : new Point(velocityX,velocityY)),
            "oldFilterData":object.getFilterData(),
            "updateCounter":0,
            "oldGravityFilter":object.gravityFilter
         };
         var filterData:b2FilterData = new b2FilterData();
         filterData.maskBits = 0;
         object.setFilterData(filterData);
         object.getBody().SetLinearVelocity(new b2Vec2(0,0));
         object.gravityFilter = GravityFilterCategory.IGNOREGRAVITY;
         this.mTeleportQueue.push(queueItem);
      }
      
      public function setPortalPair(object:FacebookLevelObjectPortal) : void
      {
         this.mPortalPair = object;
      }
      
      public function hasPortalPair() : Boolean
      {
         return this.mPortalPair != null;
      }
      
      private function spawnSideBlocks() : Boolean
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         var sideWidth:Number = NaN;
         if(!AngryBirdsEngine.smLevelMain.objects)
         {
            return false;
         }
         posX = getBody().GetPosition().x;
         posY = getBody().GetPosition().y;
         var rotatePivot:Point = new Point(posX,posY);
         sideWidth = mLevelItem.shape.getWidth() * 1.1;
         var sideOffset:Number = (mLevelItem.getItemWidth() - sideWidth) * 0.5;
         var name:String = "TeleportSide";
         var position:Point = new Point(posX + sideOffset,posY + mLevelItem.getItemHeight() * 0.5 + 0.6 * 0.5);
         this.createSide(name,position,getAngle(),rotatePivot);
         name = "TeleportSide";
         position = new Point(posX + sideOffset,posY - mLevelItem.getItemHeight() * 0.5 - 0.6 * 0.5);
         this.createSide(name,position,getAngle(),rotatePivot);
         name = "TeleportBack";
         position = new Point(posX + mLevelItem.getItemWidth() * 0.5 + 2.3 * 0.5,posY);
         this.createSide(name,position,getAngle(),rotatePivot);
         position = new Point(posX + mLevelItem.getItemWidth() * 0.5,posY);
         this.createStaticMaskBlock(position,getAngle(),rotatePivot);
         return true;
      }
      
      private function createSide(name:String, position:Point, angle:Number, rotatePivot:Point) : void
      {
         var coordinates:Point = this.rotatePoint(position,rotatePivot,angle);
         var newBlock:LevelObject = AngryBirdsEngine.smLevelMain.objects.addObject(name,coordinates.x,coordinates.y,0,LevelObjectManager.ID_NEXT_FREE,false,false,false) as LevelObject;
         newBlock.setAngle(angle);
      }
      
      private function createStaticMaskBlock(position:Point, angle:Number, rotatePivot:Point) : void
      {
         var coordinates:Point = this.rotatePoint(position,rotatePivot,angle);
         var newBlock:LevelObject = AngryBirdsEngine.smLevelMain.objects.addObject("TELEPORT_STATIC_MASK",coordinates.x,coordinates.y,0,LevelObjectManager.ID_NEXT_FREE,false,false,false) as LevelObject;
         newBlock.setAngle(angle);
      }
      
      private function rotatePoint(point:Point, pivot:Point, angle:Number) : Point
      {
         var newX:Number = pivot.x + (point.x - pivot.x) * Math.cos(angle) - (point.y - pivot.y) * Math.sin(angle);
         var newY:Number = pivot.y + (point.x - pivot.x) * Math.sin(angle) + (point.y - pivot.y) * Math.cos(angle);
         return new Point(newX,newY);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(AngryBirdsEngine.smLevelMain.physicsEnabled)
         {
            this.processTeleportQueue(updateManager);
            this.processForceTeleports(deltaTimeMilliSeconds);
            if(!this.mSideBlocksInstalled)
            {
               this.mSideBlocksInstalled = this.spawnSideBlocks();
            }
         }
         else if(this.mSideBlocksInstalled)
         {
            this.mSideBlocksInstalled = false;
         }
      }
      
      private function processTeleportQueue(updateManager:ILevelObjectUpdateManager) : void
      {
         var queueItem:Object = null;
         var portalPair:FacebookLevelObjectPortal = null;
         var block:LevelObject = null;
         var blockPosition:b2Vec2 = null;
         var portalAngle:Number = NaN;
         var targetPortalAngle:Number = NaN;
         var targetPortalNormal:Point = null;
         var portalNormal:Point = null;
         var portalAngleDiff:Number = NaN;
         var portalToObject:Point = null;
         var targetPortalPosition:Point = null;
         var portalOffset:Number = NaN;
         var newBlockPosition:Point = null;
         var blockId:* = null;
         if(!this.mTeleportQueue)
         {
            return;
         }
         if(!this.hasPortalPair())
         {
            portalPair = (updateManager as FacebookLevelObjectManager).findPortalPair(this);
            if(portalPair != null)
            {
               this.setPortalPair(portalPair);
               portalPair.setPortalPair(this);
            }
         }
         for each(queueItem in this.mTeleportQueue)
         {
            block = queueItem.object;
            if(block && !block.isDisposed)
            {
               if(!this.hasPortalPair())
               {
                  updateManager.removeObject(block,true,true);
               }
               else
               {
                  if(queueItem.updateCounter == 0)
                  {
                     AngryBirdsEngine.smLevelMain.objects.removeJointsForObject(block);
                     blockPosition = block.getBody().GetPosition();
                     this.spawnTeleportParticles(blockPosition.x,blockPosition.y);
                     portalAngle = getAngle() + Math.PI;
                     targetPortalAngle = this.mPortalPair.getAngle() + Math.PI;
                     targetPortalNormal = new Point(Math.cos(targetPortalAngle),Math.sin(targetPortalAngle));
                     portalNormal = new Point(Math.cos(portalAngle),Math.sin(portalAngle));
                     portalAngleDiff = Math.acos(portalNormal.x * targetPortalNormal.x + portalNormal.y * targetPortalNormal.y);
                     portalToObject = new Point(blockPosition.x - getBody().GetPosition().x,blockPosition.y - getBody().GetPosition().y);
                     targetPortalPosition = new Point(this.mPortalPair.getBody().GetPosition().x,this.mPortalPair.getBody().GetPosition().y);
                     portalOffset = mLevelItem.shape.getHeight() * 0.3;
                     newBlockPosition = this.calculateTeleportedPosition(portalToObject,portalNormal,targetPortalNormal,portalAngleDiff,targetPortalPosition,portalOffset);
                     block.getBody().SetPosition(new b2Vec2(newBlockPosition.x,newBlockPosition.y));
                     queueItem.newVelocity = this.calculateTeleportedVelocity(queueItem.oldVelocity,portalAngleDiff,portalNormal,portalAngle,targetPortalAngle,this.mMinSpeedOut);
                     SoundEngine.playSoundFromVariation("portal_exit_0" + Math.round(Math.random() * 1 + 1),"ChannelMisc");
                  }
                  else if(queueItem.updateCounter >= UPDATE_ROUNDS_FOR_QUEUED_OBJECTS)
                  {
                     block.setFilterData(queueItem.oldFilterData);
                     block.setToPortalQueue(false);
                     block.getBody().SetLinearVelocity(new b2Vec2(queueItem.newVelocity.x,queueItem.newVelocity.y));
                     block.gravityFilter = queueItem.oldGravityFilter;
                     blockPosition = block.getBody().GetPosition();
                     this.spawnTeleportParticles(blockPosition.x,blockPosition.y);
                     for(blockId in this.mForceTeleportTimers)
                     {
                        if(blockId == "" + block.id)
                        {
                           delete this.mForceTeleportTimers[blockId];
                           break;
                        }
                     }
                     this.mTeleportQueue.splice(this.mTeleportQueue.indexOf(queueItem),1);
                     continue;
                  }
                  ++queueItem.updateCounter;
               }
            }
         }
      }
      
      private function processForceTeleports(dt:Number) : void
      {
         var blockId:* = null;
         var obj:String = null;
         var levelObject:LevelObject = null;
         var targetPortalAngle:Number = NaN;
         var fakeVelocity:Point = null;
         var removeBlocks:Array = [];
         for(blockId in this.mForceTeleportTimers)
         {
            this.mForceTeleportTimers[blockId] -= dt;
            levelObject = AngryBirdsEngine.smLevelMain.objects.getObjectWithId(int(blockId));
            if(!levelObject || levelObject.isDisposed)
            {
               removeBlocks.push(blockId);
            }
            else if(this.mForceTeleportTimers[blockId] <= 0)
            {
               if(this.hasPortalPair())
               {
                  targetPortalAngle = this.mPortalPair.getAngle() + Math.PI;
                  fakeVelocity = new Point(Math.cos(targetPortalAngle),Math.sin(targetPortalAngle));
                  this.addToTeleportQueue(levelObject,fakeVelocity);
               }
               else
               {
                  this.addToTeleportQueue(levelObject);
               }
               removeBlocks.push(blockId);
            }
         }
         for each(obj in removeBlocks)
         {
            delete this.mForceTeleportTimers[obj];
         }
      }
      
      private function spawnTeleportParticles(posX:Number, posY:Number) : void
      {
         var angle:Number = NaN;
         var speed:int = 0;
         var lifetime:int = 0;
         var particleID:int = 0;
         var isRed:* = levelItem.itemName == "PortalRed";
         var particleName:String = !!isRed ? "NEW24_PORTAL_RED_PUFF" : "NEW24_PORTAL_BLUE_PUFF";
         AngryBirdsEngine.smLevelMain.particles.addSimpleParticle(particleName,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,posX,posY,750,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,0,0,0,0,1,8,true);
         var angleAdd:Number = 360 / 10;
         particleName = !!isRed ? "NEW24_PORTAL_RED_PARTICLE_" : "NEW24_PORTAL_BLUE_PARTICLE_";
         for(var counter:int = 0; counter < 10; counter++)
         {
            angle = angleAdd * counter * Math.PI / 180;
            speed = 10 + Math.random() * 10;
            lifetime = 200 + Math.random() * 200;
            particleID = 1 + Math.random() * 4;
            AngryBirdsEngine.smLevelMain.particles.addSimpleParticle(particleName + particleID,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,posX,posY,lifetime,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,speed * Math.cos(angle),-speed * Math.sin(angle),0,0);
         }
      }
      
      private function calculateTeleportedPosition(portalToObject:Point, portalNormal:Point, targetPortalNormal:Point, portalAngleDiff:Number, targetPortalPosition:Point, portalOffset:Number) : Point
      {
         var distanceToPortal:Number = Math.sqrt(portalToObject.x * portalToObject.x + portalToObject.y * portalToObject.y);
         var newPosition:Point = new Point(targetPortalPosition.x + targetPortalNormal.x * portalOffset,targetPortalPosition.y + targetPortalNormal.y * portalOffset);
         var angleToNormal:Number = Math.atan2(portalNormal.y,portalNormal.x) + Math.atan2(portalToObject.y,portalToObject.x);
         var halfPi:Number = Math.PI * 0.5;
         if(angleToNormal > halfPi)
         {
            angleToNormal -= 2 * (angleToNormal - halfPi);
         }
         else if(angleToNormal < -halfPi)
         {
            angleToNormal += 2 * (-angleToNormal - halfPi);
         }
         if(portalAngleDiff < halfPi)
         {
            angleToNormal = -angleToNormal;
         }
         newPosition.x = newPosition.x + Math.cos(angleToNormal) * distanceToPortal * targetPortalNormal.x + Math.sin(angleToNormal) * distanceToPortal * targetPortalNormal.y;
         newPosition.y = newPosition.y - Math.sin(angleToNormal) * distanceToPortal * targetPortalNormal.x + Math.cos(angleToNormal) * distanceToPortal * targetPortalNormal.y;
         return newPosition;
      }
      
      private function calculateTeleportedVelocity(oldVelocity:Point, portalAngleDiff:Number, portalNormal:Point, portalAngle:Number, targetPortalAngle:Number, minSpeedOut:Number) : Point
      {
         var dotNormalVelocity:Number = NaN;
         var reflectedVelocity:Point = null;
         var rotationAngle:Number = NaN;
         var currentTravelAngle:Number = NaN;
         var newTravelAngle:Number = NaN;
         var blockSpeed:Number = Math.sqrt(oldVelocity.x * oldVelocity.x + oldVelocity.y * oldVelocity.y);
         var newVelocity:Point = new Point(0,0);
         if(portalAngleDiff <= 0.5 * Math.PI)
         {
            dotNormalVelocity = oldVelocity.x * portalNormal.x + oldVelocity.y * portalNormal.y;
            reflectedVelocity = new Point(oldVelocity.x - 2 * dotNormalVelocity * portalNormal.x,oldVelocity.y - 2 * dotNormalVelocity * portalNormal.y);
            if(targetPortalAngle < portalAngle && portalAngle - targetPortalAngle < Math.PI)
            {
               rotationAngle = portalAngleDiff;
            }
            else
            {
               rotationAngle = -portalAngleDiff;
            }
            newVelocity.x = Math.cos(rotationAngle) * reflectedVelocity.x + Math.sin(rotationAngle) * reflectedVelocity.y;
            newVelocity.y = -Math.sin(rotationAngle) * reflectedVelocity.x + Math.cos(rotationAngle) * reflectedVelocity.y;
         }
         else
         {
            currentTravelAngle = Math.atan2(oldVelocity.y,oldVelocity.x);
            newTravelAngle = currentTravelAngle + Math.PI - (portalAngle - targetPortalAngle);
            newVelocity.x = Math.cos(newTravelAngle) * blockSpeed;
            newVelocity.y = Math.sin(newTravelAngle) * blockSpeed;
         }
         if(blockSpeed < minSpeedOut)
         {
            newVelocity.x = newVelocity.x / blockSpeed * minSpeedOut;
            newVelocity.y = newVelocity.y / blockSpeed * minSpeedOut;
         }
         return newVelocity;
      }
      
      public function get sideBlocksInstalled() : Boolean
      {
         return this.mSideBlocksInstalled;
      }
   }
}
