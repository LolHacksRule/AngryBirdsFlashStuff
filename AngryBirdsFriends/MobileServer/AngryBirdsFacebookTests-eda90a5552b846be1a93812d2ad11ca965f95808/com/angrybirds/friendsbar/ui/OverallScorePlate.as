package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.data.UserTotalScoreVO;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class OverallScorePlate extends BasePlate implements IGiftingPlate
   {
       
      
      private var mPlate:MovieClip;
      
      public function OverallScorePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.mPlate = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         this.mPlate.mcCrown.stop();
         addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.mPlate.gotoAndStop(!!isMe ? 2 : 1);
         updatePhoto();
         FriendsUtil.setTextInCorrectFont(this.mPlate.txtName,this.userTotalScoreVO.userName || "",MAX_NAME_WIDTH);
         this.mPlate.txtFeathers.text = this.userTotalScoreVO.featherCount.toString() || "0";
         this.mPlate.txtStars.text = this.userTotalScoreVO.starCount.toString() || "0";
         if(this.userTotalScoreVO.rank <= 3)
         {
            this.mPlate.mcCrown.visible = true;
            this.mPlate.txtRank.visible = false;
            this.mPlate.mcCrown.gotoAndStop(this.userTotalScoreVO.rank);
         }
         else
         {
            this.mPlate.mcCrown.visible = false;
            this.mPlate.txtRank.visible = true;
            FriendsUtil.setTextInCorrectFont(this.mPlate.txtRank,this.userTotalScoreVO.rank.toString() || "");
         }
         updateGiftPlate();
         updateLeagueIcon();
      }
      
      public function setCanSendGift(canSend:Boolean, playTransition:Boolean) : void
      {
         mMiniGiftButton.setCanSendGift(canSend,playTransition);
      }
      
      private function get userTotalScoreVO() : UserTotalScoreVO
      {
         return data as UserTotalScoreVO;
      }
   }
}
