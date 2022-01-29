package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelObjectBirdBlue extends LevelObjectBird
   {
       
      
      public function LevelObjectBirdBlue(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:ILevelObjectUpdateManager, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         var _loc6_:Number = getBody().GetLinearVelocity().x;
         var _loc7_:Number = getBody().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:LevelObjectBird;
         (_loc11_ = LevelObjectBird(param1.addObject("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,LevelObjectManager.ID_NEXT_FREE,true,false,false,scale))).setLinearVelocity(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
         (_loc11_ = LevelObjectBird(param1.addObject("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,LevelObjectManager.ID_NEXT_FREE,true,false,false,scale))).setLinearVelocity(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
      }
   }
}
