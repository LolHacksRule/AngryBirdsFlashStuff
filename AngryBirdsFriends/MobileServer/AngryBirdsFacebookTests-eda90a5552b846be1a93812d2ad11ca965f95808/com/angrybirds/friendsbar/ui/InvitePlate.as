package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.data.InviteVO;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class InvitePlate extends BasePlate
   {
       
      
      private var mPlate:MovieClip;
      
      private var mMiniInviteButton:MiniPlusButton;
      
      private var mInviteButtonPauseTimer:Timer;
      
      public function InvitePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.mPlate = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.InvitePlateAsset")());
         this.mPlate.txtName.mouseEnabled = false;
         this.mInviteButtonPauseTimer = null;
         tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         updatePhoto();
         FriendsUtil.setTextInCorrectFont(this.mPlate.txtName,data.userName || "");
         if(this.mInviteButtonPauseTimer)
         {
            this.onInviteButtonPauseTimer(null);
         }
         else
         {
            this.mPlate.addEventListener(MouseEvent.CLICK,this.onInviteClick,false,0,true);
            if(!this.mMiniInviteButton)
            {
               this.mMiniInviteButton = new MiniPlusButton();
               addChild(this.mMiniInviteButton.mAssetHolder);
               this.mMiniInviteButton.miniPlusButton.addEventListener(MouseEvent.CLICK,this.onInviteClick,false,0,true);
            }
            this.mMiniInviteButton.miniPlusButton.visible = true;
         }
         this.updateMiniInviteButton();
      }
      
      override protected function createNewPhoto() : void
      {
         mPhoto = new ProfilePicture(data.userId,"",true,FacebookProfilePicture.SQUARE,data.profileImageURL);
         mPhoto.x = 5;
         mPhoto.y = 5;
      }
      
      private function onInviteClick(e:MouseEvent) : void
      {
         if(!this.mInviteButtonPauseTimer)
         {
            this.mPlate.removeEventListener(MouseEvent.CLICK,this.onInviteClick);
            this.mMiniInviteButton.miniPlusButton.removeEventListener(MouseEvent.CLICK,this.onInviteClick);
            this.mInviteButtonPauseTimer = new Timer(1000);
            this.mInviteButtonPauseTimer.addEventListener(TimerEvent.TIMER,this.onInviteButtonPauseTimer);
            this.mInviteButtonPauseTimer.start();
            dispatchEvent(new FriendsBarEvent(FriendsBarEvent.INVITE_FRIENDS_CLICKED,this.inviteVO,true));
         }
      }
      
      private function onInviteButtonPauseTimer(e:TimerEvent) : void
      {
         if(this.mInviteButtonPauseTimer)
         {
            this.mInviteButtonPauseTimer.stop();
            this.mInviteButtonPauseTimer.removeEventListener(TimerEvent.TIMER,this.onInviteButtonPauseTimer);
            this.mInviteButtonPauseTimer = null;
            this.mPlate.addEventListener(MouseEvent.CLICK,this.onInviteClick,false,0,true);
            this.mMiniInviteButton.miniPlusButton.addEventListener(MouseEvent.CLICK,this.onInviteClick);
         }
      }
      
      public function get inviteVO() : InviteVO
      {
         return data as InviteVO;
      }
      
      private function updateMiniInviteButton() : void
      {
         if(this.mMiniInviteButton)
         {
            setChildIndex(this.mMiniInviteButton.mAssetHolder,numChildren - 1);
         }
      }
   }
}
