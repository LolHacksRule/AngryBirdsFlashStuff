package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelSlingshotObject;
   
   public class LevelObjectBirdGreen extends LevelObjectBird
   {
       
      
      private var mTargetHorizontalSpeed:Number = 0;
      
      public function LevelObjectBirdGreen(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return LevelSlingshotObject.LAUNCH_SPEED_GREEN_BIRD;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.mTargetHorizontalSpeed != 0 && health < healthMax)
         {
            this.mTargetHorizontalSpeed = 0;
         }
         if(this.mTargetHorizontalSpeed != 0)
         {
            _loc3_ = getBody().GetLinearVelocity().x;
            _loc4_ = getBody().GetLinearVelocity().y;
            if(this.mTargetHorizontalSpeed < _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.mTargetHorizontalSpeed >= _loc3_)
               {
                  this.mTargetHorizontalSpeed = 0;
               }
            }
            else if(this.mTargetHorizontalSpeed > _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.mTargetHorizontalSpeed <= _loc3_)
               {
                  this.mTargetHorizontalSpeed = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            setAngle(getAngle() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:ILevelObjectUpdateManager, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = getBody().GetLinearVelocity().x) != 0)
         {
            this.mTargetHorizontalSpeed = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
