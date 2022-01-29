package com.angrybirds.utils
{
   import com.rovio.utils.GoogleAnalyticsTracker;
   import com.rovio.utils.GoogleAnalyticsTrackerCustom;
   import com.angrybirds.data.level.LevelManager;
   import starling.core.Starling;
   import com.angrybirds.AngryBirdsEngine;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class UncaughtErrorHandlerCustom extends EventDispatcher
   {
       
      
      private var mCrashReported:Boolean = false;
      
      private var mStartupTime:Number;
      
      protected var mLevelManager:LevelManager;
      
      protected var mClientVersion:String;
      
      public function UncaughtErrorHandlerCustom(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.mStartupTime = new Date().time;
         this.mClientVersion = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.onUncaughtError);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function setLevelManager(param1:LevelManager) : void
      {
         this.mLevelManager = param1;
      }
      
      protected function reportError(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.mStartupTime) / 1000);
         if(param1.error is Error)
         {
            _loc2_ = (_loc10_ = param1.error as Error).errorID;
            _loc5_ = _loc10_.message;
            _loc3_ = _loc10_.getStackTrace();
         }
         else if(param1.error is ErrorEvent)
         {
            _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
         }
         GoogleAnalyticsTrackerCustom.trackClientError(_loc2_,_loc6_);
         if(AngryBirdsEngine.smApp != null)
         {
            _loc4_ = AngryBirdsEngine.smApp.getCurrentState();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.mLevelManager && this.mLevelManager.currentLevel != null)
         {
            _loc7_ = this.mLevelManager.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(Starling.current == null)
         {
            _loc8_ = "NULL";
         }
         else if(Starling.isSoftware)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.mClientVersion;
         GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH_LOG,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH_TRACE,_loc12_,_loc6_);
         }
         else
         {
            GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH_LOG,_loc9_,_loc6_);
         }
      }
      
      private function onUncaughtError(param1:UncaughtErrorEvent) : void
      {
         if(this.mCrashReported)
         {
            return;
         }
         this.mCrashReported = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
