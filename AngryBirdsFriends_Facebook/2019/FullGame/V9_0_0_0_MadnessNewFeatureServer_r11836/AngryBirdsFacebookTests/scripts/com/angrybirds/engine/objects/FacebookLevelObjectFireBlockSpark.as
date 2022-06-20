package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelJoint;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectFireBlockSpark extends LevelObjectBlock
   {
      
      private static const LIFE_TIME_MIN:int = 4000;
      
      private static const LIFE_TIME_MAX:int = 6000;
      
      private static const DAMAGE_PER_HIT:int = 8;
      
      private static const DAMAGE_FREQUENCY_IN_MILLISECONDS:int = 500;
      
      private static const PARTICLE_FREQUENCY_IN_MILLISECONDS:int = 675;
       
      
      private var mLifeTimer:Number;
      
      private var mTimeSinceDamage:Number;
      
      private var mParticleTimeSinceSpawn:Number;
      
      private var mJointCreated:Boolean;
      
      private var mJointedObject:LevelObject = null;
      
      private var mJoint:LevelJoint;
      
      private var mJointGivesDamage:Boolean;
      
      public function FacebookLevelObjectFireBlockSpark(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number, aParticleJSONId:String = "", aParticleVariationCount:int = 1)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,aParticleJSONId,aParticleVariationCount);
         this.mLifeTimer = LIFE_TIME_MIN + (LIFE_TIME_MAX - LIFE_TIME_MIN) * Math.random();
         this.mTimeSinceDamage = DAMAGE_FREQUENCY_IN_MILLISECONDS;
         this.mParticleTimeSinceSpawn = PARTICLE_FREQUENCY_IN_MILLISECONDS * Math.random();
         this.mJointCreated = false;
         this.mJointGivesDamage = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = super.createFilterData();
         filterData.categoryBits = AMMO_BIT_CATEGORY;
         filterData.maskBits = 65535 & ~AMMO_BIT_CATEGORY & ~WHITE_BIRD_EGG_BIT_CATEGORY;
         return filterData;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         var returnValue:Number = super.applyDamage(damage,updateManager,damagingObject,addScore,ignoreDefence);
         if(returnValue > 0 && !this.mJointCreated)
         {
            if(!(damagingObject is LevelObjectBird || damagingObject is FacebookLevelObjectBoombox || damagingObject is FacebookLevelObjectParachute))
            {
               this.mJointedObject = damagingObject;
            }
         }
         return returnValue;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var levelJointModel:LevelJointModel = null;
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mLifeTimer -= deltaTimeMilliSeconds;
         if(this.mLifeTimer <= 0 || this.mJointCreated && (!this.mJointedObject || this.mJointedObject.health <= 0 || !this.mJointedObject.getBody() || !this.mJoint))
         {
            health = 0;
            return;
         }
         if(this.mJointCreated && this.mJointedObject && this.mJointGivesDamage)
         {
            this.mTimeSinceDamage += deltaTimeMilliSeconds;
            while(this.mTimeSinceDamage >= DAMAGE_FREQUENCY_IN_MILLISECONDS)
            {
               this.mJointedObject.applyDamage(DAMAGE_PER_HIT,updateManager,this,false,true);
               this.mTimeSinceDamage -= DAMAGE_FREQUENCY_IN_MILLISECONDS;
            }
         }
         this.mParticleTimeSinceSpawn += deltaTimeMilliSeconds;
         if(this.mParticleTimeSinceSpawn >= PARTICLE_FREQUENCY_IN_MILLISECONDS)
         {
            this.mParticleTimeSinceSpawn -= PARTICLE_FREQUENCY_IN_MILLISECONDS;
            AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("FIREORB_FLAME",LevelParticle.PARTICLE_NAME_EXPLOSIONS_PARTICLE,LevelParticleManager.PARTICLE_GROUP_FOREGROUND_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,600,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,0,0,0,0,1,14,true);
         }
         if(!this.mJointCreated && this.mJointedObject)
         {
            this.mJointCreated = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            if(this.mJointedObject.getMaterialName() == "MATERIAL_GROUND_HILLS")
            {
               health = 0;
               return;
            }
            levelJointModel = new LevelJointModel(LevelJointModel.WELD_JOINT,this.mJointedObject.id,this.id,new Point(0,0),new Point(0,0),false,false,0,0,false,0,false,0,false,0,false,2);
            this.mJoint = (AngryBirdsEngine.smLevelMain.levelObjects as FacebookLevelObjectManager).createJointAtRuntime(levelJointModel);
            if(this.mJointedObject.levelItem.bubbleDamage == 0 && this.mJointedObject.getBody().GetMass() == 0 && (this.mJointedObject.isTexture() || this.mJointedObject.isGround() || this.mJointedObject.isConcreteObject) && this.mJointedObject.itemName.indexOf("INVISIBLE") == -1)
            {
               this.mJointGivesDamage = false;
            }
            else
            {
               this.mJointGivesDamage = true;
            }
            SoundEngine.playSoundFromVariation("wood_damage_a3");
         }
      }
   }
}
