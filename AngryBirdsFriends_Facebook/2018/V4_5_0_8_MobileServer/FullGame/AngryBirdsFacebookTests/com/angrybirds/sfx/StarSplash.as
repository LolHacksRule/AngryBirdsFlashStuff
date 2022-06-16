package com.angrybirds.sfx
{
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.tween.TweenManager;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class StarSplash extends Sprite
   {
      
      public static const STARSPLASH_LEFT:int = 0;
      
      public static const STARSPLASH_CENTER:int = 1;
      
      public static const STARSPLASH_RIGHT:int = 2;
      
      public static const STARSPLASH_BADGE:int = 3;
      
      private static const STAR_TYPE_ALL:String = "all";
      
      public static const STAR_MAX:uint = 40;
       
      
      private const GRAVITY:Number = 0.3;
      
      private const VELOCITY_MAX:Number = 25;
      
      private const VELOCITY_MIN:Number = 10;
      
      private const VELOCITY_MAX_Y:Number = 9;
      
      private var mAreaWidth:int;
      
      private var mAreaHeight:int;
      
      private var mStarPool:Vector.<Star>;
      
      private var mActiveStars:Vector.<Star>;
      
      private var mSplash:Point;
      
      private var mStarPos:int;
      
      public function StarSplash(stageWidth:int, stageHeight:int, posX:Number, posY:Number, starPos:int, starCount:int = 40, type:String = "all")
      {
         var star:Star = null;
         var absX:Number = NaN;
         var absY:Number = NaN;
         super();
         this.mAreaWidth = stageWidth;
         this.mAreaHeight = stageHeight;
         var scaleMin:Number = Math.min(AngryBirdsEngine.sHeightScale,AngryBirdsEngine.sWidthScale);
         var scaleMax:Number = Math.max(AngryBirdsEngine.sHeightScale,AngryBirdsEngine.sWidthScale);
         posX /= AngryBirdsEngine.sWidthScale;
         posY /= AngryBirdsEngine.sHeightScale;
         this.mStarPos = starPos;
         this.mSplash = new Point(posX,posY);
         this.mStarPool = new Vector.<Star>(0);
         this.mActiveStars = new Vector.<Star>(0);
         for(var i:int = 0; i < starCount; i++)
         {
            star = new Star(Math.random() * 40 + 10,type);
            star.x = -2000;
            star.y = -2000;
            this.addChild(star);
            this.mStarPool[i] = star;
         }
         this.scaleX = scaleMax;
         this.scaleY = scaleMax;
      }
      
      public function clean() : void
      {
         var cleanThisStar:Star = null;
         while(this.mStarPool.length > 0)
         {
            cleanThisStar = this.mStarPool.shift();
            if(cleanThisStar.parent == this)
            {
               this.removeChild(cleanThisStar);
            }
            cleanThisStar.clean();
         }
         while(this.mActiveStars.length > 0)
         {
            cleanThisStar = this.mActiveStars.shift();
            if(cleanThisStar.parent == this)
            {
               this.removeChild(cleanThisStar);
            }
            cleanThisStar.clean();
         }
         this.mStarPool = new Vector.<Star>(0);
         this.mActiveStars = new Vector.<Star>(0);
      }
      
      public function update(deltaTime:Number) : void
      {
         var deleteFlag:Boolean = false;
         var star:Star = null;
         var randomVelocity:Number = NaN;
         var randomRadian:Number = NaN;
         var randomVx:Number = NaN;
         var randomVy:Number = NaN;
         var scaleStart:Number = NaN;
         var scaleEnd:Number = NaN;
         var velocityMin:Number = NaN;
         var velocityMax:Number = NaN;
         var splicedStar:Star = null;
         deltaTime /= 20;
         while(this.mStarPool.length > 0)
         {
            star = this.mStarPool.shift();
            randomVelocity = Math.random() * (this.VELOCITY_MAX - this.VELOCITY_MIN) + this.VELOCITY_MIN;
            if(this.mStarPos == STARSPLASH_LEFT)
            {
               randomRadian = -(Math.PI / 2) * Math.random();
               randomVx = Math.sin(randomRadian - Math.PI / 2);
               randomVy = Math.cos(randomRadian - Math.PI / 2);
            }
            else if(this.mStarPos == STARSPLASH_CENTER)
            {
               randomRadian = Math.PI * (Math.random() - 0.5) * 0.5;
               randomVx = Math.sin(randomRadian + Math.PI);
               randomVy = Math.cos(randomRadian + Math.PI);
            }
            else if(this.mStarPos == STARSPLASH_RIGHT)
            {
               randomRadian = Math.PI / 2 * Math.random();
               randomVx = Math.sin(randomRadian + Math.PI / 2);
               randomVy = Math.cos(randomRadian + Math.PI / 2);
            }
            else if(this.mStarPos == STARSPLASH_BADGE)
            {
               randomRadian = Math.PI * (Math.random() - 0.5) * 0.5;
               randomVx = Math.sin(randomRadian + Math.PI);
               randomVy = Math.cos(randomRadian + Math.PI);
               velocityMin = this.VELOCITY_MIN / 2;
               velocityMax = this.VELOCITY_MAX / 2;
               randomVelocity = Math.random() * (velocityMax - velocityMin) + velocityMin;
            }
            star.vx = randomVx * randomVelocity;
            star.vy = randomVy * randomVelocity;
            star.x = this.mSplash.x;
            star.y = this.mSplash.y;
            this.mActiveStars.push(star);
            scaleStart = 0.5 + Math.random() * 1.5;
            scaleEnd = 0.2;
            star.scaleTween = TweenManager.instance.createTween(star,{
               "scaleX":scaleEnd,
               "scaleY":scaleEnd
            },{
               "scaleX":scaleStart,
               "scaleY":scaleStart
            },5);
            star.scaleTween.play();
         }
         var len:int = this.mActiveStars.length;
         for(var i:int = len - 1; i >= 0; i--)
         {
            deleteFlag = false;
            star = this.mActiveStars[i];
            star.vy += this.GRAVITY * deltaTime;
            if(star.vy > this.VELOCITY_MAX_Y)
            {
               star.vy = this.VELOCITY_MAX_Y;
            }
            star.x += star.vx * deltaTime;
            star.y += star.vy * deltaTime;
            star.rotation += 5 * deltaTime;
            if(star.y > this.mAreaHeight + star.height / 2)
            {
               deleteFlag = true;
            }
            if(this.mActiveStars.length > 0 && deleteFlag)
            {
               splicedStar = this.mActiveStars.splice(i,1)[0];
               if(splicedStar.parent == this)
               {
                  this.removeChild(splicedStar);
               }
               splicedStar.clean();
               star.x = -2000;
               star.y = -2000;
            }
         }
      }
   }
}
