package com.angrybirds.friendsbar.ui.profile
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class CroppedProfilePicture extends ProfilePicture
   {
      
      private static const VERSUS_DIMENSION:int = 50;
       
      
      private var mCroppedFacebookPictureHolder:MovieClip;
      
      public function CroppedProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null, useOnlyFBProfilePic:Boolean = false, botImageUrl:String = null)
      {
         this.mCroppedFacebookPictureHolder = new MovieClip();
         addChild(this.mCroppedFacebookPictureHolder);
         super(userId,avatarString,useHttps,imageSize,!!botImageUrl ? botImageUrl : "",useOnlyFBProfilePic);
      }
      
      override protected function createAvatar(avatarString:String) : void
      {
         super.createAvatar(avatarString);
         if(avatarString == LeagueProfilePicture.PROFILE_PICTURE_NAMES[LeagueProfilePicture.DEFAULT_PROFILE_PICTURE_INDEX])
         {
            mFlipUserPicture.visible = true;
         }
         this.changeCroppedPicture(mFlipUserPicture);
         this.updatePictureScale(mUserPicture,VERSUS_DIMENSION);
         this.scaleFBPicture(mFlipUserPicture as FacebookProfilePicture);
      }
      
      override protected function createFacebookProfile(dontAddChild:Boolean = false) : void
      {
         super.createFacebookProfile(true);
         this.changeCroppedPicture(mUserPicture);
         this.scaleFBPicture(mUserPicture as FacebookProfilePicture);
      }
      
      private function changeCroppedPicture(picture:Sprite) : void
      {
         while(this.mCroppedFacebookPictureHolder.numChildren > 0)
         {
            this.mCroppedFacebookPictureHolder.removeChildAt(0);
         }
         this.mCroppedFacebookPictureHolder.scrollRect = new Rectangle(0,0,VERSUS_DIMENSION,VERSUS_DIMENSION);
         this.mCroppedFacebookPictureHolder.addChild(picture);
      }
      
      private function scaleFBPicture(picture:FacebookProfilePicture) : void
      {
         if(picture.width > 0 && picture.height > 0)
         {
            this.updatePictureScale(picture,VERSUS_DIMENSION);
         }
         else
         {
            picture.addEventListener(Event.COMPLETE,this.onFBPictureReady);
         }
      }
      
      private function onFBPictureReady(e:Event) : void
      {
         var targetPicture:FacebookProfilePicture = e.currentTarget as FacebookProfilePicture;
         if(targetPicture)
         {
            targetPicture.removeEventListener(Event.COMPLETE,this.onFBPictureReady);
         }
         this.updatePictureScale(targetPicture,VERSUS_DIMENSION);
      }
      
      private function updatePictureScale(picture:Sprite, dimension:Number) : void
      {
         var scale:Number = NaN;
         var realWidth:int = picture.width;
         var realHeight:int = picture.height;
         if(picture is AvatarProfilePicture)
         {
            dimension *= 1.4;
            picture.x = -5;
            picture.y = -5;
            scale = dimension / realHeight;
            picture.scaleX = scale;
            picture.scaleY = scale;
         }
         if(picture is FacebookProfilePicture)
         {
            realWidth = (picture as FacebookProfilePicture).bitmapWidth;
            realHeight = (picture as FacebookProfilePicture).bitmapHeight;
            if(realWidth < realHeight)
            {
               scale = dimension / realWidth;
               picture.scaleX = scale;
               picture.scaleY = scale;
            }
            else
            {
               scale = dimension / realHeight;
               picture.scaleX = scale;
               picture.scaleY = scale;
               picture.x = -(picture.width - dimension) / 2;
            }
         }
      }
      
      public function getFBProfilePicture() : MovieClip
      {
         return this.mCroppedFacebookPictureHolder;
      }
   }
}
