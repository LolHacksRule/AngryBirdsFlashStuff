package com.angrybirds.user
{
   import flash.events.EventDispatcher;
   
   public class UserManager extends EventDispatcher
   {
      
      private static var sUser:UserModelCustom;
      
      private static var sLevelProfile:Array;
      
      private static var sLevelProfileSecurity:String;
      
      private static const sPlayGroundLevelPool:Array = [];
      
      private static var sCompetition:int = 1;
       
      
      public function UserManager()
      {
         super();
      }
      
      public static function get user() : UserModelCustom
      {
         return sUser;
      }
      
      public static function set user(param1:UserModelCustom) : void
      {
         sUser = param1;
      }
      
      public static function get playerObject() : Object
      {
         return {
            "id":sUser.id,
            "nickName":sUser.name,
            "security":sUser.authenticationToken
         };
      }
      
      public static function get competition() : int
      {
         return sCompetition;
      }
      
      public static function set competition(param1:int) : void
      {
         sCompetition = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         sLevelProfile = param1;
      }
      
      public static function updateLocalUserData() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in sLevelProfile)
         {
            (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setWeekScoreForLevel(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return sLevelProfile;
      }
      
      public static function getLevelProfileByLevel(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in sPlayGroundLevelPool)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc2_ in levelProfile)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function isPlayGroundLevel(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in sPlayGroundLevelPool)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function isLevelUnlocked(param1:String) : Boolean
      {
         var _loc2_:Object = getLevelProfileByLevel(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return sLevelProfileSecurity;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         sLevelProfileSecurity = param1;
      }
   }
}
