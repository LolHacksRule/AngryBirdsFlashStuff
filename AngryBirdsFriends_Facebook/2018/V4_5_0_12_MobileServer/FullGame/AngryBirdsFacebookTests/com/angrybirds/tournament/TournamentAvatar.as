package com.angrybirds.tournament
{
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.friendsbar.data.CustomAvatarCache;
   import com.angrybirds.friendsbar.ui.profile.CroppedProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.TournamentProfilePicture;
   import flash.display.MovieClip;
   
   public class TournamentAvatar
   {
       
      
      private var mAnimatedProfilePic:TournamentProfilePicture;
      
      public function TournamentAvatar(container:MovieClip, tournamentScoreVO:UserTournamentScoreVO)
      {
         var avatarHolder:MovieClip = null;
         var emptyAvatar:MovieClip = null;
         var pigFrame:MovieClip = null;
         var emptyProfile:MovieClip = null;
         var pigFrameShadow:MovieClip = null;
         var avatarString:String = null;
         var profilePic:CroppedProfilePicture = null;
         super();
         if(container)
         {
            avatarHolder = container.getChildByName("AvatarHolder") as MovieClip;
            emptyAvatar = avatarHolder.getChildByName("EmptyAvatar") as MovieClip;
            pigFrame = avatarHolder.getChildByName("PigFrame") as MovieClip;
            emptyProfile = avatarHolder.getChildByName("EmptyProfile") as MovieClip;
            pigFrameShadow = avatarHolder.getChildByName("PigFrameShadow") as MovieClip;
            if(emptyAvatar)
            {
               while(emptyAvatar.numChildren > 0)
               {
                  emptyAvatar.removeChildAt(0);
               }
            }
            if(emptyProfile)
            {
               while(emptyProfile.numChildren > 0)
               {
                  emptyProfile.removeChildAt(0);
               }
            }
            avatarString = tournamentScoreVO.avatarString;
            if(avatarString == "" || avatarString == null)
            {
               avatarString = CustomAvatarCache.getFromCache(tournamentScoreVO.userId);
            }
            if(avatarString == "" || avatarString == null || ProfilePicture.AVATAR_ENABLED == false)
            {
               pigFrame.visible = true;
               pigFrameShadow.visible = true;
               emptyProfile.visible = true;
               profilePic = new CroppedProfilePicture(tournamentScoreVO.userId,"",false,FacebookProfilePicture.NORMAL,false,(tournamentScoreVO as FriendListItemVO).profileImageURL);
               emptyProfile.addChild(profilePic);
            }
            else
            {
               pigFrame.visible = false;
               pigFrameShadow.visible = false;
               emptyProfile.visible = false;
               this.mAnimatedProfilePic = new TournamentProfilePicture(tournamentScoreVO.userId,avatarString,false,"220",true);
               this.mAnimatedProfilePic.scaleX = 0.59;
               this.mAnimatedProfilePic.scaleY = 0.59;
               emptyAvatar.addChild(this.mAnimatedProfilePic);
            }
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
