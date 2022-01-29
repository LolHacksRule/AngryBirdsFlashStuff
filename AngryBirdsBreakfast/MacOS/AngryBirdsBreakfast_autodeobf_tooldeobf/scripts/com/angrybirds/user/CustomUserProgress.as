package com.angrybirds.user
{
   import com.rovio.utils.Integer;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.utils.LocalDataHandler;
   import com.angrybirds.utils.IHTTPResponseListener;
   import com.angrybirds.data.user.UserProgress;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class CustomUserProgress extends UserProgress implements IHTTPResponseListener
   {
       
      
      private var mIsLoggedIn:Boolean;
      
      protected var mWeekLevelProgress:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function CustomUserProgress(param1:String, param2:LevelManager)
      {
         super(param1,param2);
         this.mWeekLevelProgress = new Dictionary();
         this.mIsLoggedIn = false;
         this.mLocalData = new LocalDataHandler(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_GAME_DATA");
      }
      
      public function loadLocalProgressData() : void
      {
         this.mLocalData.load();
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(mTutorialProgress[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.setTutorialSeen(_loc3_);
         }
      }
      
      override public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         super.setTutorialSeen(param1,param2);
         this.mLocalData.setTutorialSeen(param1,param2);
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         this.mLocalData.setSoundsEnabled(param1);
      }
      
      public function setLanguageSelected(param1:String) : void
      {
         this.mLocalData.setLanguageSelected(param1);
      }
      
      public function getLanguageSelected() : String
      {
         if(this.mLocalData)
         {
            return this.mLocalData.getLanguageSelected();
         }
         return "";
      }
      
      override public function setScoreForLevel(param1:String, param2:int) : void
      {
         super.setScoreForLevel(param1,param2);
         this.mLocalData.setScoreForLevel(param1,param2);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
      
      public function get isLoggedIn() : Boolean
      {
         return this.mIsLoggedIn;
      }
      
      public function set isLoggedIn(param1:Boolean) : void
      {
         this.mIsLoggedIn = param1;
      }
      
      public function getWeekScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.mWeekLevelProgress[param1])
         {
            _loc2_ = this.mWeekLevelProgress[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function setWeekScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.mWeekLevelProgress[param1] = _loc3_;
      }
   }
}
