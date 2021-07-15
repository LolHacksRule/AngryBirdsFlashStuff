package com.angrybirds.user
{
   import com.angrybirds.data.ServerCall;
   import com.angrybirds.states.StatePlayCustom;
   import com.angrybirds.utils.ValidateResponse;
   import com.angrybirds.utils.IHTTPResponseListener;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class LevelPlayServerCall implements IHTTPResponseListener
   {
       
      
      private var mServerCall:ServerCall = null;
      
      private var mServerCallComplete:Boolean = false;
      
      private var mStatePlay:StatePlayCustom;
      
      public function LevelPlayServerCall(param1:StatePlayCustom)
      {
         super();
         this.mStatePlay = param1;
      }
      
      private function unlockNextLevel() : void
      {
         var _loc3_:Object = null;
         var _loc1_:String = this.mStatePlay.levelManager.getNextLevelId();
         var _loc2_:Object = UserManager.getLevelProfileByLevel(_loc1_);
         if(!_loc2_)
         {
            _loc3_ = new Object();
            _loc3_.score = 0;
            _loc3_.stars = 0;
            _loc3_.levelId = _loc1_;
            _loc3_.userId = UserManager.user.id;
            UserManager.levelProfile.push(_loc3_);
         }
      }
      
      public function levelCompleted() : void
      {
         var _loc4_:int = 0;
         this.mServerCallComplete = true;
         this.unlockNextLevel();
         var _loc1_:String = this.mStatePlay.levelManager.currentLevel;
         var _loc2_:Object = UserManager.getLevelProfileByLevel(this.mStatePlay.levelManager.currentLevel);
         var _loc3_:int = this.mStatePlay.levelController.getScore(10);
         if(!_loc2_)
         {
            _loc2_ = new Object();
            _loc2_.score = _loc3_;
            if(_loc2_.bestScore == undefined)
            {
               _loc2_.bestScore = 0;
            }
            _loc2_.stars = (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.getStarsForLevel(_loc1_,_loc3_);
            _loc2_.levelId = _loc1_;
            _loc2_.userId = UserManager.user.id;
            UserManager.levelProfile.push(_loc2_);
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < UserManager.levelProfile.length)
            {
               if(UserManager.levelProfile[_loc4_].levelId == _loc1_)
               {
                  _loc2_.score = _loc3_;
                  _loc2_.stars = (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.getStarsForLevel(_loc1_,_loc3_);
                  _loc2_.levelId = _loc1_;
                  _loc2_.userId = UserManager.user.id;
                  if(_loc2_.bestScore == undefined)
                  {
                     _loc2_.bestScore = 0;
                  }
                  UserManager.levelProfile[_loc4_] = _loc2_;
               }
               _loc4_++;
            }
         }
         UserManager.updateLocalUserData();
      }
      
      public function onComplete(param1:Event) : void
      {
         this.mServerCallComplete = true;
         var _loc2_:Object = ValidateResponse.parseJSON((param1.currentTarget as URLLoader).data);
         var _loc3_:String = ServerCall.getSecurityHashForLevelProfile(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom = new CustomUserProgress("",this.mStatePlay.levelManager);
            UserManager.user = new UserModelCustom();
            UserManager.levelProfile = [];
            return;
         }
         UserManager.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            UserManager.levelProfile = _loc2_.levelProfile;
            UserManager.updateLocalUserData();
         }
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
      
      public function completeServerCall() : void
      {
         if(this.mServerCall)
         {
            this.mServerCall.dispose();
         }
         this.mServerCallComplete = true;
      }
      
      public function disposeServerCall() : void
      {
         if(this.mServerCall)
         {
            this.mServerCall.dispose();
            this.mServerCall = null;
         }
         this.mServerCallComplete = false;
      }
      
      public function get serverCall() : ServerCall
      {
         return this.mServerCall;
      }
      
      public function get serverCallComplete() : Boolean
      {
         return this.mServerCallComplete;
      }
   }
}
