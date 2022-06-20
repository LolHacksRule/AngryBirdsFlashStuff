package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemParticleSpace;
   import com.angrybirds.data.level.item.LevelItemSpaceParticleLua;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class LevelParticleLaserCrosshair extends LevelParticleBase
   {
      
      public static const NAME:String = "LASER_CROSSHAIR";
       
      
      protected var mDisplayObject:DisplayObject;
      
      protected var mLevelItemLua:LevelItemSpaceParticleLua;
      
      protected var mTotalLifeTimeMilliSeconds:Number;
      
      protected var mLifeTimeMilliSeconds:Number;
      
      protected var mCurrentScale:Number;
      
      private var mScaleBegin:Number;
      
      private var mScaleEnd:Number;
      
      public function LevelParticleLaserCrosshair(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, x:Number, y:Number)
      {
         super(sprite,world,levelItem);
         this.mLevelItemLua = levelItem as LevelItemParticleSpace;
         this.mDisplayObject = animation.getFrame(0,this.mDisplayObject);
         this.mDisplayObject.x = x / LevelMain.PIXEL_TO_B2_SCALE;
         this.mDisplayObject.y = y / LevelMain.PIXEL_TO_B2_SCALE;
         sprite.addChild(this.mDisplayObject);
         this.mTotalLifeTimeMilliSeconds = this.mLevelItemLua.lifeTime * 1000;
         this.mLifeTimeMilliSeconds = 0;
         this.mScaleBegin = randomMinMax(this.mLevelItemLua.minScaleBegin,this.mLevelItemLua.maxScaleBegin);
         this.mScaleEnd = randomMinMax(this.mLevelItemLua.minScaleEnd,this.mLevelItemLua.maxScaleEnd);
         this.mCurrentScale = this.mScaleBegin;
      }
      
      public function hide() : void
      {
         if(sprite)
         {
            sprite.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.mLifeTimeMilliSeconds >= this.mTotalLifeTimeMilliSeconds;
      }
      
      protected function updateScale() : void
      {
         if(this.mScaleEnd > 0 && this.mScaleBegin > 0)
         {
            this.mCurrentScale = (this.mScaleEnd + this.mScaleBegin) / 2 + (this.mScaleEnd - this.mScaleBegin) / 2 * -Math.cos(this.mLifeTimeMilliSeconds / this.mTotalLifeTimeMilliSeconds * Math.PI * 4);
            this.mDisplayObject.scaleX = this.mCurrentScale;
            this.mDisplayObject.scaleY = this.mCurrentScale;
         }
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(updateManager)
         {
            deltaTimeMilliSeconds /= updateManager.timeSpeedMultiplier;
         }
         this.mLifeTimeMilliSeconds += deltaTimeMilliSeconds;
         this.updateScale();
      }
   }
}
