package com.angrybirds.popups.league
{
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.LeagueProfilePicture;
   import com.angrybirds.league.LeagueDefinition;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.LeagueType;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class LeagueInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueInfo";
      
      private static var smRecentlySelectedTab:String;
       
      
      private var mTabs:Array;
      
      private var mView:MovieClip;
      
      public function LeagueInfoPopup(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         this.mTabs = [];
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Popups.Popup_LeagueInfo[0],ID);
      }
      
      override protected function init() : void
      {
         var ld:LeagueDefinition = null;
         var nextIconMc:MovieClip = null;
         var nextLeagueName:* = null;
         var mc:MovieClip = null;
         var nextLeague:LeagueDefinition = null;
         var starMC:MovieClip = null;
         var starIcon:MovieClip = null;
         super.init();
         this.mView = mContainer.mClip;
         var tabLeagueInfo:SimpleTab = new SimpleTab(this.mView.Button_Tab_League_Info,"Container_TabContentLeagueInfo");
         var tabLeagueProfile:SimpleTab = new SimpleTab(this.mView.Button_Tab_League_Profile,"Container_TabContentLeagueProfile");
         var tabContainerLeagueInfo:UIContainerRovio = mContainer.getItemByName(tabLeagueInfo.name) as UIContainerRovio;
         var tabContainerLeagueProfile:UIContainerRovio = mContainer.getItemByName(tabLeagueProfile.name) as UIContainerRovio;
         tabLeagueInfo.addEventListener(MouseEvent.CLICK,this.onTabSelected);
         tabLeagueProfile.addEventListener(MouseEvent.CLICK,this.onTabSelected);
         this.mTabs.push(tabLeagueInfo);
         this.mTabs.push(tabLeagueProfile);
         this.mView.btnClose.addEventListener(MouseEvent.CLICK,this.onClose);
         this.mView.btnMoreInfo.addEventListener(MouseEvent.CLICK,this.onMoreInfoClicked);
         var currentLeague:LeagueDefinition = LeagueModel.instance.currentLeague();
         var currentLeagueStanding:Object = LeagueModel.instance.getPlayerCurrentLeagueStanding();
         var playerLeagueProfile:Object = LeagueModel.instance.getPlayerProfileForLeague();
         var currentLeagueRating:int = 0;
         var currentLeagueRatingMin:int = 0;
         var currentLeagueRatingMax:int = 1;
         var playerRankStarAmount:int = 0;
         var playerNextRankStarAmount:int = 0;
         for each(ld in LeagueType.sAllLeagues)
         {
            mc = tabContainerLeagueInfo.getItemByName("mcLeagueInfo" + ld.id.toUpperCase()).mClip;
            if(currentLeague)
            {
               mc.gotoAndStop(currentLeague.id == ld.id ? 2 : 1);
            }
            else
            {
               mc.gotoAndStop(1);
            }
            mc.txtName.text = ld.id;
            mc.txtRating.text = ld.minRating + "+";
            mc.txtReward.text = ld.reward;
         }
         mc = tabContainerLeagueProfile.getItemByName("IconLeagueEgg").mClip;
         nextIconMc = tabContainerLeagueProfile.getItemByName("NextLeagueIcon").mClip;
         nextLeagueName = "";
         if(currentLeague)
         {
            mc.gotoAndStop(currentLeague.id);
            (tabContainerLeagueProfile.getItemByName("TextField_LeagueName") as UITextFieldRovio).setText(currentLeague.name);
            nextLeague = LeagueType.getNextLeagueId(currentLeague.id);
            nextIconMc.gotoAndStop(nextLeague.id);
            currentLeagueRatingMin = currentLeague.minRating;
            currentLeagueRatingMax = nextLeague.minRating;
            if(currentLeague.name == LeagueType.getLastLeagueName())
            {
               nextLeagueName = LeagueType.STAR_LEAGUE_DESCRIPTION + "1";
               playerNextRankStarAmount = 1;
            }
            else
            {
               nextLeagueName = nextLeague.name;
            }
            if(playerNextRankStarAmount > 0)
            {
               starMC = mc.getChildByName("StarPromotionIcon") as MovieClip;
               if(starMC)
               {
                  starMC.visible = false;
               }
               if(currentLeagueStanding)
               {
                  if(currentLeagueStanding.s && currentLeagueStanding.s > 0)
                  {
                     playerRankStarAmount = currentLeagueStanding.s;
                     playerNextRankStarAmount = playerRankStarAmount + 1;
                     if(starMC)
                     {
                        starMC.visible = true;
                        (starMC.getChildByName("txtStarRating") as TextField).text = "" + playerRankStarAmount;
                     }
                  }
               }
               else if(playerLeagueProfile && playerLeagueProfile.lr - LeagueType.STAR_PLAYER_RATING_RANGE >= currentLeagueRatingMax)
               {
                  playerRankStarAmount = int((playerLeagueProfile.lr - currentLeagueRatingMax) / LeagueType.STAR_PLAYER_RATING_RANGE);
                  playerNextRankStarAmount = playerRankStarAmount + 1;
                  if(starMC)
                  {
                     starMC.visible = true;
                     (starMC.getChildByName("txtStarRating") as TextField).text = "" + playerRankStarAmount;
                  }
               }
               currentLeagueRatingMin += LeagueType.STAR_PLAYER_RATING_RANGE * playerRankStarAmount;
               currentLeagueRatingMax += LeagueType.STAR_PLAYER_RATING_RANGE * playerNextRankStarAmount;
               nextLeagueName = LeagueType.STAR_LEAGUE_DESCRIPTION + playerNextRankStarAmount;
               nextIconMc.gotoAndStop(LeagueType.STAR_LEAGUE_ID);
               starIcon = nextIconMc.getChildByName("StarPromotionIcon") as MovieClip;
               if(starIcon)
               {
                  starIcon.visible = true;
                  (starIcon.getChildByName("txtStarRating") as TextField).text = "" + playerNextRankStarAmount;
               }
            }
         }
         else
         {
            mc.gotoAndStop(1);
            nextIconMc.gotoAndStop(1);
         }
         (tabContainerLeagueProfile.getItemByName("TextField_NextLeague") as UITextFieldRovio).setText(nextLeagueName);
         var thePlayerHasLeagueScore:* = LeagueModel.instance.getThePlayerRank() > -1;
         tabContainerLeagueProfile.getItemByName("MC_NotInLeague").visible = !thePlayerHasLeagueScore;
         var selectedProfilePictureName:String = LeagueProfilePicture.PROFILE_PICTURE_NAMES[LeagueProfilePicture.DEFAULT_PROFILE_PICTURE_INDEX];
         if(playerLeagueProfile)
         {
            FriendsUtil.setTextInCorrectFont((tabContainerLeagueProfile.getItemByName("TextField_PlayerName") as UITextFieldRovio).mTextField,!!playerLeagueProfile.ni ? playerLeagueProfile.ni : (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName);
            if(playerLeagueProfile.i)
            {
               selectedProfilePictureName = playerLeagueProfile.i;
            }
            if(playerLeagueProfile.lr)
            {
               currentLeagueRating = playerLeagueProfile.lr;
            }
            (tabContainerLeagueProfile.getItemByName("TextField_LeagueRating") as UITextFieldRovio).setText("" + currentLeagueRating);
         }
         else
         {
            FriendsUtil.setTextInCorrectFont((tabContainerLeagueProfile.getItemByName("TextField_PlayerName") as UITextFieldRovio).mTextField,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName);
         }
         (tabContainerLeagueProfile.getItemByName("TextField_LeagueProgressValue_Start") as UITextFieldRovio).setText("" + currentLeagueRatingMin);
         (tabContainerLeagueProfile.getItemByName("TextField_LeagueProgressValue_Goal") as UITextFieldRovio).setText("" + currentLeagueRatingMax);
         var leagueProgressMC:MovieClip = (tabContainerLeagueProfile.getItemByName("LeagueProgress") as UIMovieClipRovio).mClip;
         var fullFillWidth:Number = leagueProgressMC.mcProgress.width;
         var barFillUpWidth:Number = (currentLeagueRating - currentLeagueRatingMin) / (currentLeagueRatingMax - currentLeagueRatingMin);
         var clipRect:Rectangle = new Rectangle(0,0,fullFillWidth * barFillUpWidth,tabContainerLeagueProfile.getItemByName("LeagueProgress").height);
         leagueProgressMC.mcProgress.scrollRect = clipRect;
         var avatarBase:MovieClip = tabContainerLeagueProfile.getItemByName("PlayerAvatarBase").mClip;
         avatarBase.removeChildren();
         var leagueProfilePicture:LeagueProfilePicture = new LeagueProfilePicture((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,selectedProfilePictureName,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).avatarString,false,FacebookProfilePicture.LARGE,FacebookProfilePicture.LARGE);
         avatarBase.addChild(leagueProfilePicture.userPicture);
         if(!smRecentlySelectedTab)
         {
            this.selectTab(tabLeagueInfo.name);
         }
         else
         {
            this.selectTab(smRecentlySelectedTab);
         }
      }
      
      private function onMoreInfoClicked(event:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new LeagueTutorialPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.OVERRIDE,null,id,this));
      }
      
      private function onClose(event:MouseEvent) : void
      {
         super.close();
      }
      
      protected function onTabSelected(event:Event) : void
      {
         var tabName:String = (event.target as SimpleTab).name;
         if(smRecentlySelectedTab != tabName)
         {
            SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
            this.selectTab(tabName);
         }
      }
      
      protected function selectTab(tabName:String) : void
      {
         var tab:SimpleTab = null;
         for each(tab in this.mTabs)
         {
            if(tab.name == tabName)
            {
               tab.select();
               smRecentlySelectedTab = tabName;
            }
            else
            {
               tab.unselect();
            }
            (mContainer.getItemByName(tab.name) as UIContainerRovio).setVisibility(tab.name == tabName);
         }
         this.mView.btnMoreInfo.visible = tabName == "Container_TabContentLeagueInfo";
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var leagueEditProfile:IPopup = null;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "SLINGSHOT_REWARD_1":
               AngryBirdsBase.singleton.popupManager.openPopup(new SlingshotRewardInfoPopup(SlingShotType.SLING_SHOT_BOUNCY.identifier,SlingshotRewardInfoPopup.TYPE_SLINGSHOT_INFO));
               break;
            case "SLINGSHOT_REWARD_2":
               AngryBirdsBase.singleton.popupManager.openPopup(new SlingshotRewardInfoPopup(SlingShotType.SLING_SHOT_DIAMOND.identifier,SlingshotRewardInfoPopup.TYPE_SLINGSHOT_INFO));
               break;
            case "EDIT_PROFILE":
               leagueEditProfile = new LeagueEditProfile(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(leagueEditProfile);
         }
      }
   }
}
