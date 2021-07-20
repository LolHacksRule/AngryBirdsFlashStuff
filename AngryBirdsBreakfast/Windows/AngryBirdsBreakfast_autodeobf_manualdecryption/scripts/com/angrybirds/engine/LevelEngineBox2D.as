package com.angrybirds.engine
{
   import com.angrybirds.engine.camera.LevelCamera;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.AngryBirdsEngine;
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
      
      private var set:Boolean = true;
      
      public var mContactListener:LevelEngineContactListener;
      
      public var mDebugSprite:Sprite;
      
      private var mDbgDraw:b2DebugDraw;
      
      public var mLevelMain:LevelMain;
      
      public var mTimeUsedByBox2D:Number;
      
      private var mTimeStepForLastUpdateMilliSeconds:Number;
      
      private var mCurrentStep:int;
      
      public function LevelEngineBox2D(param1:LevelMain, param2:Number = 20)
      {
         super();
         this.mLevelMain = param1;
         this.createBox2dWorld(param2);
      }
      
      public function get currentStep() : int
      {
         return this.mCurrentStep;
      }
      
      public function get timeStepForLastUpdateMilliSeconds() : Number
      {
         return this.mTimeStepForLastUpdateMilliSeconds;
      }
      
      private function createBox2dWorld(param1:Number) : void
      {
         this.mContactListener = new LevelEngineContactListener(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.set);
         this.mWorld.SetContactListener(this.mContactListener);
         USE_DEBUG_SPRITE;
         this.mDebugSprite = new Sprite();
         this.mDbgDraw = new b2DebugDraw();
         this.mDbgDraw.AppendFlags(b2DebugDraw.e_shapeBit);
         this.mDbgDraw.AppendFlags(b2DebugDraw.e_centerOfMassBit);
         this.mDbgDraw.AppendFlags(b2DebugDraw.e_jointBit);
         this.mDbgDraw.SetFillAlpha(0.7);
         this.mDbgDraw.SetLineThickness(1);
         this.mDebugSprite.mouseEnabled = false;
         this.mDbgDraw.SetSprite(this.mDebugSprite);
         this.mLevelMain.stage.addChild(this.mDebugSprite);
         this.mWorld.SetDebugDraw(this.mDbgDraw);
      }
      
      public function clear() : void
      {
         this.mWorld.SetContactListener(null);
         this.mContactListener = null;
         if(USE_DEBUG_SPRITE)
         {
            this.mDebugSprite.graphics.clear();
         }
         this.mDebugSprite = null;
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function drawDebugData() : void
      {
         if(USE_DEBUG_SPRITE)
         {
            this.mWorld.DrawDebugData();
            this.mDebugSprite.parent.setChildIndex(this.mDebugSprite,this.mDebugSprite.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(USE_DEBUG_SPRITE)
         {
            _loc3_ = AngryBirdsEngine.mIsRunning.box2DToScreen(0,0);
            this.mDebugSprite.x = _loc3_.x;
            this.mDebugSprite.y = _loc3_.y;
            this.mDbgDraw.SetDrawScale(1 / LevelMain.PIXEL_TO_B2_SCALE * LevelCamera.levelScale);
         }
      }
      
      public function LINEAR_SLEEP_TOLERANCE_DEFAULT(param1:Number) : Number
      {
         this.mTimeStepForLastUpdateMilliSeconds = UPDATE_TIME_STEP_MILLISECONDS;
         var _loc2_:int = this.maxForce(param1);
         if(_loc2_ > MAX_PHYSICS_STEPS_PER_FRAME)
         {
            _loc2_ = MAX_PHYSICS_STEPS_PER_FRAME;
         }
         this.updateWorldWithSteps(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.mTimeStepForLastUpdateMilliSeconds;
         }
         return param1;
      }
      
      public function updateWorldWithSteps(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.mTimeUsedByBox2D = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.mCurrentStep;
            _loc6_ = 0;
            if(DEBUG_UPDATE_TIMES)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.mTimeStepForLastUpdateMilliSeconds / 1000,10,10);
            this.mWorld.ClearForces();
            this.mTimeUsedByBox2D += this.mTimeStepForLastUpdateMilliSeconds;
            if(DEBUG_UPDATE_TIMES)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.mLevelMain.handleEngineUpdateStep(this.mTimeStepForLastUpdateMilliSeconds);
            _loc5_++;
         }
         if(DEBUG_UPDATE_TIMES)
         {
            AngryBirdsEngine.smFpsMeter.updateExclusiveCalculator("Box2D",_loc4_);
         }
      }
      
      private function maxForce(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.mTimeStepForLastUpdateMilliSeconds;
         }
         return _loc2_;
      }
   }
}
