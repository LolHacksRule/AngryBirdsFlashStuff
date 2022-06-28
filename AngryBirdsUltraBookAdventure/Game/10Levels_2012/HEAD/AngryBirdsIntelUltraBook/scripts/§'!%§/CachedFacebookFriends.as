package §'!%§
{
   import §9!!§.§1!E§;
   import §<!=§.§"o§;
   import §<!=§.FriendListItemVO;
   import §<!=§.InviteVO;
   import §<!=§.UserLevelScoreVO;
   import §<!=§.UserTotalScoreVO;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class CachedFacebookFriends extends CachedData
   {
      
      public static var sUserObject:FriendListItemVO;
      
      public static var invitedIDs:Array = [];
      
      private static var sUserAvatars:Object = {};
       
      
      protected var §^Q§:String;
      
      protected var §!! §:String;
      
      protected var §]?§:Boolean = false;
      
      protected var §+!k§:int = -1;
      
      private var § k§:int = 0;
      
      public function CachedFacebookFriends(userId:String, userName:String, remoteServiceUrl:String, isTotalScores:Boolean, injectedDataResults:Object = null)
      {
         this.§^Q§ = userId;
         this.§!! § = userName;
         this.§]?§ = isTotalScores;
         super(remoteServiceUrl);
         if(injectedDataResults)
         {
            §-!b§ = new §3&§(0,injectedDataResults.items.length,new URLLoader(),null);
            this.dataLoaded(injectedDataResults);
         }
         else
         {
            §&a§(0,0);
         }
      }
      
      public static function §"!7§(userId:String) : String
      {
         return sUserAvatars[userId];
      }
      
      public function get §>R§() : int
      {
         return this.§ k§;
      }
      
      public function get userIndex() : int
      {
         return this.§+!k§;
      }
      
      override protected function dataLoaded(dataObj:Object) : void
      {
         var lastNonInviteFriend:§"o§ = null;
         var friendListItemVO:FriendListItemVO = null;
         var parsedFriends:Object = {"items":[]};
         this.§+!k§ = -1;
         for(var i:int = dataObj.items.length - 1; i >= 0; i--)
         {
            CustomAvatarCache.§+8§(new §#!4§(dataObj.items[i].a,dataObj.items[i].u));
            friendListItemVO = FriendListItemVO.§#!_§(dataObj.items[i]);
            if(friendListItemVO is InviteVO && invitedIDs.indexOf(friendListItemVO.userId) != -1)
            {
               --this.§+!k§;
            }
            else
            {
               if(!(friendListItemVO is InviteVO) && invitedIDs.indexOf(friendListItemVO.userId) == -1)
               {
                  invitedIDs.push(friendListItemVO.userId);
               }
               if(friendListItemVO.userId == this.§^Q§)
               {
                  this.§+!k§ = i;
                  sUserObject = friendListItemVO;
               }
               if(!(friendListItemVO is InviteVO))
               {
                  lastNonInviteFriend = lastNonInviteFriend || friendListItemVO as §"o§;
               }
               if(friendListItemVO.avatarString)
               {
                  sUserAvatars[friendListItemVO.userId] = friendListItemVO.avatarString;
               }
               parsedFriends.items.unshift(friendListItemVO);
            }
         }
         if(this.§+!k§ < 0)
         {
            this.§+!k§ = Boolean(lastNonInviteFriend) ? int(parsedFriends.items.indexOf(lastNonInviteFriend) + 1) : int(0);
            parsedFriends.items.splice(this.§+!k§,0,this.§]I§(lastNonInviteFriend));
         }
         parsedFriends.totalItemCount = parsedFriends.items.length;
         this.§ k§ = invitedIDs.length;
         if(invitedIDs.indexOf(this.§^Q§) >= 0)
         {
            --this.§ k§;
         }
         super.dataLoaded(parsedFriends);
      }
      
      public function §]I§(lastNonInviteFriend:§"o§) : §"o§
      {
         if(this.§]?§)
         {
            return new UserTotalScoreVO(this.§^Q§,this.§!! §,Boolean(sUserObject) ? sUserObject.avatarString : "",0,0,Boolean(lastNonInviteFriend) ? int(lastNonInviteFriend.rank + 1) : int(1),0);
         }
         return new UserLevelScoreVO(this.§^Q§,this.§!! §,Boolean(sUserObject) ? sUserObject.avatarString : "",0,0,0,Boolean(lastNonInviteFriend) ? int(lastNonInviteFriend.rank + 1) : int(1));
      }
      
      public function §`!8§(id:String) : int
      {
         for(var i:int = 0; i < data.length; )
         {
            if(!(data[i] is InviteVO) && (data[i] as §"o§).userId == id)
            {
               return (data[i] as §"o§).rank;
            }
            i++;
         }
         return -1;
      }
      
      public function §-=§(rank:int) : Number
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
      
      public function §in §(comparedToScore:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var returnUser:Object = null;
         for(var i:int = 0; i < data.length; )
         {
            if((data[i] as UserLevelScoreVO).userId != this.§^Q§ && !(data[i] is InviteVO) && this.§^Q§ && (data[i] as UserLevelScoreVO).levelScore > comparedToScore)
            {
               returnUser = data[i];
            }
            i++;
         }
         return returnUser;
      }
      
      public function §6!i§() : UserLevelScoreVO
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var rank:int = this.§`!8§(this.§^Q§);
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§1!E§.§`z§);
         }
      }
      
      public function §6,§(score:int, stars:int, eagle:int, out_usersBeaten:Array) : int
      {
         var opponent:UserLevelScoreVO = null;
         var userObj:UserLevelScoreVO = data[this.§+!k§];
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
               if(opponent.userId != this.§^Q§)
               {
                  if(opponent.rank < userObj.rank)
                  {
                     if(userObj.levelScore > opponent.levelScore || userObj.levelScore == opponent.levelScore && userObj.mightyEagleScore > opponent.mightyEagleScore)
                     {
                        out_usersBeaten.push(opponent);
                        --userObj.rank;
                        ++opponent.rank;
                        opponent.§[!f§ = true;
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
