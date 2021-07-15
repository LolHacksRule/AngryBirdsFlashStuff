package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelObjectBirdWhite extends LevelObjectBird
   {
      
      public static const WHITE_BIRD_EGG_ITEM_ID:String = "MISC_FOOD_EGG";
       
      
      public function LevelObjectBirdWhite(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:ILevelObjectUpdateManager, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         var _loc6_:LevelObject;
         (_loc6_ = LevelObject(param1.addObject(WHITE_BIRD_EGG_ITEM_ID,_loc4_,_loc5_ + 0.01,0,LevelObjectManager.ID_NEXT_FREE,false,true,true,scale))).notDamageAwarding = true;
         _loc6_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         if(specialPowerUsed)
         {
            return false;
         }
         return super.canActivateSpecialPower;
      }
      
      override public function applyDamage(param1:Number, param2:ILevelObjectUpdateManager, param3:LevelObject, param4:Boolean = true) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(specialPowerUsed)
         {
            health = healthMax - 1;
         }
         return health;
      }
   }
}
