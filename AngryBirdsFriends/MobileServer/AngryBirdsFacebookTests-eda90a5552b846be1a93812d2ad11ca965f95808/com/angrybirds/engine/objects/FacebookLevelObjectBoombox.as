package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectBoombox extends LevelObject
   {
       
      
      private var mParachuteObject:FacebookLevelObjectParachute;
      
      private var mIsFlying:Boolean;
      
      private var mIsFullHealth:Boolean;
      
      public function FacebookLevelObjectBoombox(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.mIsFlying = true;
         this.mIsFullHealth = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = super.createFilterData();
         filterData.categoryBits = PARACHUTE_BIT_CATEGORY;
         filterData.maskBits = 65535;
         return filterData;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         if(damagingObject == this.mParachuteObject)
         {
            return health;
         }
         this.mIsFullHealth = false;
         handleLevelEndCheck();
         if(this.mParachuteObject)
         {
            this.mParachuteObject.detach();
         }
         return super.applyDamage(damage,updateManager,damagingObject,addScore);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.mIsFlying;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.mIsFullHealth && this.mIsFlying;
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.initParachute(updateManager);
            return true;
         }
         return false;
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var scale:Number = !!mPowerUpSuperSeedUsed ? Number(2) : Number(1.5);
         AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("BOOMBOX_EXPLOSION",LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,750,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,0,0,0,0,scale,8,true);
      }
      
      private function initParachute(updateManager:ILevelObjectUpdateManager) : void
      {
         var linearVelocity:b2Vec2 = null;
         var particleSpeed:Number = NaN;
         var angle:Number = NaN;
         var pos:b2Vec2 = getBody().GetPosition();
         this.mParachuteObject = updateManager.addObject("PARACHUTE",pos.x,pos.y,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false,false,0,getBody().GetLinearVelocity(),0,4) as FacebookLevelObjectParachute;
         this.mIsFlying = false;
         this.mParachuteObject.setLandinObject(this);
         linearVelocity = getBody().GetLinearVelocity();
         linearVelocity.x *= 0.5;
         linearVelocity.y *= 0.5;
         getBody().SetLinearVelocity(linearVelocity);
         setAngularVelocity(0);
         var particleGravity:Number = 10;
         var particleCount:int = 20;
         var angleAdd:Number = 360 / particleCount;
         for(var counter:int = 0; counter < particleCount; counter++)
         {
            particleSpeed = 10 + 10 * Math.random();
            angle = angleAdd * counter * Math.PI / 180;
            AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("Effect_Trail_Bird1",LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,pos.x,pos.y - 7,500,"",0,particleSpeed * Math.cos(angle),-particleSpeed * Math.sin(angle),particleGravity,400,1);
         }
         AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("BLAST_EFFECT","BLAST_EFFECT",LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,pos.x,pos.y - 7,500,"",0,0,0,0,0,1,12,true);
         activateTrailSpecial();
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var angle:Number = NaN;
         var t:Number = NaN;
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mParachuteObject && !this.mParachuteObject.isDetached)
         {
            angle = getBody().GetAngle();
            if(angle < 0)
            {
               angle += Math.PI * 2;
            }
            t = 1 - deltaTimeMilliSeconds / 10;
            t = t < -0.01 ? Number(-0.01) : Number(t);
            t = t > 1 ? Number(1) : Number(t);
            if(angle < Math.PI)
            {
               angle *= t;
            }
            else
            {
               angle = Math.PI * 4 - (Math.PI * 2 - angle) * t;
            }
            getBody().SetAngle(angle);
            getBody().SetAngularDamping(1);
            getBody().SetLinearDamping(1);
         }
         else if(this.canActivateSpecialPower)
         {
            setAngularVelocity(7);
         }
         else
         {
            getBody().SetAngularDamping(0);
            getBody().SetLinearDamping(0);
         }
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         var explosionType:int = 0;
         super.updateBeforeRemoving(updateManager,countScore);
         if(this.mParachuteObject)
         {
            this.mParachuteObject.detach();
         }
         if(updateManager)
         {
            explosionType = !!mPowerUpSuperSeedUsed ? int(FacebookLevelExplosion.TYPE_POWERUP_BOOMBOX_SUPER_SEED) : int(FacebookLevelExplosion.TYPE_POWERUP_BOOMBOX_NORMAL);
            updateManager.addExplosion(explosionType,getBody().GetPosition().x,getBody().GetPosition().y);
         }
         handleLevelEndCheck();
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         return this.mIsFlying || isWaitingForTrailSpecial();
      }
   }
}
