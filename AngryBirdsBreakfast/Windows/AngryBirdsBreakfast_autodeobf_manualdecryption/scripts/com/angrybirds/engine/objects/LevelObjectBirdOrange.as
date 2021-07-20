package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.sound.SoundEngine;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   
   public class LevelObjectBirdOrange extends LevelObjectBird
   {
      
      public static const DEFAULT_BIRD_ORANGE_RADIUS:int = 241 * LevelMain.PIXEL_TO_B2_SCALE / 2;
      
      private static const FEATHER_PUFF_FREQUENCY:int = 200;
       
      
      private const NILL_TIME:Number = -5;
      
      private const PUFF_TIME:int = 1500;
      
      private const DEATH_TIMER:int = 3500;
      
      private const DEFLATE_TIMER:int = 1500;
      
      private var hasHitGround:Boolean = false;
      
      private var mIsInflating:Boolean = false;
      
      private var mIsDeflating:Boolean = false;
      
      private var mExploded:Boolean = false;
      
      private var mInflateTimer:Number = -5;
      
      private var mDeflateWaitTimer:Number = -5;
      
      private var mDeflateTimer:Number = -5;
      
      private var mDirectionChangeTimer:Number = 0;
      
      private var mDeflateUpdateCount:int = 0;
      
      private var mxVelChange:Number = 0;
      
      private var myVelChange:Number = 0;
      
      private var mInflatingScale:Number = 0;
      
      private var mDamageFeatherTimer:Number = 1000;
      
      private var mReadyToRemove:Boolean = false;
      
      public function LevelObjectBirdOrange(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.mInflatingScale = 0;
      }
      
      private function get BIRD_ORANGE_RADIUS() : Number
      {
         return DEFAULT_BIRD_ORANGE_RADIUS * scale;
      }
      
      override public function addDamageParticles(param1:ILevelObjectUpdateManager, param2:int) : void
      {
         if(param2 < 2 || this.mDamageFeatherTimer < FEATHER_PUFF_FREQUENCY)
         {
            return;
         }
         if(this.mDeflateWaitTimer != this.NILL_TIME || param2 > 20)
         {
            this.addFeathersAndSmoke(param1,1,param2 > 20);
         }
         this.mDamageFeatherTimer = 0;
      }
      
      override public function activateSpecialPower(param1:ILevelObjectUpdateManager, param2:Number, param3:Number) : Boolean
      {
         if(!this.fixedActivateSpecialPower(param1))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         param1.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_BIG,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc4_,_loc5_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         this.fixedActivateSpecialPower(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:ILevelObjectUpdateManager, param3:LevelObject, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.mInflateTimer == this.NILL_TIME)
         {
            this.fixedActivateSpecialPower(param2);
         }
         if(param1 < 12 && param1 > 5 && this.hasHitGround)
         {
            playSoundEffect(LevelItemSoundResource.SOUND_DAMAGED);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.hasHitGround = true;
         return _loc5_;
      }
      
      protected function explode(param1:ILevelObjectUpdateManager) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.fixedActivateSpecialPower(null);
            this.fixedActivateSpecialPower(param1,0);
            return true;
         }
         return false;
      }
      
      private function fixedActivateSpecialPower(param1:ILevelObjectUpdateManager, param2:Number = -1) : void
      {
         this.mIsInflating = true;
         if(param2 == 0)
         {
            this.mInflateTimer = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.mInflateTimer = param2;
         }
         else
         {
            this.mInflateTimer = this.PUFF_TIME;
         }
      }
      
      override public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         if(param2)
         {
            return;
         }
         super.update(param1,param2);
         this.mDamageFeatherTimer += param1;
         if(this.mIsInflating)
         {
            this.updateInflating(param1,param2);
         }
         else if(this.mDeflateWaitTimer != this.NILL_TIME)
         {
            if(this.hasHitGround)
            {
               this.mDeflateWaitTimer -= param1;
               if(this.mDeflateWaitTimer < 0)
               {
                  this.mIsDeflating = true;
                  this.mDeflateWaitTimer = this.NILL_TIME;
                  this.mDeflateTimer = this.DEFLATE_TIMER;
                  playSoundEffect(LevelItemSoundResource.SOUND_DESTROYED);
               }
            }
         }
         else if(this.mIsDeflating)
         {
            this.updateDeflating(param1,param2);
         }
      }
      
      protected function updateInflating(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         this.mInflateTimer -= param1;
         if(this.mInflateTimer <= 0)
         {
            if(!this.mExploded)
            {
               param2.addExplosion(LevelExplosion.TYPE_ORANGE_BIRD,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.fixedActivateSpecialPower(null);
               replaceLevelItem(param2.getLevelItem("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.mInflatingScale;
               sprite.scaleY = this.mInflatingScale;
               this.mExploded = true;
               return;
            }
            if(this.mInflatingScale >= 1)
            {
               this.mIsInflating = false;
               this.mInflatingScale = 1;
               this.setBodyParameters(this.BIRD_ORANGE_RADIUS);
               this.mDeflateWaitTimer = this.DEATH_TIMER;
            }
            else
            {
               this.mInflatingScale += 0.2;
            }
            this.setBodyParameters(this.BIRD_ORANGE_RADIUS * this.mInflatingScale,mLevelItem.getItemDensity(),mLevelItem.getItemFriction(),mLevelItem.getItemRestitution());
            mRenderer.setScale(this.mInflatingScale * scale);
         }
      }
      
      protected function updateDeflating(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.mDeflateTimer > 0)
         {
            this.mDeflateTimer -= param1;
            this.mDirectionChangeTimer -= param1;
            if(this.mDirectionChangeTimer <= 0)
            {
               this.mDirectionChangeTimer = this.DEFLATE_TIMER / 5;
               this.mxVelChange = (Math.random() * 100 - 50) * 10;
               this.myVelChange = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.mDeflateTimer / this.DEFLATE_TIMER;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.mDeflateUpdateCount;
            if(this.mDeflateUpdateCount % 3 == 0)
            {
               mRenderer.setScale(_loc3_ * _loc3_);
               this.setBodyParameters(this.BIRD_ORANGE_RADIUS * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.mxVelChange,this.myVelChange),getBody().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.addFeathersAndSmoke(param2,0.02,true);
            }
         }
         else
         {
            this.mReadyToRemove = true;
            param2.removeObject(this);
         }
      }
      
      private function setBodyParameters(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.SetRadius(param1);
         if(param2 >= 0)
         {
            _loc6_.SetDensity(param2);
            _loc5_.ResetMassData();
         }
         if(param3 >= 0)
         {
            _loc6_.SetFriction(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.SetRestitution(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:ILevelObjectUpdateManager) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function addFeathersAndSmoke(param1:ILevelObjectUpdateManager, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).GetRadius();
         var _loc5_:Number = getBody().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * getVolume(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.BIRD_ORANGE_RADIUS;
         if((_loc6_ *= _loc8_ * 3 * param2) > 30)
         {
            _loc6_ = 30;
         }
         if(param3)
         {
            _loc6_ = 8;
            _loc5_ = 8;
         }
         var _loc10_:int = 0;
         _loc10_ = 0;
         while(_loc10_ < _loc6_ / 3)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.BIRD_ORANGE_RADIUS - this.BIRD_ORANGE_RADIUS / 2) * 2 * _loc8_;
            param1.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_CORE,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.BIRD_ORANGE_RADIUS - this.BIRD_ORANGE_RADIUS / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",LevelParticle.PARTICLE_MATERIAL_BIRD_YELLOW,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
            _loc10_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(specialPowerUsed)
         {
            return 1;
         }
         return -1;
      }
      
      private function fixedActivateSpecialPower(param1:ILevelObjectUpdateManager) : Boolean
      {
         if(mSpecialPowerUsed)
         {
            return false;
         }
         SoundEngine.playSoundFromVariation("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         mSpecialPowerUsed = true;
         return true;
      }
   }
}
