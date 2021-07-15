package com.angrybirds.utils
{
   import com.angrybirds.user.UserManager;
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var mLocalDataKey:String = "";
      
      private var mData:Object;
      
      public function LocalDataHandler(param1:String)
      {
         super();
         this.mLocalDataKey = param1;
         this.getFlashSharedObject();
      }
      
      private function clear() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.mLocalDataKey);
         }
         catch(e:*)
         {
         }
         mySO.clear();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.mData.tutorials)
         {
            (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setTutorialSeen(_loc1_);
         }
         if(this.mData.levelProfile)
         {
            UserManager.levelProfile = this.mData.levelProfile;
         }
         else
         {
            this.resetLevelProgress();
         }
         if(this.mData.soundsEnabled == undefined)
         {
            this.mData.soundsEnabled = true;
         }
         (AngryBirdsBase.singleton as AngryBirdsCustom).setSoundsEnabled(this.mData.soundsEnabled);
      }
      
      private function getFlashSharedObject() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.mLocalDataKey);
            this.mData = mySO.data;
         }
         catch(e:Error)
         {
            mData = new Object();
         }
         if(!this.mData.tutorials)
         {
            this.mData.tutorials = [];
         }
         if(!this.mData.levelProfile)
         {
            this.resetLevelProgress();
         }
      }
      
      private function resetLevelProgress() : void
      {
         var _loc1_:Object = new Object();
         _loc1_.bestScore = 0;
         _loc1_.levelId = "1-1";
         _loc1_.score = 0;
         _loc1_.stars = 0;
         var _loc2_:Array = [];
         _loc2_[0] = _loc1_;
         UserManager.levelProfile = _loc2_;
         this.mData.levelProfile = _loc2_;
         this.mData.selectedLanguage = null;
         this.flushFlashSharedObject();
      }
      
      public function setScoreForLevel(param1:String, param2:Number) : void
      {
         var _loc3_:Array = UserManager.levelProfile;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            if(_loc3_[_loc5_].levelId == param1)
            {
               if(param2 > _loc3_[_loc5_].bestScore)
               {
                  _loc3_[_loc5_].bestScore = param2;
               }
               _loc3_[_loc5_].score = param2;
               _loc3_[_loc5_].stars = (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.getStarsForLevel(param1,_loc3_[_loc5_].bestScore);
            }
            _loc5_++;
         }
         this.mData.levelProfile = _loc3_;
         this.flushFlashSharedObject();
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.mData.tutorials[param1] = param2;
         this.flushFlashSharedObject();
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         this.mData.soundsEnabled = param1;
         this.flushFlashSharedObject();
      }
      
      public function setLanguageSelected(param1:String) : void
      {
         this.mData.selectedLanguage = param1;
         this.flushFlashSharedObject();
      }
      
      public function getLanguageSelected() : String
      {
         if(this.mData && this.mData.selectedLanguage)
         {
            return this.mData.selectedLanguage;
         }
         return "";
      }
      
      private function flushFlashSharedObject() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.mLocalDataKey);
            for(i in this.mData)
            {
               mySO.data[i] = this.mData[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
