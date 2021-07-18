package com.AngryBirds.LevelPlayer
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class LevelEngineBox2D
   {
      
      public static const USE_DEBUG_SPRITE:Boolean = false;
      
      public static const DEBUG_UPDATE_TIMES:Boolean = true;
      
      public static const UPDATE_TIME_STEP:Number = 1 / 30;
       
      
      public var mWorld:b2World;
      
      private var DO_SLEEP:Boolean = true;
      
      public var mContactListener:LevelEngineContactListener;
      
      public var mDebugSprite:Sprite;
      
      public var mLevelMain:LevelMain;
      
      public var mTimeUsedByBox2D:Number;
      
      public var mTimeStepForLastUpdate:Number;
      
      public function LevelEngineBox2D(newLevelMain:LevelMain)
      {
         super();
         this.mLevelMain = newLevelMain;
         this.createBox2dWorld();
      }
      
      public function createBox2dWorld() : void
      {
         var dbgDraw:b2DebugDraw = null;
         this.mContactListener = new LevelEngineContactListener(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.DO_SLEEP);
         this.mWorld.SetContactListener(this.mContactListener);
         if(USE_DEBUG_SPRITE)
         {
            this.mWorld.SetWarmStarting(true);
            dbgDraw = new b2DebugDraw();
            this.mDebugSprite = new Sprite();
            dbgDraw.SetSprite(this.mDebugSprite);
            dbgDraw.SetDrawScale(1 / LevelMain.PIXEL_TO_B2_SCALE);
            dbgDraw.SetFillAlpha(0.3);
            dbgDraw.SetLineThickness(1);
            dbgDraw.SetFlags(b2DebugDraw.e_shapeBit | b2DebugDraw.e_jointBit);
            this.mWorld.SetDebugDraw(dbgDraw);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.SetContactListener(null);
         this.mContactListener = null;
         if(USE_DEBUG_SPRITE)
         {
            this.mLevelMain.removeChild(this.mDebugSprite);
            this.mDebugSprite.graphics.clear();
         }
         this.mDebugSprite = null;
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function getObjectFromFixture(newFixture:b2Fixture) : LevelObject
      {
         return this.mLevelMain.mLevelObjects.getObjectFromFixture(newFixture);
      }
      
      public function drawDebugData() : void
      {
         if(USE_DEBUG_SPRITE)
         {
            this.mLevelMain.setChildIndex(this.mDebugSprite,this.mLevelMain.numChildren - 1);
            this.mWorld.DrawDebugData();
         }
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         if(USE_DEBUG_SPRITE)
         {
            this.mDebugSprite.x = -sideScroll;
            this.mDebugSprite.y = -verticalScroll;
         }
      }
      
      public function updateWorld(deltaTime:Number, smoother:Boolean = false) : Number
      {
         var timeMark:Number = NaN;
         var mVelocityIterations:int = 10;
         var mPositionIterations:int = 10;
         this.mTimeStepForLastUpdate = !!smoother ? Number(UPDATE_TIME_STEP / 2) : Number(UPDATE_TIME_STEP);
         this.mTimeUsedByBox2D = 0;
         while(deltaTime > 0)
         {
            timeMark = 0;
            if(DEBUG_UPDATE_TIMES)
            {
               timeMark = getTimer();
            }
            this.mWorld.Step(this.mTimeStepForLastUpdate,mVelocityIterations,mPositionIterations);
            this.mWorld.ClearForces();
            deltaTime -= this.mTimeStepForLastUpdate * 1000;
            this.mTimeUsedByBox2D += this.mTimeStepForLastUpdate * 1000;
            if(DEBUG_UPDATE_TIMES)
            {
               AngryBirdsSocial.smFpsMeter.updateExclusiveCalculator("Box2D",getTimer() - timeMark);
            }
            this.mLevelMain.mLevelObjects.updateLevelObjectsGoingOn();
         }
         return deltaTime;
      }
   }
}
