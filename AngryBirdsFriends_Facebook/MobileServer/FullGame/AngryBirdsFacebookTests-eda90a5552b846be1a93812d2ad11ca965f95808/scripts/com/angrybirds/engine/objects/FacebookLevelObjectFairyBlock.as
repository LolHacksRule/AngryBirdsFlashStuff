package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.FacebookLevelParticleManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectFairyBlock extends LevelObjectBlock
   {
       
      
      public function FacebookLevelObjectFairyBlock(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var angle:Number = NaN;
         var starSpeed:Number = NaN;
         var starsCount:int = 12;
         var starsScale:Number = 0.5 + Math.random() * 0.5;
         var baseSpeed:Number = 15;
         for(var i:int = 0; i < starsCount; i++)
         {
            angle = i / (starsCount - 1) * Math.PI;
            starSpeed = 0.5 * baseSpeed + baseSpeed * (Math.random() * 0.5);
            (AngryBirdsEngine.smLevelMain.particles as FacebookLevelParticleManager).addFairyDustParticle(x,y,starSpeed,angle,starsScale);
         }
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.canActivateSpecialPower;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return health > 0;
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            decreaseHealth(-healthMax);
            return true;
         }
         return false;
      }
      
      override public function get isFlying() : Boolean
      {
         return true;
      }
   }
}
