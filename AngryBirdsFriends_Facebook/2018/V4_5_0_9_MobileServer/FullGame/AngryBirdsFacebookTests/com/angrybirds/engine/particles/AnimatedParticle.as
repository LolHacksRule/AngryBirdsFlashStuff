package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItemSpaceParticleLua;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.graphics.Animation;
   import starling.display.DisplayObject;
   import starling.display.DisplayObjectContainer;
   
   public class AnimatedParticle extends MovingParticle
   {
       
      
      protected var mLevelItemLua:LevelItemSpaceParticleLua;
      
      protected var mAnimation:Animation;
      
      private var mDisplayObject:DisplayObject;
      
      public function AnimatedParticle(animation:Animation, x:Number, y:Number, angle:Number, levelItemLua:LevelItemSpaceParticleLua)
      {
         super(x,y,angle,levelItemLua);
         this.mLevelItemLua = levelItemLua;
         this.mAnimation = animation;
         this.mDisplayObject = this.mAnimation.getFrameWithOffset(lifeTimeMilliSeconds,this.mDisplayObject);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.mDisplayObject;
      }
      
      public function dispose() : void
      {
         if(this.mDisplayObject)
         {
            this.mDisplayObject.dispose();
            this.mDisplayObject = null;
         }
         this.mLevelItemLua = null;
         this.mAnimation = null;
      }
      
      override public function update(deltaTimeMilliSeconds:Number) : Boolean
      {
         var displayObject:DisplayObject = null;
         var parent:DisplayObjectContainer = null;
         var result:Boolean = super.update(deltaTimeMilliSeconds);
         if(result)
         {
            displayObject = this.mAnimation.getFrameWithOffset(lifeTimeMilliSeconds,this.mDisplayObject);
            if(displayObject != this.mDisplayObject)
            {
               parent = this.mDisplayObject.parent;
               parent.removeChild(this.mDisplayObject);
               parent.addChild(displayObject);
               this.mDisplayObject = displayObject;
            }
            this.mDisplayObject.scaleX = mScale;
            this.mDisplayObject.scaleY = mScale;
            this.mDisplayObject.rotation = mAngle;
            this.mDisplayObject.x = mX / LevelMain.PIXEL_TO_B2_SCALE;
            this.mDisplayObject.y = mY / LevelMain.PIXEL_TO_B2_SCALE;
         }
         return result;
      }
   }
}
