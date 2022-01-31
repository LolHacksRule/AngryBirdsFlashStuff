package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.data.ChallengeVO;
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentChallengePlate extends BasePlate implements IGiftingPlate
   {
       
      
      private var mPlate:MovieClip;
      
      public function TournamentChallengePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.mPlate = new AssetCache.getAssetFromCache("com.angrybirds.friendsbar.TournamentChallengePlateAsset")());
         this.mPlate.tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!this.challengeVO)
         {
            return;
         }
         updatePhoto();
         FriendsUtil.setTextInCorrectFont(this.mPlate.txtName,this.challengeVO.userName || "");
         this.mPlate.btnChallenge.visible = !this.challengeVO.challenged;
         this.mPlate.challengeSent.visible = this.challengeVO.challenged;
         updateGiftPlate();
         this.mPlate.btnChallenge.addEventListener(MouseEvent.CLICK,this.onChallengeClick,false,0,true);
      }
      
      private function onChallengeClick(e:MouseEvent) : void
      {
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.SEND_CHALLENGE_TO_USER_CLICKED,this.data,true));
         ExceptionUserIDsManager.instance.addChallengeRequestToUser(this.challengeVO.userId);
         this.challengeVO.challenged = true;
         this.mPlate.btnChallenge.visible = !this.challengeVO.challenged;
         this.mPlate.challengeSent.visible = this.challengeVO.challenged;
      }
      
      public function setCanSendGift(canSend:Boolean, playTransition:Boolean) : void
      {
         mMiniGiftButton.setCanSendGift(canSend,playTransition);
      }
      
      public function get challengeVO() : ChallengeVO
      {
         return data as ChallengeVO;
      }
   }
}
