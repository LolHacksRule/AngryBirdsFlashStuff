package com.angrybirds.friendsbar.ui.profile
{
   import com.angrybirds.friendsbar.ui.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class ChapterSelectionProfilePicture extends ProfilePicture
   {
       
      
      private var mSilhouette:MovieClip;
      
      private var mSilhouetteShouldBeHidden:Boolean;
      
      public function ChapterSelectionProfilePicture(userId:String, avatarString:String, newSilhouette:MovieClip, useHttps:Boolean = false, imageSize:String = null)
      {
         this.mSilhouette = newSilhouette;
         super(userId,avatarString,useHttps,imageSize);
      }
      
      public function set silhouette(silhouetteMovieClip:MovieClip) : void
      {
         this.mSilhouette = silhouetteMovieClip;
      }
      
      public function get silhouette() : MovieClip
      {
         return this.mSilhouette;
      }
      
      public function get silhouetteShouldBeHidden() : Boolean
      {
         return this.mSilhouetteShouldBeHidden;
      }
      
      override protected function initProfile(userId:String, avatarString:String, imageSize:String = null, imageURL:String = "") : void
      {
         mImageSize = imageSize = imageSize || FacebookProfilePicture.SQUARE;
         mUserId = userId;
         mImageURL = imageURL;
         mIsUser = FriendItemRenderer.sUserId == userId;
         createNewProfile(avatarString);
         if(mIsUser)
         {
            sInstances.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(avatarString:String) : void
      {
         if(mUserPicture)
         {
            if(mUserPicture is AvatarProfilePictureButton)
            {
               AvatarProfilePictureButton(mUserPicture).dispose();
            }
         }
         isAvatar = true;
         mUserPicture = new AvatarProfilePictureButton(avatarString,mImageSize,true);
         this.mSilhouette.visible = false;
         this.mSilhouetteShouldBeHidden = true;
         mUserPicture.visible = true;
         if(mUserPicture)
         {
            addChild(mUserPicture);
         }
         AvatarProfilePictureButton(mUserPicture).playIdleAnimations();
      }
      
      override protected function onAddedToStage(e:Event) : void
      {
         if(mUserPicture)
         {
            AvatarProfilePictureButton(mUserPicture).playIdleAnimations();
         }
      }
      
      override protected function onRemovedFromStage(e:Event) : void
      {
         if(mUserPicture)
         {
            AvatarProfilePictureButton(mUserPicture).dispose();
         }
      }
      
      override protected function createFacebookProfile(dontAddChild:Boolean = false) : void
      {
         this.mSilhouetteShouldBeHidden = false;
         this.mSilhouette.visible = true;
         if(mUserPicture)
         {
            mUserPicture.visible = false;
         }
      }
   }
}
