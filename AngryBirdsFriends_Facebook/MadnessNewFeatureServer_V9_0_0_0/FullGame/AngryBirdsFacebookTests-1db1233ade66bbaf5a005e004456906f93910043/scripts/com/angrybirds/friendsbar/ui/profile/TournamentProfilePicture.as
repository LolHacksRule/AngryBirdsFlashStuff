package com.angrybirds.friendsbar.ui.profile
{
   import com.angrybirds.friendsbar.ui.FriendItemRenderer;
   import flash.events.Event;
   
   public class TournamentProfilePicture extends ProfilePicture
   {
       
      
      private var mIgnoreBackground:Boolean;
      
      public function TournamentProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null, ignoreBackground:Boolean = false)
      {
         this.mIgnoreBackground = ignoreBackground;
         super(userId,avatarString,useHttps,imageSize);
      }
      
      override protected function initProfile(userId:String, avatarString:String, imageSize:String = null, imageURL:String = "") : void
      {
         mImageSize = imageSize = imageSize || FacebookProfilePicture.SQUARE;
         mUserId = userId;
         mImageURL = imageURL;
         mIsUser = FriendItemRenderer.sUserId == userId;
         createNewProfile(avatarString);
      }
      
      override protected function onAddedToStage(e:Event) : void
      {
         AnimatedAvatarProfilePicture(mUserPicture).playIdleAnimations();
      }
      
      override protected function onRemovedFromStage(e:Event) : void
      {
         AnimatedAvatarProfilePicture(mUserPicture).dispose();
      }
      
      override protected function createAvatar(avatarString:String) : void
      {
         if(mUserPicture)
         {
            if(mUserPicture is AnimatedAvatarProfilePicture)
            {
               AnimatedAvatarProfilePicture(mUserPicture).dispose();
            }
         }
         mIsAvatar = true;
         mUserPicture = new AnimatedAvatarProfilePicture(avatarString,mImageSize,this.mIgnoreBackground);
         mUserPicture.visible = true;
         addChild(mUserPicture);
         AnimatedAvatarProfilePicture(mUserPicture).playIdleAnimations();
      }
      
      override protected function createFacebookProfile(dontAddChild:Boolean = false) : void
      {
         if(mUserPicture)
         {
            mUserPicture.visible = false;
         }
      }
   }
}
