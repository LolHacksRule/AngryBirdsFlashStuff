package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.data.LeagueLevelScoreVO;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.LeagueProfilePicture;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.league.LeagueInfoPopup;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.AddCommasToAmount;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class LeagueLevelScorePlate extends BasePlate
   {
      
      private static var sCachedLeagueProfileImages:Object = {};
       
      
      private var mPlate:MovieClip;
      
      public function LeagueLevelScorePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.mPlate = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.LeagueScorePlateAsset")());
         this.mPlate.mcCrown.stop();
         this.addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         if(this.isMe)
         {
            this.mPlate.gotoAndStop(2);
            FriendsUtil.setTextInCorrectFont(this.mPlate.txtName,this.leagueLevelScoreVO.userName || "",MAX_NAME_WIDTH);
            this.addEventListener(MouseEvent.CLICK,this.onMouseClicked);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.onMouseClicked);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.leagueLevelScoreVO && this.leagueLevelScoreVO.isFillupPlayer)
            {
               this.mPlate.gotoAndStop(3);
            }
            else
            {
               this.mPlate.gotoAndStop(1);
               FriendsUtil.setTextInCorrectFont(this.mPlate.txtName,this.leagueLevelScoreVO.userName || "",MAX_NAME_WIDTH);
            }
         }
         this.mPlate.mcCrown.visible = false;
         this.mPlate.txtRank.text = this.leagueLevelScoreVO.rank.toString();
         this.mPlate.txtRank.visible = this.mPlate.txtRank.text != "0";
         if(this.leagueLevelScoreVO.isFillupPlayer)
         {
            if(mPhoto && mPhoto.parent == this)
            {
               removeChild(mPhoto);
               mPhoto = null;
            }
         }
         else
         {
            this.updatePhoto();
            if(this.mPlate.txtScore)
            {
               this.mPlate.txtScore.text = AddCommasToAmount.addCommasToAmount(this.leagueLevelScoreVO.levelScore) || "0";
            }
         }
         this.mPlate.txtCoins.visible = false;
         this.mPlate.txtCoins.visible = false;
         if(this.mPlate.txtLeagueGain)
         {
            this.mPlate.txtLeagueGain.visible = false;
            this.mPlate.mcLeagueGainIcon.visible = false;
            this.mPlate.mcLeagueGainBGGreen.visible = false;
            this.mPlate.mcLeagueGainBGRed.visible = false;
         }
         this.mPlate.CoinsBG.visible = false;
         this.mPlate.mcCoin.visible = false;
         if(this.mPlate.mcLeagueMoveUp)
         {
            this.mPlate.mcLeagueMoveUp.visible = false;
         }
         if(this.mPlate.mcLeagueMoveDown)
         {
            this.mPlate.mcLeagueMoveDown.visible = false;
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!mStarPlayer)
         {
            return;
         }
         if(LeagueModel.instance.active)
         {
            if(this.leagueLevelScoreVO.leagueStars > 0)
            {
               mStarPlayer.visible = true;
               mStarPlayer.txtRakning.text = this.leagueLevelScoreVO.leagueStars.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.leagueLevelScoreVO.isMe;
      }
      
      private function get leagueLevelScoreVO() : LeagueLevelScoreVO
      {
         return data as LeagueLevelScoreVO;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(mStarPlayer = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function onMouseClicked(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         AngryBirdsBase.singleton.popupManager.openPopup(new LeagueInfoPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var leagueProfilePicture:String = null;
         leagueProfilePicture = getDataObject().profilePicture;
         var leagueProfileImageID:String = data.userId + "_" + leagueProfilePicture;
         if(mPhoto && mPhoto.parent == this && mPhoto == sCachedLeagueProfileImages[leagueProfileImageID])
         {
            return;
         }
         if(mPhoto && mPhoto.parent == this)
         {
            removeChild(mPhoto);
            mPhoto = null;
         }
         if(sCachedLeagueProfileImages[leagueProfileImageID])
         {
            addChild(mPhoto = sCachedLeagueProfileImages[leagueProfileImageID]);
         }
         else
         {
            mPhoto = new LeagueProfilePicture(data.userId,getDataObject().profilePicture,data.avatarString,false,FacebookProfilePicture.SQUARE);
            mPhoto.x = 5;
            mPhoto.y = 5;
            sCachedLeagueProfileImages[leagueProfileImageID] = mPhoto;
            addChild(mPhoto);
         }
      }
   }
}
