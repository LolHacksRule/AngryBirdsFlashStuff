package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectBoombox extends LevelObject
   {
       
      
      private var mParachuteObject:FacebookLevelObjectParachute;
      
      private var mAngleRad:Number;
      
      public function FacebookLevelObjectBoombox(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         if(damagingObject == this.mParachuteObject)
         {
            return health;
         }
         return super.applyDamage(damage,updateManager,damagingObject,addScore);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return this.mParachuteObject != null;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.mParachuteObject == null;
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
         AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("BOOMBOX_EXPLOSION",LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,750,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,0,0,0,0,1,8,true);
      }
      
      private function initParachute(updateManager:ILevelObjectUpdateManager) : void
      {
         var pos:b2Vec2 = getBody().GetPosition();
         this.mParachuteObject = updateManager.addObject("PARACHUTE",pos.x,pos.y,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false,false,0,getBody().GetLinearVelocity(),0,1) as FacebookLevelObjectParachute;
         this.mParachuteObject.init(getBody().GetLinearVelocity(),1);
         this.mParachuteObject.setParent(this);
         this.mAngleRad = getBody().GetAngle();
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mParachuteObject && this.mParachuteObject.isAttached())
         {
            if(this.mAngleRad != 0)
            {
               this.mAngleRad += deltaTimeMilliSeconds / 50;
               this.mAngleRad = this.mAngleRad >= 2 * Math.PI ? Number(0) : Number(this.mAngleRad);
               getBody().SetAngle(this.mAngleRad);
            }
            getBody().SetLinearVelocity(this.mParachuteObject.getBody().GetLinearVelocity());
         }
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         super.updateBeforeRemoving(updateManager,countScore);
         this.mParachuteObject.setParent(null);
         if(updateManager)
         {
            updateManager.addExplosion(LevelExplosion.TYPE_TNT,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
