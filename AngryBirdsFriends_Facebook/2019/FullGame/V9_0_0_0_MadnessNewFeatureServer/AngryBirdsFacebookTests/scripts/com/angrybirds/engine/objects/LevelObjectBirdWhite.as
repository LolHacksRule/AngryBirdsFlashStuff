package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBirdWhite extends LevelObjectBird
   {
      
      public static const WHITE_BIRD_EGG_ITEM_ID:String = "MISC_FOOD_EGG";
       
      
      public function LevelObjectBirdWhite(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         var posY:Number = NaN;
         if(!super.activateSpecialPower(updateManager,targetX,targetY))
         {
            return false;
         }
         var posX:Number = getBody().GetPosition().x;
         posY = getBody().GetPosition().y;
         var egg:LevelObject = LevelObject(updateManager.addObject(WHITE_BIRD_EGG_ITEM_ID,posX,posY + 0.01,0,LevelObjectManager.ID_NEXT_FREE,false,true,true,scale));
         egg.notDamageAwarding = true;
         egg.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(posX - 0.5,posY));
         return true;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         super.applyDamage(damage,updateManager,damagingObject,addScore,ignoreDefence);
         if(specialPowerUsed)
         {
            health = healthMax - 1;
         }
         return health;
      }
   }
}
