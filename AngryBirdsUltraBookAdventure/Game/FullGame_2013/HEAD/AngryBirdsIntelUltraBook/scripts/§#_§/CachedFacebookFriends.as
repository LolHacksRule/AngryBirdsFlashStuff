package §#_§
{
   import §"!i§.§<m§;
   import §"!i§.FriendListItemVO;
   import §"!i§.InviteVO;
   import §"!i§.UserLevelScoreVO;
   import §"!i§.UserTotalScoreVO;
   import §5=§.§8O§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class CachedFacebookFriends extends CachedData
   {
      
      public static var sUserObject:FriendListItemVO;
      
      public static var invitedIDs:Array = [];
      
      private static var sUserAvatars:Object = {};
       
      
      protected var §`I§:String;
      
      protected var §3=§:String;
      
      protected var §<e§:Boolean = false;
      
      protected var §3!D§:int = -1;
      
      private var §@!6§:int = 0;
      
      public function CachedFacebookFriends(userId:String, userName:String, remoteServiceUrl:String, isTotalScores:Boolean, injectedDataResults:Object = null)
      {
         this.§`I§ = userId;
         this.§3=§ = userName;
         this.§<e§ = isTotalScores;
         super(remoteServiceUrl);
         if(injectedDataResults)
         {
            §=!4§ = new §9k§(0,injectedDataResults.items.length,new URLLoader(),null);
            this.dataLoaded(injectedDataResults);
         }
         else
         {
            § !i§(0,0);
         }
      }
      
      public static function §6A§(userId:String) : String
      {
         return sUserAvatars[userId];
      }
      
      public function get §2!g§() : int
      {
         return this.§@!6§;
      }
      
      public function get userIndex() : int
      {
         return this.§3!D§;
      }
      
      override protected function dataLoaded(dataObj:Object) : void
      {
         var lastNonInviteFriend:§<m§ = null;
         var friendListItemVO:FriendListItemVO = null;
         var parsedFriends:Object = {"items":[]};
         this.§3!D§ = -1;
         for(var i:int = dataObj.items.length - 1; i >= 0; i--)
         {
            CustomAvatarCache.§[h§(new §3a§(dataObj.items[i].a,dataObj.items[i].u));
            friendListItemVO = FriendListItemVO.§<! §(dataObj.items[i]);
            if(friendListItemVO is InviteVO && invitedIDs.indexOf(friendListItemVO.userId) != -1)
            {
               --this.§3!D§;
            }
            else
            {
               if(!(friendListItemVO is InviteVO) && invitedIDs.indexOf(friendListItemVO.userId) == -1)
               {
                  invitedIDs.push(friendListItemVO.userId);
               }
               if(friendListItemVO.userId == this.§`I§)
               {
                  this.§3!D§ = i;
                  sUserObject = friendListItemVO;
               }
               if(!(friendListItemVO is InviteVO))
               {
                  lastNonInviteFriend = lastNonInviteFriend || friendListItemVO as §<m§;
               }
               if(friendListItemVO.avatarString)
               {
                  sUserAvatars[friendListItemVO.userId] = friendListItemVO.avatarString;
               }
               parsedFriends.items.unshift(friendListItemVO);
            }
         }
         if(this.§3!D§ < 0)
         {
            this.§3!D§ = Boolean(lastNonInviteFriend) ? int(parsedFriends.items.indexOf(lastNonInviteFriend) + 1) : int(0);
            parsedFriends.items.splice(this.§3!D§,0,this.§4!-§(lastNonInviteFriend));
         }
         parsedFriends.totalItemCount = parsedFriends.items.length;
         this.§@!6§ = invitedIDs.length;
         if(invitedIDs.indexOf(this.§`I§) >= 0)
         {
            --this.§@!6§;
         }
         super.dataLoaded(parsedFriends);
      }
      
      public function §4!-§(lastNonInviteFriend:§<m§) : §<m§
      {
         if(this.§<e§)
         {
            return new UserTotalScoreVO(this.§`I§,this.§3=§,Boolean(sUserObject) ? sUserObject.avatarString : "",0,0,Boolean(lastNonInviteFriend) ? int(lastNonInviteFriend.rank + 1) : int(1),0);
         }
         return new UserLevelScoreVO(this.§`I§,this.§3=§,Boolean(sUserObject) ? sUserObject.avatarString : "",0,0,0,Boolean(lastNonInviteFriend) ? int(lastNonInviteFriend.rank + 1) : int(1));
      }
      
      public function §!!K§(id:String) : int
      {
         for(var i:int = 0; i < data.length; )
         {
            if(!(data[i] is InviteVO) && (data[i] as §<m§).userId == id)
            {
               return (data[i] as §<m§).rank;
            }
            i++;
         }
         return -1;
      }
      
      public function §,!N§(rank:int) : Number
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
      
      public function §]H§(comparedToScore:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var returnUser:Object = null;
         for(var i:int = 0; i < data.length; )
         {
            if((data[i] as UserLevelScoreVO).userId != this.§`I§ && !(data[i] is InviteVO) && this.§`I§ && (data[i] as UserLevelScoreVO).levelScore > comparedToScore)
            {
               returnUser = data[i];
            }
            i++;
         }
         return returnUser;
      }
      
      public function §>!'§() : UserLevelScoreVO
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var rank:int = this.§!!K§(this.§`I§);
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§8O§.§?6§);
         }
      }
      
      public function §[!Y§(score:int, stars:int, eagle:int, out_usersBeaten:Array) : int
      {
         var opponent:UserLevelScoreVO = null;
         var userObj:UserLevelScoreVO = data[this.§3!D§];
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
               if(opponent.userId != this.§`I§)
               {
                  if(opponent.rank < userObj.rank)
                  {
                     if(userObj.levelScore > opponent.levelScore || userObj.levelScore == opponent.levelScore && userObj.mightyEagleScore > opponent.mightyEagleScore)
                     {
                        out_usersBeaten.push(opponent);
                        --userObj.rank;
                        ++opponent.rank;
                        opponent.§`#§ = true;
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
