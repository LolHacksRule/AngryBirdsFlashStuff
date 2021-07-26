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
      
      public static const MAX_PHYSICS_STEPS_PER_FRAME:int = 10;
       
      
      public var mWorld:b2World;
      
      private var DO_SLEEP:Boolean = true;
      
      public var mContactListener:LevelEngineContactListener;
      
      public var mDebugSprite:Sprite;
      
      public var mLevelMain:LevelMain;
      
      public var mTimeUsedByBox2D:Number;
      
      public var mTimeStepForLastUpdate:Number;
      
      public function LevelEngineBox2D(param1:LevelMain)
      {
         super();
         this.mLevelMain = param1;
         this.createBox2dWorld();
      }
      
      public function createBox2dWorld() : void
      {
         var _loc1_:b2DebugDraw = null;
         this.mContactListener = new LevelEngineContactListener(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.DO_SLEEP);
         this.mWorld.SetContactListener(this.mContactListener);
         if(USE_DEBUG_SPRITE)
         {
            this.mWorld.SetWarmStarting(true);
            _loc1_ = new b2DebugDraw();
            this.mDebugSprite = new Sprite();
            _loc1_.SetSprite(this.mDebugSprite);
            _loc1_.SetDrawScale(1 / LevelMain.PIXEL_TO_B2_SCALE);
            _loc1_.SetFillAlpha(0.3);
            _loc1_.SetLineThickness(1);
            _loc1_.SetFlags(b2DebugDraw.e_shapeBit | b2DebugDraw.e_jointBit);
            this.mWorld.SetDebugDraw(_loc1_);
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
      
      public function getObjectFromFixture(param1:b2Fixture) : LevelObject
      {
         return this.mLevelMain.mLevelObjects.getObjectFromFixture(param1);
      }
      
      public function drawDebugData() : void
      {
         if(USE_DEBUG_SPRITE)
         {
            this.mLevelMain.setChildIndex(this.mDebugSprite,this.mLevelMain.numChildren - 1);
            this.mWorld.DrawDebugData();
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         if(USE_DEBUG_SPRITE)
         {
            this.mDebugSprite.x = -param1;
            this.mDebugSprite.y = -param2;
         }
      }
      
      public function updateWorld(param1:Number, param2:Boolean = false) : Number
      {
         var _loc6_:Number = NaN;
         var _loc3_:int = 10;
         var _loc4_:int = 10;
         this.mTimeStepForLastUpdate = !!param2 ? Number(UPDATE_TIME_STEP / 2) : Number(UPDATE_TIME_STEP);
         this.mTimeUsedByBox2D = 0;
         var _loc5_:int = 0;
         while(param1 > 0)
         {
            _loc5_++;
            _loc6_ = 0;
            if(DEBUG_UPDATE_TIMES)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.mTimeStepForLastUpdate,_loc3_,_loc4_);
            this.mWorld.ClearForces();
            param1 -= this.mTimeStepForLastUpdate * 1000;
            this.mTimeUsedByBox2D += this.mTimeStepForLastUpdate * 1000;
            if(DEBUG_UPDATE_TIMES)
            {
               AngryBirdsSocial.smFpsMeter.updateExclusiveCalculator("Box2D",getTimer() - _loc6_);
            }
            this.mLevelMain.mLevelObjects.updateLevelObjectsGoingOn();
            if(_loc5_ >= MAX_PHYSICS_STEPS_PER_FRAME)
            {
               while(param1 > 0)
               {
                  param1 -= this.mTimeStepForLastUpdate * 1000;
               }
               break;
            }
         }
         return param1;
      }
   }
}
