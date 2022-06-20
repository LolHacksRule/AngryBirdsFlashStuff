package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemSpaceParticleLua;
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelParticleSplash extends LevelParticleBase
   {
       
      
      protected var mLevelItemLua:LevelItemSpaceParticleLua;
      
      protected var mParticles:Vector.<StaticParticle>;
      
      public function LevelParticleSplash(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, x:Number, y:Number, angle:Number = 0.0, areaWidth:Number = 0.0, areaHeight:Number = 0.0, scaleMultiplier:Number = 1.0)
      {
         var rod:Number = NaN;
         var displayObjects:Array = null;
         var i:int = 0;
         var randomParticleSpriteIndex:int = 0;
         var particle:StaticParticle = null;
         super(sprite,world,levelItem);
         this.mLevelItemLua = levelItem as LevelItemSpaceParticleLua;
         this.mParticles = new Vector.<StaticParticle>();
         var deltaX:Number = 0;
         var deltaY:Number = 0;
         var count:int = this.mLevelItemLua.particleAmount > -1 ? int(this.mLevelItemLua.particleAmount) : int(this.mLevelItemLua.amount);
         if((areaWidth > 0 || areaHeight > 0) && count > 1)
         {
            rod = areaWidth / 2;
            if(areaWidth < areaHeight)
            {
               rod = areaHeight / 2;
               angle += Math.PI / 2;
            }
            rod *= count / (count + 1);
            x -= Math.cos(angle) * rod;
            y -= Math.sin(angle) * rod;
            deltaX = Math.cos(angle) * rod * 2 / count;
            deltaY = Math.sin(angle) * rod * 2 / count;
         }
         for(var j:int = 0; j < count; j++)
         {
            displayObjects = new Array();
            if(this.mLevelItemLua.animation == "lifeTime")
            {
               for(i = 0; i < animation.frameCount; i++)
               {
                  displayObjects.push(animation.getFrame(i));
               }
            }
            else
            {
               randomParticleSpriteIndex = Math.floor(animation.frameCount * Math.random());
               displayObjects.push(animation.getFrame(randomParticleSpriteIndex));
            }
            if(displayObjects.length > 0 && displayObjects[0] != null)
            {
               particle = new StaticParticle(sprite,displayObjects,x,y,angle,this.mLevelItemLua,scaleMultiplier);
               this.mParticles.push(particle);
               sprite.addChild(particle.displayObject);
               x += deltaX;
               y += deltaY;
            }
         }
      }
      
      override public function dispose(b:Boolean = true) : void
      {
         var i:int = 0;
         if(this.mParticles)
         {
            for(i = this.mParticles.length - 1; i >= 0; i--)
            {
               this.mParticles[i].dispose();
            }
            this.mParticles = null;
         }
         super.dispose(b);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         for(var i:int = 0; i < this.mParticles.length; i++)
         {
            this.mParticles[i].update(deltaTimeMilliSeconds);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.mParticles.length > 0 && this.mParticles[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
