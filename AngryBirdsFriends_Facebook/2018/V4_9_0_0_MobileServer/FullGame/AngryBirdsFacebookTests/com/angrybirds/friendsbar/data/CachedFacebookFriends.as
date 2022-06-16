package com.angrybirds.friendsbar.data
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.InviteVO;
   import com.angrybirds.data.RankedVO;
   import com.angrybirds.data.UserLevelScoreVO;
   import com.angrybirds.data.UserTotalScoreVO;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.utils.ErrorCode;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   
   public class CachedFacebookFriends extends CachedData
   {
      
      public static var sUserObject:FriendListItemVO;
      
      public static const INVITE_LIST_MAX_VISIBE_AMOUNT:int = 10;
      
      public static const CHALLENGE_LIST_MAX_VISIBE_AMOUNT:int = 10;
      
      public static var challengeCandidates:Vector.<UserTournamentScoreVO> = new Vector.<UserTournamentScoreVO>();
      
      public static var levelChallengeCandidates:Vector.<UserLevelScoreVO> = new Vector.<UserLevelScoreVO>();
      
      public static var challengedIDs:Array = [];
      
      private static var sUserAvatars:Object = {};
       
      
      protected var mUserId:String;
      
      protected var mUserName:String;
      
      protected var mIsTotalScores:Boolean = false;
      
      protected var mIsTournamentScores:Boolean = false;
      
      protected var mIsLeagueScore:Boolean = false;
      
      protected var mUserIndex:int = -1;
      
      private var mCacheTime:Number = 0;
      
      public function CachedFacebookFriends(userId:String, userName:String, remoteServiceUrl:String, isTotalScores:Boolean, injectedDataResults:Object = null, useGetRequestMethod:Boolean = false, isTournamentScore:Boolean = false, isLeagueScore:Boolean = false)
      {
         this.mUserId = userId;
         this.mUserName = userName;
         this.mIsTotalScores = isTotalScores;
         mRemoteServiceUrlRequestMethod = !!useGetRequestMethod ? URLRequestMethod.GET : URLRequestMethod.POST;
         this.mIsTournamentScores = isTournamentScore;
         this.mIsLeagueScore = isLeagueScore;
         super(remoteServiceUrl);
         if(injectedDataResults)
         {
            mCurrentLoadingOperation = new LoadingOperation(0,injectedDataResults.players.length,new URLLoader(),null);
            this.dataLoaded(injectedDataResults);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function getAvatarForUser(userId:String) : String
      {
         return sUserAvatars[userId];
      }
      
      public function get userIndex() : int
      {
         return this.mUserIndex;
      }
      
      override protected function dataLoaded(dataObj:Object) : void
      {
         var lastNonInviteFriend:RankedVO = null;
         var friendListItemVO:FriendListItemVO = null;
         var dataObjArray:Array = new Array();
         var parseLevelScores:Boolean = false;
         if(dataObj.players)
         {
            dataObjArray = dataObj.players;
         }
         else if(dataObj.scores)
         {
            dataObjArray = dataObj.scores;
            parseLevelScores = true;
         }
         else if(dataObj.p)
         {
            dataObjArray = dataObj.p;
            parseLevelScores = true;
         }
         var parsedFriends:Object = {"players":[]};
         this.mUserIndex = -1;
         for(var i:int = dataObjArray.length - 1; i >= 0; i--)
         {
            dataObjArray[i].r = i + 1;
            friendListItemVO = FriendListItemVO.fromServerObject(dataObjArray[i],parseLevelScores,this.mIsLeagueScore);
            if(friendListItemVO is InviteVO && FriendsDataCache.isInvited(friendListItemVO.userId))
            {
               --this.mUserIndex;
            }
            else
            {
               if(friendListItemVO.userId == this.mUserId)
               {
                  this.mUserIndex = i;
                  sUserObject = friendListItemVO;
               }
               if(!(friendListItemVO is InviteVO))
               {
                  lastNonInviteFriend = lastNonInviteFriend || friendListItemVO as RankedVO;
               }
               if(friendListItemVO.avatarString)
               {
                  sUserAvatars[friendListItemVO.userId] = friendListItemVO.avatarString;
               }
               parsedFriends.players.unshift(friendListItemVO);
            }
         }
         parsedFriends.totalItemCount = parsedFriends.players.length;
         super.dataLoaded(parsedFriends);
         this.mCacheTime = AngryBirdsBase.singleton.dataModel as DataModelFriends && (AngryBirdsBase.singleton.dataModel as DataModelFriends).serverSynchronizedTime ? Number((AngryBirdsBase.singleton.dataModel as DataModelFriends).serverSynchronizedTime.synchronizedTimeStamp) : Number(0);
      }
      
      public function createNewSelfUser(lastNonInviteFriend:RankedVO) : RankedVO
      {
         if(this.mIsTotalScores)
         {
            return new UserTotalScoreVO(this.mUserId,this.mUserName,!!sUserObject ? sUserObject.avatarString : "",0,0,!!lastNonInviteFriend ? int(lastNonInviteFriend.rank + 1) : 1);
         }
         return new UserLevelScoreVO(this.mUserId,this.mUserName,!!sUserObject ? sUserObject.avatarString : "",0,0,0,!!lastNonInviteFriend ? int(lastNonInviteFriend.rank + 1) : 1,null,0,null);
      }
      
      public function getUserRank(id:String) : int
      {
         for(var i:int = 0; i < data.length; i++)
         {
            if(!(data[i] is InviteVO) && (data[i] as RankedVO).userId == id)
            {
               return (data[i] as RankedVO).rank;
            }
         }
         return -1;
      }
      
      public function getUserScoreByPosition(rank:int) : Number
      {
         for(var i:int = 0; i < data.length; i++)
         {
            if(!(data[i] is InviteVO) && (data[i] as UserLevelScoreVO).rank == 2)
            {
               return (data[i] as UserLevelScoreVO).levelScore;
            }
         }
         return 0;
      }
      
      public function getNextToBeatForScore(comparedToScore:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var returnUser:Object = null;
         for(var i:int = 0; i < data.length; i++)
         {
            if((data[i] as UserLevelScoreVO).userId != this.mUserId && !(data[i] is InviteVO) && this.mUserId && (data[i] as UserLevelScoreVO).levelScore > comparedToScore)
            {
               returnUser = data[i];
            }
         }
         return returnUser;
      }
      
      public function getNextToBeat() : UserLevelScoreVO
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var rank:int = this.getUserRank(this.mUserId);
         if(rank == 1)
         {
            return null;
         }
         if(rank == -1)
         {
            rank = data.length + 1;
         }
         for(var i:int = 0; i < data.length; i++)
         {
            if(data[i] is UserLevelScoreVO && (data[i] as UserLevelScoreVO).rank == rank - 1)
            {
               return data[i];
            }
         }
         return null;
      }
      
      override protected function onUrlLoaderComplete(e:Event) : void
      {
         try
         {
            if(e.target.data.hasOwnProperty("st"))
            {
               delete e.target.data["st"];
            }
            super.onUrlLoaderComplete(e);
         }
         catch(err:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t load highscore list.\n" + (e.target as URLLoader).data + "\nError code: " + ErrorCode.JSON_PARSE_ERROR));
         }
      }
      
      public function userNewScore(score:int, stars:int, eagle:int, out_usersBeaten:Array) : int
      {
         var opponent:UserLevelScoreVO = null;
         var userObj:UserLevelScoreVO = data[this.mUserIndex];
         if(!userObj)
         {
            return 0;
         }
         userObj.stars = stars;
         userObj.levelScore = score;
         userObj.mightyEagleScore = eagle;
         for(var i:int = data.length - 1; i >= 0; i--)
         {
            if(!(data[i] is InviteVO))
            {
               opponent = data[i];
               if(opponent.userId != this.mUserId)
               {
                  if(!opponent.canBeChallenged)
                  {
                     if(opponent.rank <= userObj.rank)
                     {
                        if(userObj.levelScore > opponent.levelScore || userObj.levelScore == opponent.levelScore && userObj.mightyEagleScore > opponent.mightyEagleScore)
                        {
                           out_usersBeaten.push(opponent);
                           --userObj.rank;
                           ++opponent.rank;
                           opponent.beaten = true;
                           if(!userObj.targetOffset)
                           {
                              userObj.targetOffset = -1;
                           }
                           else
                           {
                              --userObj.targetOffset;
                           }
                           if(!opponent.targetOffset)
                           {
                              opponent.targetOffset = 1;
                           }
                           else
                           {
                              ++opponent.targetOffset;
                           }
                        }
                     }
                  }
               }
            }
         }
         this.mUserIndex = userObj.rank - 1;
         return userObj.rank;
      }
      
      public function getTotalStarsForUser(userId:String) : int
      {
         var i:int = 0;
         if(data)
         {
            for(i = 0; i < data.length; i++)
            {
               if((data[i] as UserTotalScoreVO).userId == userId)
               {
                  return (data[i] as UserTotalScoreVO).starCount;
               }
            }
         }
         return 0;
      }
      
      public function getTotalFeathersForUser(userId:String) : int
      {
         var i:int = 0;
         if(data)
         {
            for(i = 0; i < data.length; i++)
            {
               if((data[i] as UserTotalScoreVO).userId == userId)
               {
                  return (data[i] as UserTotalScoreVO).featherCount;
               }
            }
         }
         return 0;
      }
      
      public function getUserScore(userId:String) : Number
      {
         var i:int = 0;
         if(data)
         {
            for(i = 0; i < data.length; i++)
            {
               if((data[i] as UserLevelScoreVO).userId == userId)
               {
                  return (data[i] as UserLevelScoreVO).levelScore;
               }
            }
         }
         return 0;
      }
      
      public function set isTotalScores(value:Boolean) : void
      {
         this.mIsTotalScores = value;
      }
      
      public function get isTournamentScores() : Boolean
      {
         return this.mIsTournamentScores;
      }
      
      public function get isLeagueScore() : Boolean
      {
         return this.mIsLeagueScore;
      }
      
      public function get cacheTime() : Number
      {
         return this.mCacheTime;
      }
      
      public function set cacheTime(value:Number) : void
      {
         this.mCacheTime = value;
      }
      
      public function cacheValidForLevel() : Boolean
      {
         var now:Number = (AngryBirdsBase.singleton.dataModel as DataModelFriends).serverSynchronizedTime.synchronizedTimeStamp;
         var seconds:int = (now - this.mCacheTime) / 1000;
         seconds = Math.max(0,seconds);
         if(seconds < TournamentModel.CACHE_VALIDITY_SECONDS)
         {
            return true;
         }
         this.mCacheTime = now;
         return false;
      }
      
      public function addUser(userObj:UserLevelScoreVO) : void
      {
         data.push(userObj);
         for(var i:int = 0; i < data.length; i++)
         {
            if(data[i].userId == this.mUserId)
            {
               this.mUserIndex = i;
               break;
            }
         }
      }
   }
}
