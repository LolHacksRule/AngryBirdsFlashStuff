package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelJoint;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectParachute extends LevelObject
   {
      
      private static const POWERUP_BOMB_SWINGS_PER_SECOND:Number = 0.5;
      
      private static const POWERUP_BOMB_PARACHUTE_SWING_FACTOR:Number = 0.15;
      
      private static const POWERUP_BOMB_MAXIMUM_VELOCITY:Number = 9;
      
      private static const POWERUP_BOMB_WIND_FORCE:Number = 6;
       
      
      private var mLandingObject:LevelObject;
      
      private var mLifeTime:Number = 0;
      
      private var mDetached:Boolean;
      
      private var mRandonRadianOffset:Number;
      
      private var mJoint:LevelJoint;
      
      public function FacebookLevelObjectParachute(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.mDetached = false;
         this.mRandonRadianOffset = 2 * Math.PI * Math.random();
      }
      
      override protected function createFixture() : b2Fixture
      {
         var fixture:b2Fixture = super.createFixture();
         fixture.SetSensor(true);
         return fixture;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = super.createFilterData();
         filterData.categoryBits = PARACHUTE_BIT_CATEGORY;
         filterData.maskBits = 65535;
         return filterData;
      }
      
      public function init(linearVelocity:b2Vec2, linearDamping:Number) : void
      {
         getBody().SetLinearVelocity(linearVelocity);
         getBody().SetLinearDamping(linearDamping);
      }
      
      public function setLandinObject(value:LevelObject) : void
      {
         if(this.mLandingObject)
         {
            this.detach();
         }
         this.mLandingObject = value;
         var levelJointModel:LevelJointModel = new LevelJointModel(LevelJointModel.REVOLUTE_JOINT,this.mLandingObject.id,this.id,new Point(0,0),new Point(0,0),false,false,-2 * Math.PI,2 * Math.PI);
         levelJointModel.coordinateType = 2;
         this.mJoint = (AngryBirdsEngine.smLevelMain.levelObjects as FacebookLevelObjectManager).createJointAtRuntime(levelJointModel);
         if(this.mLandingObject && this.mLandingObject.gravityFilter == GravityFilterCategory.BIRD_UNAFFECTED_BY_GRAVITY)
         {
            this.mLandingObject.gravityFilter = GravityFilterCategory.DEFAULT;
         }
         if(gravityFilter == GravityFilterCategory.BIRD_UNAFFECTED_BY_GRAVITY)
         {
            gravityFilter = GravityFilterCategory.DEFAULT;
         }
         SoundEngine.playSound("parachute_deployed_01","ChannelPowerups",0,0.5);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         if(damagingObject && damagingObject != this.mLandingObject && !damagingObject.levelItem.specialtyAvailableAfterCollision)
         {
            this.detach();
         }
         return health;
      }
      
      public function detach() : void
      {
         this.mDetached = true;
         if(this.mJoint)
         {
            AngryBirdsEngine.smLevelMain.mLevelEngine.mWorld.DestroyJoint(this.mJoint.B2Joint);
         }
         this.mLandingObject = null;
         var filterData:b2FilterData = new b2FilterData();
         filterData.maskBits = 0;
         setFilterData(filterData);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var windRadians:Number = NaN;
         var windDirection:Number = NaN;
         var rotation:Number = NaN;
         var v:b2Vec2 = null;
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mLifeTime += deltaTimeMilliSeconds;
         if(this.mLifeTime == 0)
         {
            return;
         }
         if(this.mDetached)
         {
            if(getBody().GetAngularVelocity() < 1)
            {
               getBody().SetAngularVelocity(1);
            }
            sprite.alpha = Math.max(0,sprite.alpha - deltaTimeMilliSeconds / 500);
            if(sprite.alpha == 0)
            {
               health = 0;
            }
         }
         else
         {
            windRadians = this.mRandonRadianOffset + this.mLifeTime / 500 * Math.PI * POWERUP_BOMB_SWINGS_PER_SECOND;
            windDirection = Math.sin(windRadians);
            rotation = Math.cos(windRadians) * POWERUP_BOMB_PARACHUTE_SWING_FACTOR;
            getBody().SetAngle(rotation);
            v = getBody().GetLinearVelocity();
            if(v.y > POWERUP_BOMB_MAXIMUM_VELOCITY)
            {
               v.y = POWERUP_BOMB_MAXIMUM_VELOCITY;
            }
            v.x = windDirection * POWERUP_BOMB_WIND_FORCE;
            getBody().SetLinearVelocity(v);
         }
      }
      
      public function get isDetached() : Boolean
      {
         return this.mDetached;
      }
      
      override public function dispose(b:Boolean = true) : void
      {
         this.detach();
         super.dispose(b);
      }
   }
}
