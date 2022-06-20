package com.angrybirds.engine
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class LevelEngineBox2D
   {
      
      public static const UPDATE_TIME_STEP_MILLISECONDS:Number = 1000 / 30;
      
      public static const MAX_PHYSICS_STEPS_PER_FRAME:int = 10;
      
      public static const USE_DEBUG_SPRITE:Boolean = false;
      
      public static const DEBUG_UPDATE_TIMES:Boolean = true;
       
      
      public var mWorld:b2World;
      
      protected var DO_SLEEP:Boolean = true;
      
      public var mContactListener:LevelEngineContactListener;
      
      public var mDebugSprite:Sprite;
      
      protected var mDbgDraw:b2DebugDraw;
      
      public var mLevelMain:LevelMain;
      
      public var mTimeUsedByBox2D:Number;
      
      private var mTimeStepForLastUpdateMilliSeconds:Number;
      
      private var mCurrentStep:int;
      
      protected var mDebugDrawEnabled:Boolean = false;
      
      public function LevelEngineBox2D(newLevelMain:LevelMain, gravity:Number = 20)
      {
         super();
         this.mLevelMain = newLevelMain;
         this.createBox2dWorld(gravity);
         this.debugDrawEnabled = USE_DEBUG_SPRITE;
      }
      
      public function get currentStep() : int
      {
         return this.mCurrentStep;
      }
      
      public function get timeStepForLastUpdateMilliSeconds() : Number
      {
         return this.mTimeStepForLastUpdateMilliSeconds;
      }
      
      public function set debugDrawEnabled(value:Boolean) : void
      {
         if(value)
         {
            this.mDbgDraw = new b2DebugDraw();
            this.mDbgDraw.AppendFlags(b2DebugDraw.e_shapeBit);
            this.mDbgDraw.AppendFlags(b2DebugDraw.e_centerOfMassBit);
            this.mDbgDraw.AppendFlags(b2DebugDraw.e_jointBit);
            this.mDbgDraw.SetFillAlpha(0.7);
            this.mDbgDraw.SetLineThickness(1);
            if(!this.mDebugSprite)
            {
               this.mDebugSprite = new Sprite();
               this.mDebugSprite.mouseEnabled = false;
               this.mLevelMain.stage.addChild(this.mDebugSprite);
            }
            this.mDbgDraw.SetSprite(this.mDebugSprite);
            this.mWorld.SetDebugDraw(this.mDbgDraw);
         }
         else
         {
            if(this.mDebugSprite)
            {
               this.mLevelMain.stage.removeChild(this.mDebugSprite);
               this.mDebugSprite = null;
            }
            if(this.mDbgDraw)
            {
               this.mWorld.SetDebugDraw(null);
               this.mDbgDraw = null;
            }
         }
         this.mDebugDrawEnabled = value;
      }
      
      protected function createBox2dWorld(gravity:Number) : void
      {
         this.mContactListener = new LevelEngineContactListener(this);
         this.mWorld = new b2World(new b2Vec2(0,gravity),this.DO_SLEEP);
         this.mWorld.SetContactListener(this.mContactListener);
      }
      
      public function clear() : void
      {
         this.mWorld.SetContactListener(null);
         this.mContactListener = null;
         if(this.mDebugSprite)
         {
            this.mLevelMain.stage.removeChild(this.mDebugSprite);
            this.mDebugSprite.graphics.clear();
            this.mDebugSprite = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function drawDebugData() : void
      {
         if(this.mDebugDrawEnabled)
         {
            this.mWorld.DrawDebugData();
            this.mDebugSprite.parent.setChildIndex(this.mDebugSprite,this.mDebugSprite.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         var pos:Point = null;
         if(this.mDebugDrawEnabled)
         {
            pos = AngryBirdsEngine.smLevelMain.box2DToScreen(0,0);
            this.mDebugSprite.x = pos.x;
            this.mDebugSprite.y = pos.y;
            this.mDbgDraw.SetDrawScale(1 / LevelMain.PIXEL_TO_B2_SCALE * LevelCamera.levelScale);
         }
      }
      
      public function updateWorld(deltaTimeMilliSeconds:Number) : Number
      {
         this.mTimeStepForLastUpdateMilliSeconds = UPDATE_TIME_STEP_MILLISECONDS;
         var stepCount:int = this.getStepCount(deltaTimeMilliSeconds);
         if(stepCount > MAX_PHYSICS_STEPS_PER_FRAME)
         {
            stepCount = MAX_PHYSICS_STEPS_PER_FRAME;
         }
         this.updateWorldWithSteps(stepCount);
         while(deltaTimeMilliSeconds > 0)
         {
            deltaTimeMilliSeconds -= this.mTimeStepForLastUpdateMilliSeconds;
         }
         return deltaTimeMilliSeconds;
      }
      
      public function updateWorldWithSteps(stepCount:int) : void
      {
         var timeMark:Number = NaN;
         this.mTimeUsedByBox2D = 0;
         var totalTime:Number = 0;
         for(var i:int = 0; i < stepCount; i++)
         {
            ++this.mCurrentStep;
            timeMark = 0;
            if(DEBUG_UPDATE_TIMES)
            {
               timeMark = getTimer();
            }
            this.mWorld.Step(this.mTimeStepForLastUpdateMilliSeconds / 1000,10,10);
            this.mWorld.ClearForces();
            this.mTimeUsedByBox2D += this.mTimeStepForLastUpdateMilliSeconds;
            if(DEBUG_UPDATE_TIMES)
            {
               totalTime += getTimer() - timeMark;
            }
            this.mLevelMain.handleEngineUpdateStep(this.mTimeStepForLastUpdateMilliSeconds);
         }
         if(DEBUG_UPDATE_TIMES)
         {
            AngryBirdsEngine.smFpsMeter.updateExclusiveCalculator("Box2D",totalTime);
         }
      }
      
      private function getStepCount(timeMilliSeconds:Number) : int
      {
         var stepCount:int = 0;
         while(timeMilliSeconds > 0)
         {
            stepCount++;
            timeMilliSeconds -= this.mTimeStepForLastUpdateMilliSeconds;
         }
         return stepCount;
      }
   }
}
