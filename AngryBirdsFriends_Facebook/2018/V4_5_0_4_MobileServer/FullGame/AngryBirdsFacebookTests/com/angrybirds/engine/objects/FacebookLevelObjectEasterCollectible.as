package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.FacebookLevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectEasterCollectible extends LevelObject
   {
       
      
      private var mIsCollected:Boolean = false;
      
      public function FacebookLevelObjectEasterCollectible(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         this.mIsCollected = false;
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         super.applyDamage(damage,updateManager,damagingObject,addScore);
         if(health <= 0 && !this.mIsCollected)
         {
            this.chocolateExplosionEffect();
            this.mIsCollected = true;
         }
         return health;
      }
      
      private function chocolateExplosionEffect() : void
      {
         var particleManager:FacebookLevelParticleManager = AngryBirdsEngine.smLevelMain.particles as FacebookLevelParticleManager;
         particleManager.addSimpleParticle("WONDERLAND_MISC_SPLASH",LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_BACKGROUND_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",LevelParticle.PARTICLE_MATERIAL_PIGS,0,0,0,0,1.5,15,true);
      }
   }
}
