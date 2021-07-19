package com.angrybirds.friendsbar.ui.profile
{
   import com.angrybirds.friendsbar.data.CustomAvatarCache;
   import com.angrybirds.friendsbar.ui.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ProfilePicture extends MovieClip
   {
      
      public static var sInstances:Array = [];
      
      private static var sUserAvatarString:String;
      
      public static const AVATAR_ENABLED:Boolean = true;
      
      private static var sCachedProfilePictures:Object = {};
      
      private static var sCachedBotProfilePictures:Object = {};
       
      
      protected var mUserPicture:Sprite;
      
      protected var mFlipUserPicture:Sprite;
      
      protected var mIsUser:Boolean;
      
      protected var mMouseCatcher:Sprite;
      
      protected var mUserId:String;
      
      protected var mImageURL:String;
      
      protected var mImageSize:String;
      
      protected var mIsAvatar:Boolean = false;
      
      private var mUseOnlyFBProfilePic:Boolean;
      
      public function ProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null, imageURL:String = "", useOnlyFBProfilePic:Boolean = false)
      {
         super();
         this.mUseOnlyFBProfilePic = useOnlyFBProfilePic;
         this.initProfile(userId,avatarString,imageSize,imageURL);
      }
      
      public static function updateCurrentUser(newAvatarString:String) : void
      {
         var profilePicture:ProfilePicture = null;
         var i:int = 0;
         sUserAvatarString = newAvatarString;
         if(newAvatarString != null)
         {
            for each(profilePicture in sInstances)
            {
               profilePicture.update(FriendItemRenderer.sUserId,newAvatarString);
            }
         }
      }
      
      protected function initProfile(userId:String, avatarString:String, imageSize:String = null, imageURL:String = "") : void
      {
         this.mImageSize = imageSize = imageSize || FacebookProfilePicture.SQUARE;
         this.mUserId = userId;
         this.mImageURL = imageURL;
         this.mIsUser = FriendItemRenderer.sUserId == userId;
         this.mMouseCatcher = new Sprite();
         this.mMouseCatcher.graphics.beginFill(0,0);
         this.mMouseCatcher.graphics.drawRect(0,0,50,50);
         this.mMouseCatcher.graphics.endFill();
         addChild(this.mMouseCatcher);
         this.createNewProfile(avatarString);
         if(this.mIsUser)
         {
            sInstances.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function onMouseOver(e:MouseEvent) : void
      {
         if(this.isAvatar)
         {
            this.mUserPicture.visible = false;
            this.mFlipUserPicture.visible = true;
         }
      }
      
      private function onMouseOut(e:MouseEvent) : void
      {
         if(this.isAvatar)
         {
            this.mUserPicture.visible = true;
            this.mFlipUserPicture.visible = false;
         }
      }
      
      public function get isAvatar() : Boolean
      {
         return this.mIsAvatar;
      }
      
      public function set isAvatar(value:Boolean) : void
      {
         this.mIsAvatar = value;
         if(this.isAvatar)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function onAddedToStage(e:Event) : void
      {
         if(sUserAvatarString != null)
         {
            this.createNewProfile(sUserAvatarString);
         }
      }
      
      protected function onRemovedFromStage(e:Event) : void
      {
      }
      
      public function get userPicture() : Sprite
      {
         return this.mUserPicture;
      }
      
      public function get isUser() : Boolean
      {
         return this.mIsUser;
      }
      
      protected function createNewProfile(avatarString:String) : void
      {
         if(this.mUserPicture)
         {
            if(this.mUserPicture.parent)
            {
               this.mUserPicture.parent.removeChild(this.mUserPicture);
            }
         }
         if(!this.mUseOnlyFBProfilePic && AVATAR_ENABLED)
         {
            if(avatarString == null || avatarString == "")
            {
               avatarString = CustomAvatarCache.getFromCache(this.mUserId);
            }
         }
         if(!(avatarString == "" || avatarString == null) && AVATAR_ENABLED)
         {
            this.createAvatar(avatarString);
         }
         else if(BirdBotProfilePicture.isBot(this.mUserId))
         {
            this.createBirdBotProfile();
         }
         else
         {
            this.createFacebookProfile();
         }
         if(this.mMouseCatcher)
         {
            setChildIndex(this.mMouseCatcher,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(avatarString:String) : void
      {
         this.isAvatar = true;
         this.mFlipUserPicture = this.fetchFacebookProfileFromCache();
         this.mUserPicture = new AvatarProfilePicture(avatarString,this.mImageSize);
         if(this.mFlipUserPicture)
         {
            addChild(this.mFlipUserPicture);
            this.mFlipUserPicture.visible = false;
         }
         this.mMouseCatcher.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.mMouseCatcher.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         if(this.mUserPicture)
         {
            addChild(this.mUserPicture);
            this.mUserPicture.visible = true;
         }
      }
      
      protected function createFacebookProfile(dontAddChild:Boolean = false) : void
      {
         this.isAvatar = false;
         this.mUserPicture = this.fetchFacebookProfileFromCache();
         if(this.mUserPicture && !dontAddChild)
         {
            addChild(this.mUserPicture);
         }
      }
      
      private function createBirdBotProfile() : void
      {
         if(!sCachedBotProfilePictures[this.mUserId + this.mImageURL])
         {
            sCachedBotProfilePictures[this.mUserId + this.mImageURL] = [];
         }
         if(sCachedBotProfilePictures[this.mUserId + this.mImageURL].length > 0)
         {
            this.mUserPicture = sCachedBotProfilePictures[this.mUserId + this.mImageURL].pop();
         }
         else
         {
            this.mUserPicture = new BirdBotProfilePicture(this.mUserId,this.mImageURL);
         }
         addChild(this.mUserPicture);
      }
      
      protected function fetchFacebookProfileFromCache() : FacebookProfilePicture
      {
         var facebookPicture:FacebookProfilePicture = null;
         if(!sCachedProfilePictures[this.mUserId + this.mImageSize])
         {
            sCachedProfilePictures[this.mUserId + this.mImageSize] = [];
         }
         if(sCachedProfilePictures[this.mUserId + this.mImageSize].length > 0)
         {
            facebookPicture = sCachedProfilePictures[this.mUserId + this.mImageSize].pop();
         }
         else
         {
            facebookPicture = new FacebookProfilePicture(this.mUserId,true,this.mImageSize,this.mImageURL);
         }
         return facebookPicture;
      }
      
      public function update(userId:String, newAvatarString:String) : void
      {
         this.createNewProfile(newAvatarString);
      }
      
      public function dispose() : void
      {
         if(this.mUserPicture && this.mUserPicture is BirdBotProfilePicture)
         {
            if(!sCachedBotProfilePictures[this.mUserId + this.mImageURL])
            {
               sCachedBotProfilePictures[this.mUserId + this.mImageURL] = [];
            }
            sCachedBotProfilePictures[this.mUserId + this.mImageURL].push(this.mUserPicture);
         }
         if(this.mUserPicture && this.mUserPicture is FacebookProfilePicture)
         {
            if(!sCachedProfilePictures[this.mUserId + this.mImageSize])
            {
               sCachedProfilePictures[this.mUserId + this.mImageSize] = [];
            }
            sCachedProfilePictures[this.mUserId + this.mImageSize].push(this.mUserPicture);
         }
         if(this.mUserPicture)
         {
            if(this.mUserPicture is AnimatedAvatarProfilePicture)
            {
               AnimatedAvatarProfilePicture(this.mUserPicture).dispose();
            }
            if(this.mUserPicture.parent == this)
            {
               removeChild(this.mUserPicture);
            }
            this.mUserPicture = null;
         }
         if(this.mFlipUserPicture)
         {
            if(this.mFlipUserPicture.parent == this)
            {
               removeChild(this.mFlipUserPicture);
            }
            this.mFlipUserPicture = null;
         }
         if(this.mMouseCatcher)
         {
            this.mMouseCatcher.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            this.mMouseCatcher.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      public function get profileImageURL() : String
      {
         return this.mImageURL;
      }
   }
}
