package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBirdBlue extends LevelObjectBird
   {
       
      
      private var mWaitingForSpecialPowerActivation:Boolean;
      
      public function LevelObjectBirdBlue(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
         this.mWaitingForSpecialPowerActivation = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function addTrailParticles(centerXB2:Number, centerYB2:Number) : void
      {
         var xOffset:Number = -1 * Math.sin(getAngle());
         var yOffset:Number = 1 * Math.cos(getAngle());
         super.addTrailParticles(centerXB2 + xOffset,centerYB2 + yOffset);
      }
      
      override protected function specialPower(updateManager:ILevelObjectUpdateManager, targetX:Number = 0, targetY:Number = 0) : void
      {
         super.specialPower(updateManager,targetX,targetY);
         var vectorX:Number = getBody().GetLinearVelocity().x;
         var vectorY:Number = getBody().GetLinearVelocity().y;
         this.spawnClones(vectorX,vectorY,updateManager);
      }
      
      private function spawnClones(vectorX:Number, vectorY:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var newBird2:LevelObjectBird = null;
         if(vectorX == 0 && vectorY == 0)
         {
            this.mWaitingForSpecialPowerActivation = true;
            return;
         }
         this.mWaitingForSpecialPowerActivation = false;
         var force:Number = Math.sqrt(vectorX * vectorX + vectorY * vectorY);
         var normY:Number = -vectorX / force;
         var normX:Number = vectorY / force;
         var posX:Number = getBody().GetPosition().x;
         var posY:Number = getBody().GetPosition().y;
         var newBird1:LevelObjectBird = LevelObjectBird(updateManager.addObject("BIRD_BLUE",posX - normX,posY - normY,0,LevelObjectManager.ID_NEXT_FREE,true,false,false,scale));
         newBird1.destructionBlockName = destructionBlockName;
         newBird1.applyLinearVelocity(new b2Vec2(vectorX - 7 * normX,vectorY - 7 * normY));
         newBird1.isLeavingTrail = true;
         newBird1.gravityFilter = gravityFilter;
         newBird1.setRestitution(getRestitution());
         newBird1.setFriction(getFriction());
         newBird1.setCollisionEffect(getCollisionEffect());
         newBird1.setPowerUpDamageMultiplier(mPowerUpDamageMultipliers);
         newBird1.setPowerUpVelocityMultiplier(mPowerUpVelocityMultipliers);
         newBird2 = LevelObjectBird(updateManager.addObject("BIRD_BLUE",posX + normX,posY + normY,0,LevelObjectManager.ID_NEXT_FREE,true,false,false,scale));
         newBird2.destructionBlockName = destructionBlockName;
         newBird2.applyLinearVelocity(new b2Vec2(vectorX + 7 * normX,vectorY + 7 * normY));
         newBird2.isLeavingTrail = true;
         newBird2.gravityFilter = gravityFilter;
         newBird2.setRestitution(getRestitution());
         newBird2.setFriction(getFriction());
         newBird2.setCollisionEffect(getCollisionEffect());
         newBird2.setPowerUpDamageMultiplier(mPowerUpDamageMultipliers);
         newBird2.setPowerUpVelocityMultiplier(mPowerUpVelocityMultipliers);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mWaitingForSpecialPowerActivation)
         {
            this.spawnClones(getBody().GetLinearVelocity().x,getBody().GetLinearVelocity().y,updateManager);
         }
      }
   }
}
