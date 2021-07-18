package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItemShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class LevelObjectRenderer extends Sprite
   {
      
      public static const SCREAM_TIME:Number = 1000;
      
      public static const BLINK_TIME:Number = 500;
      
      public static const COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS:Number = 100;
       
      
      public var mLevelObject:LevelObject;
      
      public var mVisualState:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var mWidthHeightRatio:Number;
      
      public var mColor:Number;
      
      public var mShapeType:int = -1;
      
      public var mAnimations:MovieClip;
      
      public var mVisibleDisplayObject:DisplayObject;
      
      public var mAnimationsName:String;
      
      public var mDamagedFrameCount:int = -1;
      
      public var mDamagedFrameIndex:int = -1;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var mScreamAnimationName:String = "Screaming";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var mBlinkAnimationName:String = "Blinking";
      
      public var mIsBlinking:Boolean = false;
      
      public var mGlowFilter:GlowFilter;
      
      public var mSparklesContainer:DisplayObjectContainer;
      
      public var mSparkles:Array;
      
      public function LevelObjectRenderer(aLevelObject:LevelObject)
      {
         super();
         this.mLevelObject = aLevelObject;
         this.mLevelObject.addChild(this);
         this.mAnimationsName = this.mLevelObject.mObjectName;
         if(this.mLevelObject.isPig())
         {
            this.mScreamAnimationName = "Smiling";
         }
         this.mSparklesContainer = null;
         this.mSparkles = null;
      }
      
      public function setCodeDrawnObjectProperties(a_shapeType:int, a_color:Number, a_w:Number, a_h:Number) : void
      {
         this.mW = a_w;
         this.mH = a_h;
         this.mShapeType = a_shapeType;
         this.mColor = a_color;
         this.drawObjectUsingGraphics();
      }
      
      public function calculateWidthHeightRatio() : void
      {
         if(this.mLevelObject.mObjectShape == LevelItemShape.SHAPE_TYPE_CIRCLE || this.mLevelObject.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_CIRCLE)
         {
            this.mWidthHeightRatio = 1;
            return;
         }
         this.mWidthHeightRatio = this.mW / this.mH;
         if(this.mWidthHeightRatio < 1)
         {
            this.mWidthHeightRatio = 1 / this.mWidthHeightRatio;
         }
         this.mWidthHeightRatio = Math.min(11,this.mWidthHeightRatio);
      }
      
      public function loadAnimation() : Boolean
      {
         if(this.mLevelObject.isGround())
         {
            return false;
         }
         var clipClass:Class = AssetCache.getAssetFromCache(this.mAnimationsName);
         if(!clipClass)
         {
            Log.log("WARNING!: LevelObjectRenderer -> loadDimensionsFromAnimation(), this animation is not found in AssetCache: " + this.mAnimationsName);
            return false;
         }
         this.mAnimations = new clipClass();
         if(this.mAnimations)
         {
            addChild(this.mAnimations);
            this.mW = this.mAnimations.width / 2;
            this.mH = this.mAnimations.height / 2;
            return true;
         }
         return false;
      }
      
      public function getCollisionRect() : Array
      {
         if(!this.mAnimations)
         {
            return null;
         }
         var vertices:Array = new Array();
         var object:DisplayObject = this.mAnimations.getChildByName("Collision1_Rectangle");
         var rect:Rectangle = object.getBounds(this.mAnimations);
         if(this.mLevelObject.isBlock())
         {
            rect.x *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            rect.y *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            rect.height *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            rect.width *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
         }
         vertices[0] = new b2Vec2();
         vertices[0].Set(rect.x * LevelMain.PIXEL_TO_B2_SCALE,rect.y * LevelMain.PIXEL_TO_B2_SCALE);
         vertices[1] = new b2Vec2();
         vertices[1].Set(rect.x * LevelMain.PIXEL_TO_B2_SCALE,(rect.y + rect.height) * LevelMain.PIXEL_TO_B2_SCALE);
         vertices[2] = new b2Vec2();
         vertices[2].Set((rect.x + rect.width) * LevelMain.PIXEL_TO_B2_SCALE,(rect.y + rect.height) * LevelMain.PIXEL_TO_B2_SCALE);
         vertices[3] = new b2Vec2();
         vertices[3].Set((rect.x + rect.width) * LevelMain.PIXEL_TO_B2_SCALE,rect.y * LevelMain.PIXEL_TO_B2_SCALE);
         vertices.reverse();
         this.mAnimations.removeChild(object);
         this.mAnimations = this.mAnimations.getChildByName("Animations") as MovieClip;
         return vertices;
      }
      
      public function getCollisionCircle() : Array
      {
         if(!this.mAnimations)
         {
            return null;
         }
         var dimensions:Array = new Array();
         var object:DisplayObject = this.mAnimations.getChildByName("Collision1_Circle");
         var rect:Rectangle = object.getBounds(this.mAnimations);
         if(this.mLevelObject.isBlock())
         {
            rect.x *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            rect.y *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            rect.height *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            rect.width *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
         }
         if(rect.width != rect.height)
         {
         }
         dimensions[0] = rect.width * LevelMain.PIXEL_TO_B2_SCALE / 2;
         dimensions[1] = (rect.x + rect.width / 2) * LevelMain.PIXEL_TO_B2_SCALE;
         dimensions[2] = (rect.y + rect.height / 2) * LevelMain.PIXEL_TO_B2_SCALE;
         this.mAnimations.removeChild(object);
         this.mAnimations = this.mAnimations.getChildByName("Animations") as MovieClip;
         return dimensions;
      }
      
      public function getCollisionVertice() : Array
      {
         var i:int = 0;
         var point:DisplayObject = null;
         if(!this.mAnimations)
         {
            return null;
         }
         var vertices:Array = new Array();
         for(var object:DisplayObjectContainer = this.mAnimations.getChildByName("Collision1_Polygon") as DisplayObjectContainer; i < object.numChildren; )
         {
            vertices[i] = new b2Vec2();
            point = object.getChildByName("Point" + (i + 1));
            vertices[i].Set((point.getRect(this.mAnimations).x + point.getRect(this.mAnimations).width / 2) * LevelMain.PIXEL_TO_B2_SCALE,(point.getRect(this.mAnimations).y + point.getRect(this.mAnimations).height / 2) * LevelMain.PIXEL_TO_B2_SCALE);
            i++;
         }
         vertices.reverse();
         if(vertices.length < 3)
         {
            Log.log("WARNING: LevelObjectRenderer -> getCollisionVertice() is not good for movieClip = " + this.mAnimationsName);
            return null;
         }
         this.mAnimations.removeChild(object);
         this.mAnimations = this.mAnimations.getChildByName("Animations") as MovieClip;
         return vertices;
      }
      
      public function drawObjectUsingGraphics() : void
      {
         var shape:Shape = new Shape();
         shape.graphics.lineStyle(1);
         shape.graphics.beginFill(this.mColor,1);
         if(this.mShapeType == LevelItemShape.SHAPE_TYPE_RECT)
         {
            shape.graphics.drawRect(-this.mW,-this.mH,2 * this.mW,2 * this.mH);
         }
         else if(this.mShapeType == LevelItemShape.SHAPE_TYPE_CIRCLE)
         {
            shape.graphics.drawCircle(0,0,this.mW);
         }
         addChild(shape);
      }
      
      public function kill() : void
      {
         this.removeGlowfilter();
         graphics.clear();
         if(this.mSparkles)
         {
            while(this.mSparkles.length > 0)
            {
               this.mSparklesContainer.removeChild(this.mSparkles[0][0]);
               this.mSparkles[0] = null;
               this.mSparkles.splice(0,1);
            }
            this.mSparkles = null;
         }
         if(this.mSparklesContainer)
         {
            while(this.mSparklesContainer.numChildren > 0)
            {
               this.mSparklesContainer.removeChildAt(0);
            }
            removeChild(this.mSparklesContainer);
            this.mSparklesContainer = null;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mVisibleDisplayObject = null;
         this.mAnimations = null;
         this.mLevelObject.removeChild(this);
      }
      
      public function setVisualState() : void
      {
         var frame:int = 0;
         var i:int = 0;
         if(!this.mAnimations)
         {
            return;
         }
         if(this.mVisibleDisplayObject)
         {
            if(this.mVisibleDisplayObject is MovieClip)
            {
               (this.mVisibleDisplayObject as MovieClip).gotoAndStop(1);
            }
            this.mVisibleDisplayObject.visible = false;
         }
         else
         {
            this.hideEverything();
         }
         this.mVisibleDisplayObject = this.mAnimations.getChildByName("Damaged" + this.mDamagedFrameIndex);
         var playAnimation:Boolean = true;
         if(this.mVisibleDisplayObject is DisplayObjectContainer)
         {
            if(this.mLevelObject.mSelfExplosionTimer >= 0 && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Special"))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Special");
               if(this.mVisibleDisplayObject is MovieClip)
               {
                  frame = 1 + (this.mVisibleDisplayObject as MovieClip).totalFrames * (this.mLevelObject.mSelfExplosionTimer / this.mLevelObject.mSelfExplosionTimerMax);
                  if(frame == (this.mVisibleDisplayObject as MovieClip).totalFrames && this.mLevelObject.mSelfExplosionTimer < this.mLevelObject.mSelfExplosionTimerMax - 100)
                  {
                     frame--;
                  }
                  (this.mVisibleDisplayObject as MovieClip).gotoAndStop(frame);
               }
               playAnimation = false;
            }
            else if(this.mTryToSpecial && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Special"))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Special");
               this.mIsSpecial = true;
            }
            else if(this.mTryToScream > 0 && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName(this.mScreamAnimationName))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName(this.mScreamAnimationName);
               this.mIsScreaming = true;
            }
            else if(this.mTryToBlink > 0 && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName(this.mBlinkAnimationName))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName(this.mBlinkAnimationName);
               this.mIsBlinking = true;
            }
            else if(this.mTryToFly && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Flying"))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Flying");
               this.mIsFlying = true;
            }
            else if((this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Neutral"))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Neutral");
            }
            if(playAnimation && this.mVisibleDisplayObject is MovieClip)
            {
               (this.mVisibleDisplayObject as MovieClip).gotoAndPlay(1);
            }
            this.mVisibleDisplayObject.visible = true;
            if(this.mVisibleDisplayObject is DisplayObjectContainer)
            {
               while(i < (this.mVisibleDisplayObject as DisplayObjectContainer).numChildren)
               {
                  (this.mVisibleDisplayObject as DisplayObjectContainer).getChildAt(i).visible = true;
                  i++;
               }
            }
         }
         else
         {
            this.mVisibleDisplayObject.visible = true;
         }
      }
      
      public function hideEverything() : void
      {
         var container:DisplayObjectContainer = null;
         var j:int = 0;
         if(!this.mAnimations)
         {
            return;
         }
         for(var i:int = 0; i < this.mAnimations.numChildren; i++)
         {
            if(this.mAnimations.getChildAt(i) is DisplayObjectContainer)
            {
               container = this.mAnimations.getChildAt(i) as DisplayObjectContainer;
               for(j = 0; j < container.numChildren; j++)
               {
                  container.getChildAt(j).visible = false;
                  if(container.getChildAt(j) is MovieClip)
                  {
                     (container.getChildAt(j) as MovieClip).gotoAndStop(1);
                  }
               }
               if(container is MovieClip)
               {
                  (container as MovieClip).gotoAndStop(1);
               }
            }
            else
            {
               this.mAnimations.getChildAt(i).visible = false;
            }
         }
      }
      
      public function setDamagedFrame() : void
      {
         if(this.mDamagedFrameCount < 0)
         {
            this.calculateDamageFrameCount();
         }
         var newValue:int = 0;
         newValue = (1 - this.mLevelObject.mHealth / this.mLevelObject.mHealthMax) * (this.mDamagedFrameCount * 0.99);
         newValue++;
         if(newValue != this.mDamagedFrameIndex)
         {
            this.mDamagedFrameIndex = newValue;
            this.setVisualState();
         }
      }
      
      public function calculateDamageFrameCount() : void
      {
         if(!this.mAnimations)
         {
            this.mDamagedFrameCount = 1;
            return;
         }
         var instanceName:String = "Damaged";
         var counting:Boolean = true;
         var index:int = 1;
         this.mDamagedFrameCount = 0;
         while(counting)
         {
            if(this.mAnimations.getChildByName(instanceName + index))
            {
               index++;
               ++this.mDamagedFrameCount;
            }
            else
            {
               counting = false;
            }
         }
      }
      
      public function addGlowFilter(newColor:uint = 16777215, newBlurX:int = 4, newBlurY:int = 4) : void
      {
         this.mGlowFilter = new GlowFilter();
         this.mGlowFilter.blurX = newBlurX;
         this.mGlowFilter.blurY = newBlurY;
         this.mGlowFilter.color = newColor;
         filters = [this.mGlowFilter];
      }
      
      public function removeGlowfilter() : void
      {
         filters = [];
         this.mGlowFilter = null;
      }
      
      public function createSparkles() : void
      {
         this.mSparklesContainer = new Sprite();
         addChild(this.mSparklesContainer);
         this.mSparkles = new Array();
         for(var i:int = 0; i < Math.min(8,Math.max(this.mLevelObject.getVolume(false),1)); i++)
         {
            this.createSparkle(i);
         }
      }
      
      public function updateSparkles(deltaTime:Number) : void
      {
         for(var i:int = 0; i < this.mSparkles.length; i++)
         {
            this.mSparkles[i][1] -= deltaTime;
            if(this.mSparkles[i][1] <= 0)
            {
               this.createSparkle(i);
            }
         }
      }
      
      public function createSparkle(index:int) : void
      {
         var sparkle:Class = null;
         if(this.mSparkles[index])
         {
            this.mSparklesContainer.removeChild(this.mSparkles[index][0]);
            this.mSparkles[index] = null;
         }
         if(Math.random() < 0.5)
         {
            sparkle = AssetCache.getAssetFromCache("effect_bird_sparkle_particle1");
         }
         else
         {
            sparkle = AssetCache.getAssetFromCache("effect_bird_sparkle_particle2");
         }
         this.mSparkles[index] = new Array(new sparkle() as MovieClip,400 + Math.random() * 400);
         this.mSparklesContainer.addChild(this.mSparkles[index][0]);
         (this.mSparkles[index][0] as MovieClip).x = -width / 2 + Math.random() * width;
         (this.mSparkles[index][0] as MovieClip).y = -height / 2 + Math.random() * height;
      }
   }
}
