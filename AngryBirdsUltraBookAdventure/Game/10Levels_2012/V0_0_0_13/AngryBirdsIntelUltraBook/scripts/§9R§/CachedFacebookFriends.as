package §9R§
{
   import §7p§.§]E§;
   import §@!`§.§5`§;
   import §@!`§.FriendListItemVO;
   import §@!`§.InviteVO;
   import §@!`§.UserLevelScoreVO;
   import §@!`§.UserTotalScoreVO;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class CachedFacebookFriends extends CachedData
   {
      
      public static var sUserObject:FriendListItemVO;
      
      public static var invitedIDs:Array = [];
      
      private static var sUserAvatars:Object = {};
       
      
      protected var §^+§:String;
      
      protected var §2'§:String;
      
      protected var §[>§:Boolean = false;
      
      protected var §6!$§:int = -1;
      
      private var §]!+§:int = 0;
      
      public function CachedFacebookFriends(userId:String, userName:String, remoteServiceUrl:String, isTotalScores:Boolean, injectedDataResults:Object = null)
      {
         this.§^+§ = userId;
         this.§2'§ = userName;
         this.§[>§ = isTotalScores;
         super(remoteServiceUrl);
         if(injectedDataResults)
         {
            §+-§ = new §!!?§(0,injectedDataResults.items.length,new URLLoader(),null);
            this.dataLoaded(injectedDataResults);
         }
         else
         {
            §&N§(0,0);
         }
      }
      
      public static function §'!L§(userId:String) : String
      {
         return sUserAvatars[userId];
      }
      
      public function get §"!J§() : int
      {
         return this.§]!+§;
      }
      
      public function get userIndex() : int
      {
         return this.§6!$§;
      }
      
      override protected function dataLoaded(dataObj:Object) : void
      {
         var lastNonInviteFriend:§5`§ = null;
         var friendListItemVO:FriendListItemVO = null;
         var parsedFriends:Object = {"items":[]};
         this.§6!$§ = -1;
         for(var i:int = dataObj.items.length - 1; i >= 0; i--)
         {
            CustomAvatarCache.§=!e§(new §`y§(dataObj.items[i].a,dataObj.items[i].u));
            friendListItemVO = FriendListItemVO.§"!h§(dataObj.items[i]);
            if(friendListItemVO is InviteVO && invitedIDs.indexOf(friendListItemVO.userId) != -1)
            {
               --this.§6!$§;
            }
            else
            {
               if(!(friendListItemVO is InviteVO) && invitedIDs.indexOf(friendListItemVO.userId) == -1)
               {
                  invitedIDs.push(friendListItemVO.userId);
               }
               if(friendListItemVO.userId == this.§^+§)
               {
                  this.§6!$§ = i;
                  sUserObject = friendListItemVO;
               }
               if(!(friendListItemVO is InviteVO))
               {
                  lastNonInviteFriend = lastNonInviteFriend || friendListItemVO as §5`§;
               }
               if(friendListItemVO.avatarString)
               {
                  sUserAvatars[friendListItemVO.userId] = friendListItemVO.avatarString;
               }
               parsedFriends.items.unshift(friendListItemVO);
            }
         }
         if(this.§6!$§ < 0)
         {
            this.§6!$§ = Boolean(lastNonInviteFriend) ? int(parsedFriends.items.indexOf(lastNonInviteFriend) + 1) : int(0);
            parsedFriends.items.splice(this.§6!$§,0,this.§4@§(lastNonInviteFriend));
         }
         parsedFriends.totalItemCount = parsedFriends.items.length;
         this.§]!+§ = invitedIDs.length;
         if(invitedIDs.indexOf(this.§^+§) >= 0)
         {
            --this.§]!+§;
         }
         super.dataLoaded(parsedFriends);
      }
      
      public function §4@§(lastNonInviteFriend:§5`§) : §5`§
      {
         if(this.§[>§)
         {
            return new UserTotalScoreVO(this.§^+§,this.§2'§,Boolean(sUserObject) ? sUserObject.avatarString : "",0,0,Boolean(lastNonInviteFriend) ? int(lastNonInviteFriend.rank + 1) : int(1),0);
         }
         return new UserLevelScoreVO(this.§^+§,this.§2'§,Boolean(sUserObject) ? sUserObject.avatarString : "",0,0,0,Boolean(lastNonInviteFriend) ? int(lastNonInviteFriend.rank + 1) : int(1));
      }
      
      public function §#!M§(id:String) : int
      {
         for(var i:int = 0; i < data.length; )
         {
            if(!(data[i] is InviteVO) && (data[i] as §5`§).userId == id)
            {
               return (data[i] as §5`§).rank;
            }
            i++;
         }
         return -1;
      }
      
      public function §`4§(rank:int) : Number
      {
         for(var i:int = 0; i < data.length; )
         {
            if(!(data[i] is InviteVO) && (data[i] as UserLevelScoreVO).rank == 2)
            {
               return (data[i] as UserLevelScoreVO).levelScore;
            }
            i++;
         }
         return 0;
      }
      
      public function §<!b§(comparedToScore:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var returnUser:Object = null;
         for(var i:int = 0; i < data.length; )
         {
            if((data[i] as UserLevelScoreVO).userId != this.§^+§ && !(data[i] is InviteVO) && this.§^+§ && (data[i] as UserLevelScoreVO).levelScore > comparedToScore)
            {
               returnUser = data[i];
            }
            i++;
         }
         return returnUser;
      }
      
      public function §>!J§() : UserLevelScoreVO
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var rank:int = this.§#!M§(this.§^+§);
         if(rank == 1)
         {
            return null;
         }
         if(rank == -1)
         {
            rank = data.length + 1;
         }
         for(var i:int = 0; i < data.length; )
         {
            if((data[i] as UserLevelScoreVO).rank == rank - 1)
            {
               return data[i];
            }
            i++;
         }
         return null;
      }
      
      override protected function onUrlLoaderComplete(e:Event) : void
      {
         try
         {
            super.onUrlLoaderComplete(e);
         }
         catch(err:Error)
         {
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§]E§.§'-§);
         }
      }
      
      public function §-!E§(score:int, stars:int, eagle:int, out_usersBeaten:Array) : int
      {
         var opponent:UserLevelScoreVO = null;
         var userObj:UserLevelScoreVO = data[this.§6!$§];
         if(!userObj)
         {
            return 0;
         }
         userObj.stars = stars;
         userObj.levelScore = score;
         userObj.mightyEagleScore = eagle;
         for(var i:int = data.length - 1; i >= 0; )
         {
            if(!(data[i] is InviteVO))
            {
               opponent = data[i];
               if(opponent.userId != this.§^+§)
               {
                  if(opponent.rank < userObj.rank)
                  {
                     if(userObj.levelScore > opponent.levelScore || userObj.levelScore == opponent.levelScore && userObj.mightyEagleScore > opponent.mightyEagleScore)
                     {
                        out_usersBeaten.push(opponent);
                        --userObj.rank;
                        ++opponent.rank;
                        opponent.§@!!§ = true;
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
            i--;
         }
         return userObj.rank;
      }
   }
}
