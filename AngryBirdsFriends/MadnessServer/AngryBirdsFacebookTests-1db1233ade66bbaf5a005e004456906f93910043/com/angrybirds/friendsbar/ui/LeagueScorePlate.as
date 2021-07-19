package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.data.LeagueScoreVO;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.LeagueProfilePicture;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.league.LeagueInfoPopup;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.tournamentEvents.coinBonanza.CoinBonanzaManager;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.AddCommasToAmount;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class LeagueScorePlate extends BasePlate
   {
      
      private static var sCachedLeagueProfileImages:Object = {};
       
      
      private var mPlate:MovieClip;
      
      private var mPlateIndexMe:int;
      
      private var mPlateIndexMeTop:int;
      
      private var mPlateIndexNormal:int;
      
      private var mPlateIndexTop:int;
      
      private var mPlateIndexWaiting:int;
      
      public function LeagueScorePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.mPlate = new AssetCache.getAssetFromCache("LeagueScorePlate")();
         this.brandThePlate();
         addChild(this.mPlate);
         this.mPlate.mcCrown.stop();
         this.addLeagueIcon();
      }
      
      override public function brandThePlate() : void
      {
         this.mPlateIndexMe = 2;
         this.mPlateIndexMeTop = 2;
         this.mPlateIndexNormal = 1;
         this.mPlateIndexTop = 1;
         this.mPlateIndexWaiting = 3;
         if(TournamentEventManager.instance.getActivatedEventManagerID() == CoinBonanzaManager.EVENT_ID)
         {
            this.mPlateIndexMeTop = 5;
            this.mPlateIndexTop = 4;
         }
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         if(this.isMe)
         {
            if(this.leagueScoreVO.rank <= 3)
            {
               this.mPlate.gotoAndStop(this.mPlateIndexMeTop);
            }
            else
            {
               this.mPlate.gotoAndStop(this.mPlateIndexMe);
            }
            this.addEventListener(MouseEvent.CLICK,this.onMouseClickedOwnPlate);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
            this.tabEnabled = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.onMouseClickedOwnPlate);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.leagueScoreVO.isFillupPlayer)
            {
               this.mPlate.gotoAndStop(this.mPlateIndexWaiting);
            }
            else if(this.leagueScoreVO.rank <= 3)
            {
               this.mPlate.gotoAndStop(this.mPlateIndexTop);
            }
            else
            {
               this.mPlate.gotoAndStop(this.mPlateIndexNormal);
            }
         }
         this.mPlate.mcCrown.visible = false;
         this.mPlate.txtRank.text = this.leagueScoreVO.rank.toString();
         this.mPlate.txtRank.visible = this.mPlate.txtRank.text != "0";
         if(this.leagueScoreVO.isFillupPlayer)
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
            FriendsUtil.setTextInCorrectFont(this.mPlate.txtName,this.leagueScoreVO.userName || "",MAX_NAME_WIDTH);
            this.mPlate.txtScore.text = AddCommasToAmount.addCommasToAmount(this.leagueScoreVO.totalScore) || "0";
         }
         this.mPlate.txtCoins.text = this.leagueScoreVO.coins.toString();
         this.mPlate.txtCoins.visible = this.leagueScoreVO.coins > 0;
         if(this.mPlate.txtLeagueGain)
         {
            this.mPlate.txtLeagueGain.text = this.leagueScoreVO.leagueRankCount > 0 ? "+" + this.leagueScoreVO.leagueRankCount : this.leagueScoreVO.leagueRankCount.toString();
            this.mPlate.txtLeagueGain.visible = this.leagueScoreVO.leagueRankCount != 0;
            this.mPlate.mcLeagueGainIcon.visible = this.leagueScoreVO.leagueRankCount != 0;
            this.mPlate.mcLeagueGainBGGreen.visible = this.leagueScoreVO.leagueRankCount > 0;
            this.mPlate.mcLeagueGainBGRed.visible = this.leagueScoreVO.leagueRankCount < 0;
         }
         this.mPlate.CoinsBG.visible = this.leagueScoreVO.coins > 0;
         this.mPlate.mcCoin.visible = this.leagueScoreVO.coins > 0;
         if(!this.leagueScoreVO.isFillupPlayer)
         {
            this.mPlate.mcLeagueMoveUp.visible = this.leagueScoreVO.promotion == "u";
            this.mPlate.mcLeagueMoveDown.visible = this.leagueScoreVO.promotion == "d";
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
            if(this.leagueScoreVO.starPlayerCount > 0)
            {
               mStarPlayer.visible = true;
               mStarPlayer.txtRakning.text = this.leagueScoreVO.starPlayerCount.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.leagueScoreVO.isMe;
      }
      
      private function get leagueScoreVO() : LeagueScoreVO
      {
         return data as LeagueScoreVO;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(mStarPlayer = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function onMouseClickedOwnPlate(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         AngryBirdsBase.singleton.popupManager.openPopup(new LeagueInfoPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var leagueProfilePicture:String = getDataObject().profilePicture;
         var lsvo:LeagueScoreVO = LeagueScoreVO(data);
         var userId:String = !!lsvo.userId ? lsvo.userId : (!!lsvo.nickName ? lsvo.nickName : null);
         var leagueProfileImageID:String = userId + "_" + leagueProfilePicture;
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
