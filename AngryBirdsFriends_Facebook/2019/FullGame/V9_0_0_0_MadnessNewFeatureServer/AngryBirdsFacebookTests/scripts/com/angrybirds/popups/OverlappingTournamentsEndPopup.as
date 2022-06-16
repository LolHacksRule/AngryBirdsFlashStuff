package com.angrybirds.popups
{
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class OverlappingTournamentsEndPopup extends AbstractPopup
   {
      
      public static const ID:String = "OverlappingTournamentsEndPopup";
      
      private static const smWeekDayLabels:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
       
      
      private var mAutoClaimedRewards:Object;
      
      public function OverlappingTournamentsEndPopup(autoClaimedRewards:Object)
      {
         this.mAutoClaimedRewards = autoClaimedRewards;
         super(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,ViewXMLLibrary.mLibrary.Views.PopupView_OverlappingTournamentsEnd[0],ID);
      }
      
      override protected function init() : void
      {
         var autoClaimedReward:Object = null;
         var containerSet:UIContainerRovio = null;
         var date:Date = null;
         var coinRewards:int = 0;
         var i:int = 0;
         super.init();
         var setNumber:int = 0;
         for each(autoClaimedReward in this.mAutoClaimedRewards)
         {
            if(autoClaimedReward != null)
            {
               setNumber++;
               if(setNumber >= 3)
               {
                  setNumber = 3;
                  break;
               }
            }
         }
         if(setNumber == 0)
         {
            return;
         }
         var rewardIndex:int = 0;
         for each(autoClaimedReward in this.mAutoClaimedRewards)
         {
            containerSet = mContainer.getItemByName("Set" + setNumber + "_Reward" + rewardIndex) as UIContainerRovio;
            containerSet.setVisibility(true);
            date = new Date();
            date.time = autoClaimedReward.start;
            (containerSet.mClip.getChildByName("StartDayText") as TextField).text = smWeekDayLabels[date.getDay()];
            if(autoClaimedReward.leagueRankChange == undefined)
            {
               (containerSet.mClip.getChildByName("RewardLeaguePointsText") as TextField).text = "-";
            }
            else
            {
               (containerSet.mClip.getChildByName("RewardLeaguePointsText") as TextField).text = "" + autoClaimedReward.leagueRankChange;
            }
            coinRewards = 0;
            if(autoClaimedReward.coinsReward)
            {
               coinRewards = autoClaimedReward.coinsReward;
            }
            if(autoClaimedReward.leagueRewardsUpdate && autoClaimedReward.leagueRewardsUpdate.items && autoClaimedReward.leagueRewardsUpdate.itemsPrev)
            {
               for(i = 0; i < autoClaimedReward.leagueRewardsUpdate.items.length; i++)
               {
                  if(autoClaimedReward.leagueRewardsUpdate.items[i].i == "VirtualCurrency")
                  {
                     coinRewards += autoClaimedReward.leagueRewardsUpdate.items[i].q - autoClaimedReward.leagueRewardsUpdate.itemsPrev[i].q;
                  }
               }
            }
            if(autoClaimedReward.friendRewardsUpdate && autoClaimedReward.friendRewardsUpdate.items && autoClaimedReward.friendRewardsUpdate.itemsPrev)
            {
               coinRewards += autoClaimedReward.friendRewardsUpdate.items[0].q - autoClaimedReward.friendRewardsUpdate.itemsPrev[0].q;
            }
            (containerSet.mClip.getChildByName("RewardCoinsText") as TextField).text = "" + coinRewards;
            if(autoClaimedReward.tournamentRank == undefined)
            {
               (containerSet.mClip.getChildByName("PositionText") as TextField).text = "-";
               (containerSet.mClip.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
            }
            else
            {
               (containerSet.mClip.getChildByName("PositionText") as TextField).text = "" + autoClaimedReward.tournamentRank;
               if(autoClaimedReward.tournamentRank <= 10)
               {
                  (containerSet.mClip.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
               }
               else if(autoClaimedReward.tournamentRank <= 20)
               {
                  (containerSet.mClip.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
               }
               else
               {
                  (containerSet.mClip.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
            }
            rewardIndex++;
            if(rewardIndex >= setNumber)
            {
               break;
            }
         }
      }
   }
}
