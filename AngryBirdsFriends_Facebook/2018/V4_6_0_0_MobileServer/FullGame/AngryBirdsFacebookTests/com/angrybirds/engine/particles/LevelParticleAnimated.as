package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemSpaceParticleLua;
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelParticleAnimated extends LevelParticleBase
   {
       
      
      protected var mLevelItemLua:LevelItemSpaceParticleLua;
      
      protected var mParticle:AnimatedParticle;
      
      public function LevelParticleAnimated(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, x:Number, y:Number, angle:Number, areaWidth:Number, areaHeight:Number)
      {
         var rod:Number = NaN;
         super(sprite,world,levelItem);
         if(areaWidth > 0 || areaHeight > 0)
         {
            rod = areaWidth;
            if(areaWidth < areaHeight)
            {
               rod = areaHeight;
               angle += Math.PI / 2;
            }
            rod *= Math.random() - 0.5;
            x += Math.cos(angle) * rod;
            y += Math.sin(angle) * rod;
         }
         this.mLevelItemLua = levelItem as LevelItemSpaceParticleLua;
         this.mParticle = new AnimatedParticle(animation,x,y,angle,this.mLevelItemLua);
         this.mParticle.update(0);
         sprite.addChild(this.mParticle.displayObject);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(!this.mParticle.update(deltaTimeMilliSeconds))
         {
            this.mParticle.displayObject.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.mParticle.isAlive;
      }
      
      override public function dispose(b:Boolean = true) : void
      {
         super.dispose(b);
         if(this.mParticle)
         {
            this.mParticle.dispose();
            this.mParticle = null;
         }
      }
   }
}
