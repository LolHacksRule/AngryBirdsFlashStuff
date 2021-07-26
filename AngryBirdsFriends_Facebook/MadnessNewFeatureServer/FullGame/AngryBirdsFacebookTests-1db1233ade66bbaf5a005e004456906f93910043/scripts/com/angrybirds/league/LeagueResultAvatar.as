package com.angrybirds.league
{
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.LeagueScoreVO;
   import com.angrybirds.data.RankedVO;
   import com.angrybirds.friendsbar.data.CustomAvatarCache;
   import com.angrybirds.friendsbar.ui.profile.CroppedProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.LeagueProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.TournamentProfilePicture;
   import flash.display.MovieClip;
   
   public class LeagueResultAvatar
   {
       
      
      private var mAnimatedProfilePic:TournamentProfilePicture;
      
      public function LeagueResultAvatar(container:MovieClip, scoreVo:RankedVO)
      {
         var leagueProfilePic:LeagueProfilePicture = null;
         var profilePic:CroppedProfilePicture = null;
         super();
         while(container.numChildren > 0)
         {
            container.removeChildAt(0);
         }
         var avatarString:String = scoreVo.avatarString;
         if(avatarString == "" || avatarString == null)
         {
            avatarString = CustomAvatarCache.getFromCache(scoreVo.userId);
         }
         var profilePicture:String = scoreVo is LeagueScoreVO ? (scoreVo as LeagueScoreVO).profilePicture : null;
         if(profilePicture)
         {
            leagueProfilePic = new LeagueProfilePicture(scoreVo.userId,profilePicture,avatarString,false,FacebookProfilePicture.SMALL);
            leagueProfilePic.scaleX = 0.85;
            leagueProfilePic.scaleY = 0.85;
            container.addChild(leagueProfilePic);
         }
         else if(avatarString == "" || avatarString == null || ProfilePicture.AVATAR_ENABLED == false)
         {
            profilePic = new CroppedProfilePicture(scoreVo.userId,"",false,FacebookProfilePicture.SMALL,false,(scoreVo as FriendListItemVO).profileImageURL);
            profilePic.scaleX = 0.85;
            profilePic.scaleY = 0.85;
            container.addChild(profilePic);
         }
         else
         {
            this.mAnimatedProfilePic = new TournamentProfilePicture(scoreVo.userId,avatarString,false,FacebookProfilePicture.SMALL);
            this.mAnimatedProfilePic.y = 20;
            this.mAnimatedProfilePic.scaleX = 0.85;
            this.mAnimatedProfilePic.scaleY = 0.85;
            container.addChild(this.mAnimatedProfilePic);
         }
      }
      
      public function dispose() : void
      {
         if(this.mAnimatedProfilePic)
         {
            this.mAnimatedProfilePic.dispose();
         }
      }
   }
}
