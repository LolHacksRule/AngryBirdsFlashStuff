package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItemSpaceParticleLua;
   import com.angrybirds.engine.LevelMain;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class StaticParticle extends MovingParticle
   {
       
      
      private var mParentSprite:Sprite;
      
      private var mDisplayObject:DisplayObject;
      
      private var mDisplayObjectPrevious:DisplayObject;
      
      private var mChangeSpriteTimer:Number;
      
      private var mChangeSpriteTimeValue:Number;
      
      private var mCurrentSpriteIndex:int;
      
      private var mDisplayObjects:Array;
      
      public function StaticParticle(parentSprite:Sprite, displayObjects:Array, x:Number, y:Number, angle:Number, levelItemLua:LevelItemSpaceParticleLua, scaleMultiplier:Number = 1)
      {
         super(x,y,angle,levelItemLua,scaleMultiplier);
         this.mParentSprite = parentSprite;
         this.mCurrentSpriteIndex = 0;
         this.mDisplayObjects = displayObjects;
         this.mDisplayObject = displayObjects[0];
         this.mChangeSpriteTimer = 0;
         this.mChangeSpriteTimeValue = totalLifeTimeInMilliSeconds / displayObjects.length;
         this.mParentSprite.addChild(this.mDisplayObject);
         this.update(0);
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
      }
      
      override public function update(deltaTimeMilliSeconds:Number) : Boolean
      {
         var result:Boolean = super.update(deltaTimeMilliSeconds);
         if(this.mDisplayObjectPrevious)
         {
            this.mParentSprite.removeChild(this.mDisplayObjectPrevious);
            this.mDisplayObjectPrevious = null;
         }
         this.mChangeSpriteTimer += deltaTimeMilliSeconds;
         if(this.mChangeSpriteTimer >= this.mChangeSpriteTimeValue)
         {
            this.mDisplayObjectPrevious = this.mDisplayObject;
            ++this.mCurrentSpriteIndex;
            if(this.mCurrentSpriteIndex < this.mDisplayObjects.length)
            {
               this.mDisplayObject = this.mDisplayObjects[this.mCurrentSpriteIndex];
               if(this.mDisplayObject)
               {
                  this.mParentSprite.addChild(this.mDisplayObject);
               }
            }
            this.mChangeSpriteTimer = 0;
         }
         if(this.mDisplayObject)
         {
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
