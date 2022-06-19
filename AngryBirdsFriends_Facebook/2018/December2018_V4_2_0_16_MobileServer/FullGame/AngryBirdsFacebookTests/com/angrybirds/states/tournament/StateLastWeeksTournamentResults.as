package com.angrybirds.states.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.TournamentResultsVO;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsdatacache.CachedFriendDataVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.states.StateBaseLevel;
   import com.angrybirds.states.StateCredits;
   import com.angrybirds.tournament.TournamentAvatar;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.utils.FriendsUtil;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class StateLastWeeksTournamentResults extends StateBaseLevel implements IWalletContainer
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var mResults:TournamentResultsVO;
      
      private var mBronzeAvatar:TournamentAvatar;
      
      private var mSilverAvatar:TournamentAvatar;
      
      private var mGoldAvatar:TournamentAvatar;
      
      private var mWallet:Wallet;
      
      public function StateLastWeeksTournamentResults(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "StateLastWeeksTournamentResults")
      {
         super(levelManager,initState,name,localizationManager);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         this.injectData();
         this.initWallet();
      }
      
      override public function deActivate() : void
      {
         if(this.mBronzeAvatar)
         {
            this.mBronzeAvatar.dispose();
         }
         if(this.mSilverAvatar)
         {
            this.mSilverAvatar.dispose();
         }
         if(this.mGoldAvatar)
         {
            this.mGoldAvatar.dispose();
         }
         this.removeWallet(this.mWallet);
      }
      
      public function injectData() : void
      {
         var ob:Object = null;
         var listItemVO:FriendListItemVO = null;
         var cachedFriend:CachedFriendDataVO = null;
         this.mResults = new TournamentResultsVO();
         this.mResults.first = this.getPlayerByRank(1);
         this.mResults.second = this.getPlayerByRank(2);
         this.mResults.third = this.getPlayerByRank(3);
         var prizeCounts:Array = TournamentModel.instance.prizeCountPreviousTournament;
         mUIView.setText(prizeCounts[0],"firstPlaceText");
         mUIView.setText(prizeCounts[1],"secondPlaceText");
         mUIView.setText(prizeCounts[2],"thirdPlaceText");
         this.mResults.bronzeTrophies = TournamentModel.instance.bronzeTrophies;
         this.mResults.silverTrophies = TournamentModel.instance.silverTrophies;
         this.mResults.goldTrophies = TournamentModel.instance.goldTrophies;
         var allLastWeeksPlayers:Array = [];
         for each(ob in TournamentModel.instance.previousTournament.players)
         {
            listItemVO = UserTournamentScoreVO.fromServerObject(ob);
            cachedFriend = FriendsDataCache.getFriendData(ob.uid);
            if(cachedFriend)
            {
               listItemVO.userName = cachedFriend.name;
            }
            allLastWeeksPlayers.push(listItemVO);
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT,allLastWeeksPlayers);
         this.setTrophies(this.mResults);
         this.applyAvatars();
         this.updateInfoText();
      }
      
      protected function updateInfoText() : void
      {
         mUIView.getItemByName("Banner_Info").setVisibility(false);
         mUIView.getItemByName("Textfield_Banner_Info").setVisibility(false);
      }
      
      private function getPlayerByRank(rank:int) : UserTournamentScoreVO
      {
         var playerObject:Object = null;
         var cachedFriend:CachedFriendDataVO = null;
         if(TournamentModel.instance.previousTournament)
         {
            if(TournamentModel.instance.previousTournament.players)
            {
               if(rank <= TournamentModel.instance.previousTournament.players.length)
               {
                  playerObject = TournamentModel.instance.previousTournament.players[rank - 1];
                  if(playerObject)
                  {
                     cachedFriend = FriendsDataCache.getFriendData(playerObject.uid);
                     if(cachedFriend)
                     {
                        playerObject.n = cachedFriend.name;
                     }
                     return UserTournamentScoreVO.fromServerObject(playerObject);
                  }
               }
            }
         }
         return null;
      }
      
      private function setTrophies(results:TournamentResultsVO) : void
      {
         mUIView.setText("" + results.bronzeTrophies,"BronzeTrophiesTextfield");
         mUIView.setText("" + results.silverTrophies,"SilverTrophiesTextfield");
         mUIView.setText("" + results.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function applyAvatars() : void
      {
         if(this.mResults == null)
         {
            return;
         }
         var bronzeHolder:MovieClip = mUIView.getItemByName("BronzeAvatarHolder").mClip;
         var bronzeTrophy:MovieClip = mUIView.getItemByName("BronzeTrophy").mClip;
         if(this.mResults.third)
         {
            this.mBronzeAvatar = new TournamentAvatar(bronzeHolder,this.mResults.third);
            this.setTextInCustomFont("TextField_Podium3",this.mResults.third.userName);
            bronzeHolder.visible = true;
            bronzeTrophy.visible = true;
         }
         else
         {
            bronzeHolder.visible = false;
            bronzeTrophy.visible = false;
         }
         var silverHolder:MovieClip = mUIView.getItemByName("SilverAvatarHolder").mClip;
         var silverTrophy:MovieClip = mUIView.getItemByName("SilverTrophy").mClip;
         if(this.mResults.second)
         {
            this.mSilverAvatar = new TournamentAvatar(silverHolder,this.mResults.second);
            this.setTextInCustomFont("TextField_Podium2",this.mResults.second.userName);
            silverHolder.visible = true;
            silverTrophy.visible = true;
         }
         else
         {
            silverHolder.visible = false;
            silverTrophy.visible = false;
         }
         var goldHolder:MovieClip = mUIView.getItemByName("GoldAvatarHolder").mClip;
         var goldTrophy:MovieClip = mUIView.getItemByName("GoldTrophy").mClip;
         if(this.mResults.first)
         {
            this.mGoldAvatar = new TournamentAvatar(goldHolder,this.mResults.first);
            this.setTextInCustomFont("TextField_Podium1",this.mResults.first.userName);
            goldHolder.visible = true;
            goldTrophy.visible = true;
         }
         else
         {
            goldHolder.visible = false;
            goldTrophy.visible = false;
         }
      }
      
      protected function setTextInCustomFont(tfName:String, text:String) : void
      {
         var obj:Object = mUIView.getItemByName(tfName);
         if(obj)
         {
            FriendsUtil.setTextInCorrectFont((obj as UITextFieldRovio).mTextField,text);
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               setNextState(StateTournamentLevelSelection.STATE_NAME);
               break;
            case "CURRENT_TOURNAMENT":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(StateTournamentLevelSelection.STATE_NAME);
               break;
            case "showCredits":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(StateCredits.STATE_NAME);
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
      }
      
      private function initWallet() : void
      {
         this.addWallet(new Wallet(this,true,false));
         this.mWallet.walletClip.scaleY = 1.3;
         this.mWallet.walletClip.scaleX = 1.3;
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
      }
      
      public function get walletContainer() : Sprite
      {
         return mUIView.getItemByName("walletContainer").mClip;
      }
      
      public function removeWallet(wallet:Wallet) : void
      {
         wallet.dispose();
         wallet = null;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
   }
}
