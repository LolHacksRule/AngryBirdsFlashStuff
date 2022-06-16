package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.friendsbar.ui.profile.BirdBotProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.league.LeagueModel;
   import com.rovio.assets.AssetCache;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.utils.Timer;
   
   public class BasePlate extends Sprite
   {
      
      public static const MAX_NAME_WIDTH:int = 70;
       
      
      protected var mData:FriendListItemVO;
      
      protected var mPhoto:ProfilePicture;
      
      private var mRefreshPhoto:Boolean;
      
      protected var mMiniGiftButton:MiniGiftButton;
      
      protected var mBirdbotHelpButton:BirdBotHelpButton;
      
      protected var mABFont:Font;
      
      private var mOriginalFontName:String;
      
      protected var mLeagueIcon:MovieClip;
      
      protected var mStarPlayer:MovieClip;
      
      private var mGiftClickedTimer:Timer;
      
      public function BasePlate()
      {
         this.mABFont = new AngryBirdsFont();
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
         tabChildren = false;
         this.mRefreshPhoto = true;
      }
      
      public function set data(value:FriendListItemVO) : void
      {
         if(this.mData)
         {
            this.mRefreshPhoto = this.mData.userId != value.userId || this.mData.userName != value.userName || this.mData.profileImageURL != value.profileImageURL;
         }
         else
         {
            this.mRefreshPhoto = true;
         }
         this.mData = value;
         this.update();
      }
      
      public function get data() : FriendListItemVO
      {
         return this.mData;
      }
      
      public function getDataObject() : Object
      {
         return this.mData;
      }
      
      public function update() : void
      {
      }
      
      protected function get isBirdBot() : Boolean
      {
         return BirdBotProfilePicture.isBot(this.data.userId);
      }
      
      protected function updateGiftPlate() : void
      {
         var initSuccesful:Boolean = false;
         if(this.mMiniGiftButton == null)
         {
            initSuccesful = this.initGiftPlate();
            if(!initSuccesful)
            {
               return;
            }
         }
         if(this.isMe)
         {
            if(this.contains(this.mMiniGiftButton.mAssetHolder))
            {
               removeChild(this.mMiniGiftButton.mAssetHolder);
               this.mMiniGiftButton = null;
               return;
            }
         }
         if(this is IGiftingPlate)
         {
            IGiftingPlate(this).setCanSendGift(ExceptionUserIDsManager.instance.canSendGiftRequestTo(this.data.userId),false);
         }
         setChildIndex(this.mMiniGiftButton.mAssetHolder,numChildren - 1);
         this.mMiniGiftButton.miniGiftButton.addEventListener(MouseEvent.CLICK,this.onGiftClick,false,0,true);
      }
      
      protected function updateBirdbotButton() : void
      {
         var initSuccesful:Boolean = false;
         if(this.mBirdbotHelpButton == null)
         {
            initSuccesful = this.initBirdbotHelpButton();
            if(!initSuccesful)
            {
               return;
            }
         }
         if(this.isMe || !this.isBirdBot)
         {
            if(this.contains(this.mBirdbotHelpButton.mAssetHolder))
            {
               removeChild(this.mBirdbotHelpButton.mAssetHolder);
               this.mBirdbotHelpButton = null;
               return;
            }
         }
         setChildIndex(this.mBirdbotHelpButton.mAssetHolder,numChildren - 1);
      }
      
      protected function initBirdbotHelpButton() : Boolean
      {
         if(!this.isMe && (this.isBirdBot && this.data.profileImageURL && this.data.profileImageURL.length == 0))
         {
            this.mBirdbotHelpButton = new BirdBotHelpButton();
            addChild(this.mBirdbotHelpButton.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function initGiftPlate() : Boolean
      {
         if(!this.isMe)
         {
            this.mMiniGiftButton = new MiniGiftButton();
            addChild(this.mMiniGiftButton.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function updateLeagueIcon() : void
      {
         if(this.mLeagueIcon)
         {
            this.mLeagueIcon.visible = false;
            setChildIndex(this.mLeagueIcon,numChildren - 1);
         }
         if(this.mStarPlayer)
         {
            this.mStarPlayer.visible = false;
            setChildIndex(this.mStarPlayer,numChildren - 1);
         }
      }
      
      private function onGiftClick(e:MouseEvent) : void
      {
         if(!this.mGiftClickedTimer)
         {
            this.mGiftClickedTimer = new Timer(2000,1);
            this.mMiniGiftButton.miniGiftButton.removeEventListener(MouseEvent.CLICK,this.onGiftClick);
            dispatchEvent(new FriendsBarEvent(FriendsBarEvent.SEND_GIFT_TO_USER_CLICKED,this.data,true));
            this.mGiftClickedTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onGiftClickedTimer);
            this.mGiftClickedTimer.start();
         }
      }
      
      private function onGiftClickedTimer(e:TimerEvent) : void
      {
         this.mGiftClickedTimer.stop();
         this.mGiftClickedTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onGiftClickedTimer);
         this.mGiftClickedTimer = null;
         this.mMiniGiftButton.miniGiftButton.addEventListener(MouseEvent.CLICK,this.onGiftClick,false,0,true);
      }
      
      protected function get isMe() : Boolean
      {
         return this.data.userId == (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID;
      }
      
      protected function updatePhoto() : void
      {
         if(!this.mRefreshPhoto)
         {
            return;
         }
         if(this.mPhoto && this.mPhoto.parent == this)
         {
            removeChild(this.mPhoto);
            this.mPhoto = null;
         }
         this.createNewPhoto();
         addChild(this.mPhoto);
      }
      
      protected function createNewPhoto() : void
      {
         this.mPhoto = new ProfilePicture(this.data.userId,this.data.avatarString,false,null,this.data.profileImageURL);
         this.mPhoto.x = 5;
         this.mPhoto.y = 5;
      }
      
      protected function addLeagueIcon() : void
      {
         if(LeagueModel.instance.active)
         {
            addChild(this.mLeagueIcon = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.MiniLeagueIcon")());
            addChild(this.mStarPlayer = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.MiniStarPlayer")());
         }
      }
   }
}
