package com.angrybirds.friendsbar.ui.profile
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class LeagueProfilePicture extends ProfilePicture
   {
      
      public static const PROFILE_PICTURE_NAMES:Array = ["IMG_1","IMG_2","IMG_3","IMG_4","IMG_5","IMG_6","IMG_7","IMG_8","FB_PHOTO"];
      
      public static const DEFAULT_PROFILE_PICTURE_INDEX:int = PROFILE_PICTURE_NAMES.length - 1;
       
      
      private var mLeaguePicture:String;
      
      private var mLeagueAvatarString:String;
      
      private var mLeagueImageSize:String;
      
      private var mfbCustomScale:int;
      
      public function LeagueProfilePicture(userId:String, leaguePicture:String, leagueAvatarString:String, useHttps:Boolean = false, fbImageSize:String = null, leagueImageSize:String = null, fbCustomScale:int = 0)
      {
         this.mLeaguePicture = leaguePicture;
         this.mLeagueAvatarString = leagueAvatarString;
         this.mLeagueImageSize = leagueImageSize = leagueImageSize || (fbImageSize = fbImageSize || FacebookProfilePicture.SQUARE);
         this.mfbCustomScale = fbCustomScale;
         super(userId,null,useHttps,fbImageSize);
      }
      
      private function getProfilePicture(index:int, imageSize:String) : Sprite
      {
         var profileImageReference:MovieClip = null;
         var croppedProfilePicture:CroppedProfilePicture = null;
         var fbImage:* = index == DEFAULT_PROFILE_PICTURE_INDEX;
         if(fbImage)
         {
            croppedProfilePicture = new CroppedProfilePicture(mUserId,null,false,imageSize,true);
            profileImageReference = croppedProfilePicture.getFBProfilePicture();
            profileImageReference.visible = true;
         }
         else
         {
            profileImageReference = new AssetCache.getAssetFromCache("LeagueProfileImage" + (index + 1))();
         }
         var scaleValue:Number = 1;
         if(fbImage)
         {
            switch(imageSize)
            {
               case FacebookProfilePicture.LARGE:
                  scaleValue = this.mfbCustomScale > 0 ? Number(this.mfbCustomScale) : Number(3);
                  break;
               case FacebookProfilePicture.NORMAL:
               case FacebookProfilePicture.SQUARE:
               case FacebookProfilePicture.SMALL:
                  scaleValue = this.mfbCustomScale > 0 ? Number(this.mfbCustomScale) : Number(1);
            }
         }
         else
         {
            switch(this.mLeagueImageSize)
            {
               case FacebookProfilePicture.LARGE:
                  scaleValue = 1.5;
                  break;
               case FacebookProfilePicture.NORMAL:
                  scaleValue = 1;
                  break;
               case FacebookProfilePicture.SQUARE:
               case FacebookProfilePicture.SMALL:
                  scaleValue = 0.5;
            }
         }
         profileImageReference.scaleX = scaleValue;
         profileImageReference.scaleY = scaleValue;
         return profileImageReference;
      }
      
      private function getProfilePictureIndex(imageName:String) : int
      {
         for(var i:int = 0; i < PROFILE_PICTURE_NAMES.length; i++)
         {
            if(PROFILE_PICTURE_NAMES[i] == imageName)
            {
               return i;
            }
         }
         return DEFAULT_PROFILE_PICTURE_INDEX;
      }
      
      private function createLeagueProfilePicture() : void
      {
         isAvatar = false;
         var index:int = this.getProfilePictureIndex(this.mLeaguePicture);
         mUserPicture = this.getProfilePicture(index,mImageSize);
         addChild(mUserPicture);
      }
      
      override protected function createAvatar(avatarString:String) : void
      {
         this.createLeagueProfilePicture();
      }
      
      override protected function createFacebookProfile(dontAddChild:Boolean = false) : void
      {
         this.createLeagueProfilePicture();
      }
   }
}
