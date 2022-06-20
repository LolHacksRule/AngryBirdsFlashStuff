package com.angrybirds.engine.beams
{
   import com.angrybirds.data.level.item.LevelItemSpace;
   import com.angrybirds.data.level.item.LevelItemSpaceLua;
   import com.angrybirds.engine.ScoreCollector;
   import com.angrybirds.engine.objects.*;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.raycasting.RayCastHitObject;
   import com.angrybirds.engine.raycasting.RayCaster;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelLaserManager
   {
      
      protected static const LASER_TAIL_LENGTH:Number = 1.3;
       
      
      protected var mLasers:Vector.<LevelLaserBeam>;
      
      protected var mRayCaster:RayCaster;
      
      public function LevelLaserManager(world:b2World)
      {
         this.mLasers = new Vector.<LevelLaserBeam>();
         super();
         this.mRayCaster = new RayCaster(world);
      }
      
      public function dispose() : void
      {
         this.mLasers = null;
      }
      
      public function get laserCount() : int
      {
         return this.mLasers.length;
      }
      
      public function getLaser(index:int) : LevelLaserBeam
      {
         return this.mLasers[index];
      }
      
      public function shootLaser(x:Number, y:Number, angleDegrees:Number, speed:Number, levelItem:LevelItemSpaceLua, sprite:Sprite, animation:Animation, scale:Number, shotByBird:Boolean) : void
      {
         var beam:LevelLaserBeam = new LevelLaserBeam(x,y,angleDegrees / 180 * Math.PI,speed,levelItem,sprite,animation,scale,shotByBird);
         this.mLasers.push(beam);
      }
      
      public function renderLasers(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManagerSpace) : void
      {
         var laser:LevelLaserBeam = null;
         for(var laserIndex:int = this.mLasers.length - 1; laserIndex >= 0; laserIndex--)
         {
            laser = this.mLasers[laserIndex];
            if(!this.updateLaser(laser,deltaTimeMilliSeconds,updateManager))
            {
               this.removeLaser(laserIndex,updateManager);
            }
            else
            {
               laser.render();
            }
         }
      }
      
      protected function removeLaser(index:int, updateManager:ILevelObjectUpdateManagerSpace) : void
      {
         var laser:LevelLaserBeam = null;
         var particle:String = null;
         if(index >= 0)
         {
            laser = this.mLasers[index];
            if(laser)
            {
               if(laser.sprite.parent)
               {
                  laser.sprite.parent.removeChild(laser.sprite);
               }
               particle = laser.destructionParticle;
               if(particle)
               {
                  updateManager.addObject(particle,laser.x,laser.y,0,LevelObjectManager.ID_NEXT_FREE,false,true,false,1,true);
               }
               laser.dispose();
            }
            this.mLasers.splice(index,1);
         }
      }
      
      protected function updateLaser(laser:LevelLaserBeam, deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManagerSpace) : Boolean
      {
         var newX:Number = NaN;
         var newY:Number = NaN;
         var remainingDeltaTimeMilliSeconds:Number = NaN;
         var hitObject:RayCastHitObject = null;
         var hitIndex:int = 0;
         var i:int = 0;
         var isAlive:Boolean = true;
         while(deltaTimeMilliSeconds > 0)
         {
            newX = laser.x + laser.speedX * deltaTimeMilliSeconds / 1000;
            newY = laser.y + laser.speedY * deltaTimeMilliSeconds / 1000;
            remainingDeltaTimeMilliSeconds = deltaTimeMilliSeconds;
            this.mRayCaster.rayCast(laser.getTailX(LASER_TAIL_LENGTH),laser.getTailY(LASER_TAIL_LENGTH),newX,newY);
            if(this.mRayCaster.hitObjectCount == 0)
            {
               laser.update(deltaTimeMilliSeconds);
               break;
            }
            for(hitIndex = 0; hitIndex < this.mRayCaster.hitObjectCount; hitIndex++)
            {
               hitObject = this.mRayCaster.getHitObject(hitIndex);
               if(!laser.hasHitObject(hitObject))
               {
                  remainingDeltaTimeMilliSeconds = deltaTimeMilliSeconds - hitObject.rayFraction * deltaTimeMilliSeconds;
                  if(!this.hitObjectWithLaser(hitObject,laser,deltaTimeMilliSeconds,updateManager))
                  {
                     deltaTimeMilliSeconds = remainingDeltaTimeMilliSeconds;
                     break;
                  }
                  if(laser.health == 0)
                  {
                     deltaTimeMilliSeconds = 0;
                     isAlive = false;
                     break;
                  }
               }
               if(hitIndex == this.mRayCaster.hitObjectCount - 1)
               {
                  laser.update(remainingDeltaTimeMilliSeconds);
                  deltaTimeMilliSeconds = 0;
               }
            }
            laser.resetHitObjects();
            for(i = 0; i < this.mRayCaster.hitObjectCount; i++)
            {
               hitObject = this.mRayCaster.getHitObject(i);
               laser.addHitObject(hitObject);
            }
         }
         if(updateManager && updateManager.locationIsOutOfBounds(laser.x,laser.y))
         {
            isAlive = false;
         }
         return isAlive;
      }
      
      protected function hitObjectWithLaser(hitObject:RayCastHitObject, laser:LevelLaserBeam, deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManagerSpace) : Boolean
      {
         laser.update(hitObject.rayFraction * deltaTimeMilliSeconds);
         var levelObject:LevelObjectBase = hitObject.levelObject;
         if(levelObject is LevelObjectBird)
         {
            this.hitBirdWithLaser(hitObject,laser,updateManager);
            return true;
         }
         if(levelObject is LevelObject && LevelObject(levelObject).defence < 0)
         {
            return true;
         }
         if(levelObject.getBody())
         {
            levelObject.getBody().SetAwake(true);
         }
         if(this.objectBouncesLaserTargeted(levelObject))
         {
            this.hitTargetBouncingObjectWithLaser(hitObject,laser,updateManager);
            return false;
         }
         if(this.objectBouncesLaser(levelObject) && laser.isBouncing)
         {
            return this.hitBouncingObjectWithLaser(hitObject,laser,updateManager);
         }
         if(this.objectPassesLaser(levelObject))
         {
            return true;
         }
         this.hitNonBouncingObjectWithLaser(hitObject,laser,updateManager);
         return true;
      }
      
      private function hitBirdWithLaser(hitObject:RayCastHitObject, laser:LevelLaserBeam, updateManager:ILevelObjectUpdateManagerSpace) : void
      {
         var dir:b2Vec2 = new b2Vec2(Math.cos(laser.angle),Math.sin(laser.angle));
         dir.Multiply(laser.impulseOnBird);
         var levelObject:LevelObject = hitObject.levelObject as LevelObject;
         if(levelObject)
         {
            levelObject.getBody().ApplyImpulse(dir,hitObject.hitPoint);
            levelObject.applyDamage(1,updateManager,null,false);
         }
      }
      
      private function hitTargetBouncingObjectWithLaser(hitObject:RayCastHitObject, laser:LevelLaserBeam, updateManager:ILevelObjectUpdateManagerSpace) : void
      {
         var score:int = 0;
         var target:LevelObjectPigSpace = null;
         var floatingScoreFont:String = null;
         var targetPos:b2Vec2 = null;
         if(updateManager)
         {
            score = laser.reflectingScore;
            if(score)
            {
               floatingScoreFont = null;
               if(hitObject && hitObject.levelObject && hitObject.levelObject.levelItem)
               {
                  floatingScoreFont = hitObject.levelObject.levelItem.floatingScoreFont;
               }
               updateManager.addScore(score,ScoreCollector.SCORE_TYPE_DAMAGE,true,laser.x,laser.y - 3,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,floatingScoreFont);
            }
            target = updateManager.getClosestLaserTargetPig(laser.x,laser.y);
            if(target)
            {
               target.isLaserTarget = true;
               targetPos = target.getBody().GetPosition();
               laser.reflectToAngle(Math.atan2(targetPos.y - laser.y,targetPos.x - laser.x),laser.speed);
               return;
            }
         }
         var normal:b2Vec2 = hitObject.normal;
         this.reflectLaser(laser,normal.x,normal.y,updateManager);
      }
      
      private function hitBouncingObjectWithLaser(hitObject:RayCastHitObject, laser:LevelLaserBeam, updateManager:ILevelObjectUpdateManagerSpace) : Boolean
      {
         var damageFactor:Number = NaN;
         var normal:b2Vec2 = null;
         var levelObject:LevelObject = hitObject.levelObject as LevelObject;
         var damage:Number = laser.damageOnBounce;
         if(levelObject)
         {
            damageFactor = laser.getDamageFactor(levelObject);
            levelObject.applyDamage(damage * damageFactor,updateManager,null);
         }
         laser.applyDamage(damage);
         if(laser.health > 0)
         {
            normal = hitObject.normal;
            this.reflectLaser(laser,normal.x,normal.y,updateManager);
            return false;
         }
         return true;
      }
      
      private function hitNonBouncingObjectWithLaser(hitObject:RayCastHitObject, laser:LevelLaserBeam, updateManager:ILevelObjectUpdateManagerSpace) : void
      {
         var damageFactor:Number = NaN;
         var damage:Number = NaN;
         var levelObject:LevelObject = hitObject.levelObject as LevelObject;
         if(levelObject)
         {
            if(laser.isBouncing || levelObject.defence < 100000)
            {
               damageFactor = laser.getDamageFactor(levelObject);
               damage = Math.min((levelObject.health + levelObject.defence) / damageFactor,laser.health);
               levelObject.applyDamage(damage * damageFactor,updateManager,null);
               laser.applyDamage(damage);
            }
         }
      }
      
      private function objectPassesLaser(levelObject:LevelObjectBase) : Boolean
      {
         if(levelObject.getBody().GetFixtureList().IsSensor())
         {
            return true;
         }
         return false;
      }
      
      private function objectBouncesLaserTargeted(levelObject:LevelObjectBase) : Boolean
      {
         var levelItemSpace:LevelItemSpace = null;
         if(levelObject.levelItem is LevelItemSpace)
         {
            levelItemSpace = LevelItemSpace(levelObject.levelItem);
            return levelItemSpace.materialBouncesLaserTargeted;
         }
         return false;
      }
      
      private function objectBouncesLaser(levelObject:LevelObjectBase) : Boolean
      {
         var levelItemSpace:LevelItemSpace = null;
         if(levelObject.levelItem is LevelItemSpace)
         {
            levelItemSpace = LevelItemSpace(levelObject.levelItem);
            return levelItemSpace.materialBouncesLaser || levelItemSpace.materialBouncesLaserTargeted;
         }
         return false;
      }
      
      protected function reflectLaser(laser:LevelLaserBeam, normalX:Number, normalY:Number, updateManager:ILevelObjectUpdateManagerSpace) : void
      {
         var factor:Number = 2 * (normalX * Math.cos(laser.angle) + normalY * Math.sin(laser.angle));
         var newDirectionX:Number = Math.cos(laser.angle) - normalX * factor;
         var newDirectionY:Number = Math.sin(laser.angle) - normalY * factor;
         var particle:String = laser.collisionParticle;
         if(particle)
         {
            updateManager.addObject(particle,laser.x,laser.y,0,LevelObjectManager.ID_NEXT_FREE,false,true,false,1,true);
         }
         laser.reflectToAngle(Math.atan2(newDirectionY,newDirectionX),laser.speed);
      }
   }
}
