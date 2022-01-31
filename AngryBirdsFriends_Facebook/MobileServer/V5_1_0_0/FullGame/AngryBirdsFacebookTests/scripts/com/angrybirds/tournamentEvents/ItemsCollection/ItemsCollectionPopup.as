package com.angrybirds.tournamentEvents.ItemsCollection
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.server.TournamentLoader;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class ItemsCollectionPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionPopup";
      
      private static const COLLECTION_IMAGE_NAME:String = "CollectionItemImage";
      
      private static const FEED_ANIMATION_NAME_1:String = "ItemsCollectionAnimationsCandyFeed1";
      
      private static const FEED_ANIMATION_NAME_2:String = "ItemsCollectionAnimationsCandyFeed2";
      
      private static const PIG_BURB_SOUNDS:Array = ["pig_singing","piglette_oink_story","WerepigTransformation"];
      
      private static const BOSS_FEEDING_SOUND_CHANNEL:String = "BossFeedingSoundChannel";
      
      private static const OTHER_PLAYERS_NAME_ANIMATION_MAX_TIME:int = 6000;
      
      private static const RANDOM_NAMES:Array = ["Ana","Felipe","Jere","Jijo","Joni","Juha","Mahmud","Maria","Markus","Michael","Peter","Toni","Toober","Rosia","Barbie","Oneida","Floria","Hsiu","Matt","Ruby","Marisela","Troy","Crystal","Marine","Malka","Raelene","Diane","Garrett","Jasmine","Carolyne","Marta","Rona","Cleta","Elwood","Nancy","Johana","Halina","Deloris","Cedrick","Mertie","Evelyne","Herman","Anastacia","Arielle","Lanie","Pearle","Marylou","Brandy","Giuseppe","Dwana","Janelle","Valentina","Song","Reyes","Terrance","Vita","Suzan","Emmitt","Sina","Delma","Clyde","Jenise","Kelsie","Kwiik","Mildred","Genie","Anneliese","Carole","Anika","Manuela","Donny","Belkis","Odelia","Cathy","Trula","Adina","Rene","Bee","Miles","Arden","Cecilia","Shauna","Coleen","Delisa","Kayce","Matti","Maija","Reino","Raija","Laci","Stephan","Britt","Mia","Frederica","Modesto","Quiana","Letisha","Latina","Lavina","Lorrine","Soila","Karyl","Elidia","Mike","Melisa","Ardelia","Lynnette","Shasta","Celesta","Annelle","Mindy","Magali","Bailey","Jung","Arnita","Valda","Eliseo","Kaitlyn","Lee","Raymond","Ivan","Armand","Mariano","Galen","Leroy","Coleman","Sol","Porter","Alonso","Zane","Morgan","Fernando","Clement","Jamison","Salvador","Winston","Alphonse","Rob","Riley","Randal","Vance","Ali","Jessie","Marcos","Odell","Leopoldo","Ward","Gil","Clarence","Clark","Joe","Jordan","Ellis","Stewart","Donovan","Michel","Florencio","Dynamite","Isiah","Carroll","Jed","Miguel","Irwin","Evan","Harrison","Andreas","Toney","Hugh","Craig","Chang","Chao","Bai","Ai","Yijun","Zheng","Jiang","Jie","Jiao-long","Li","Lim","Mei","Qiu","Shan","Shi","Qing","Wen","Xiang","Xiao-ping","Adio","Afija","Adesimbo","Efia","Eshe","Iverem","Izegbe","Tabia","Themba","Titilayo","Waseme","Emilia","Minna","Salla","Päivi","Erika","Kirsi","Sofia","Isabella","Camila","Valentina","Valeria","Mariana","Luciana","Daniela","Gabriela","Victoria","Martina","Lucia","Ximena","Sara","Samantha","Maria José","Emma","Catalina","Julieta","Santiago","Sebastián","Matías","Mateo","Nicolás","Alejandro","Diego","Samuel","Benjamín","Daniel","Joaquín","Lucas","Tomas","Gabriel","Martín","David","Emiliano","Jerónimo","Emmanuel","Agustín","Juan Pablo","Juan José","Andrés","Thiago","Leonardo","Maximiliano","Christopher","Juan Diego","Adrián","Pablo","Miguel Ángel","Rodrigo","Alexander","Ignacio","Emilio","Dylan","Bruno","Carlos","Vicente","Valentino","Santino","Julián","Juan Sebastián","Aarón","Lautaro","Axel","Ian","Christian","Javier","Manuel","Luciano","Francisco","Juan David","Iker","Facundo","Rafael","Alex","Franco","Antonio","Luis","Isaac","Máximo","Pedro","Ricardo","Sergio","Eduardo","Bautista","Miguel","Ana Paula","Mariangel","Amelia","Elizabeth","Aitana","Ariadna","María Camila","Irene","Silvana","Clara","Magdalena","Sophie","Josefa","Aarav","Advik","Chirag","Eshan","Lakshay","Neerav","Ojas","Vivaan","Bhavya","Hrishita","Jivika","Jiya","Nitya","Riya","Saanvi","Samaira","Sana","Zara","Yashvi"];
       
      
      protected var mTournamentEventManager:TournamentEventManager;
      
      private var mItemsCollectorManager:ItemsCollectionManager;
      
      private var mView:MovieClip;
      
      private var mTextfieldStatsTotalItems:TextField;
      
      private var mTextfieldStatsItemsLeft:TextField;
      
      private var mTextfieldStatsPowerupAmount:TextField;
      
      private var mTextfieldEventTimeLeft:TextField;
      
      private var mTextfieldSlotTimeLeft:TextField;
      
      private var mFeedOpponentButton1:UIButtonRovio;
      
      private var mFeedOpponentButton2:UIButtonRovio;
      
      private var mWinningOpponent1:MovieClip;
      
      private var mWinningOpponent2:MovieClip;
      
      private var mOpponent1:MovieClip;
      
      private var mOpponent2:MovieClip;
      
      private var mAnimationFeedOpponent1:MovieClip;
      
      private var mAnimationFeedOpponent2:MovieClip;
      
      private var mAnimationMunchOpponent1:MovieClip;
      
      private var mAnimationMunchOpponent2:MovieClip;
      
      private var mAnimationBurbOpponent1:MovieClip;
      
      private var mAnimationBurbOpponent2:MovieClip;
      
      private var mAnimationPumpkinOpponent1:MovieClip;
      
      private var mAnimationPumpkinOpponent2:MovieClip;
      
      private var mPlayingFeedAnimation:Boolean;
      
      private var mStopFeedAnimation:Boolean;
      
      private var mFeedAmount:int;
      
      private var mPreviousExchangeItemAmount:int;
      
      private var mBurbPumpkins:int;
      
      private var mPlayingPumpkinBurbAnimation:Boolean;
      
      private var mFeedingOpponentID:int;
      
      private var mSkipFeeding:Boolean;
      
      private var mTournamentLoader:TournamentLoader;
      
      private var mIsLoading:Boolean;
      
      private var mLoader:ABFLoader;
      
      private var mRedeemActionActivated:Boolean;
      
      private var mForceOpenHappened:Boolean;
      
      private var mOtherPlayersNameAnimationTimer1:Timer;
      
      private var mOtherPlayersNameAnimationTimer2:Timer;
      
      private var mOtherPlayersNameSpawningArea:Point;
      
      private var mRandomNamesUsedIndexes:Vector.<int>;
      
      public function ItemsCollectionPopup(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         var dataXML:XML = ViewXMLLibrary.mLibrary.Views.PopupView_ItemsCollector[0];
         super(layerIndex,priority,dataXML,ID);
         this.mTournamentEventManager = TournamentEventManager.instance;
         this.mItemsCollectorManager = this.mTournamentEventManager.getActivatedEventManager() as ItemsCollectionManager;
         SoundEngine.addNewChannelControl(BOSS_FEEDING_SOUND_CHANNEL,1,0.9);
      }
      
      override protected function init() : void
      {
         super.init();
         this.mView = mContainer.mClip;
         this.mTextfieldStatsTotalItems = this.mView.Textfield_ItemsAmount as TextField;
         this.mTextfieldStatsItemsLeft = this.mView.LeftForToday.Textfield_ItemsLeft as TextField;
         this.mTextfieldStatsPowerupAmount = this.mView.Textfield_PowerupAmount as TextField;
         this.mTextfieldEventTimeLeft = this.mView.EventTimer.Textfield_EventTimeLeft as TextField;
         this.mTextfieldSlotTimeLeft = this.mView.MoreCandies.Textfield_SlotTimeLeft as TextField;
         this.mWinningOpponent1 = this.mView.WinningOpponent1 as MovieClip;
         this.mWinningOpponent2 = this.mView.WinningOpponent2 as MovieClip;
         this.mFeedOpponentButton1 = mContainer.getItemByName("btnFeedOpponent1") as UIButtonRovio;
         this.mFeedOpponentButton2 = mContainer.getItemByName("btnFeedOpponent2") as UIButtonRovio;
         this.mOpponent1 = this.mView.ItemsCollectionOpponent1 as MovieClip;
         this.mOpponent2 = this.mView.ItemsCollectionOpponent2 as MovieClip;
         this.mAnimationFeedOpponent1 = this.mView.AnimFeedOpponent1 as MovieClip;
         this.mAnimationFeedOpponent2 = this.mView.AnimFeedOpponent2 as MovieClip;
         this.mAnimationMunchOpponent1 = this.mView.AnimMunchOpponent1 as MovieClip;
         this.mAnimationMunchOpponent2 = this.mView.AnimMunchOpponent2 as MovieClip;
         this.mAnimationBurbOpponent1 = this.mView.AnimBurdOpponent1 as MovieClip;
         this.mAnimationBurbOpponent2 = this.mView.AnimBurdOpponent2 as MovieClip;
         this.mAnimationPumpkinOpponent1 = this.mView.AnimPumpkinOpponent1 as MovieClip;
         this.mAnimationPumpkinOpponent2 = this.mView.AnimPumpkinOpponent2 as MovieClip;
         this.handleFeedAnimations(0,0);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.mAnimationPumpkinOpponent1.stop();
         this.mAnimationPumpkinOpponent2.stop();
         this.mTextfieldStatsTotalItems.text = "";
         this.mTextfieldEventTimeLeft.text = "";
         this.mTextfieldSlotTimeLeft.text = "";
         this.mView.Textfield_EndEvent.visible = false;
         this.mWinningOpponent1.visible = false;
         this.mWinningOpponent2.visible = false;
         FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,this.mView);
         FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,this.mFeedOpponentButton1.mClip);
         FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,this.mFeedOpponentButton2.mClip);
         FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,this.mAnimationFeedOpponent1);
         FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,this.mAnimationFeedOpponent2);
         this.setLoadingGraphic(false);
         this.mTournamentEventManager.addEventListener(TournamentEventManager.EVENT_UPDATE_TOURNAMENT_EVENT,this.updateTournamentEvent);
         this.mRedeemActionActivated = false;
         this.mForceOpenHappened = DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(ItemsCollectionManager.COLLETED_ITEM_ID);
         this.mPreviousExchangeItemAmount = 0;
         this.mBurbPumpkins = 0;
         this.mFeedingOpponentID = 0;
         this.mFeedAmount = 0;
         this.mSkipFeeding = false;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         this.setData();
         this.startOtherPlayersNamesAnimation(this.mOtherPlayersNameAnimationTimer1,this.mView.AnimatedNamesSpawningArea1);
         this.startOtherPlayersNamesAnimation(this.mOtherPlayersNameAnimationTimer2,this.mView.AnimatedNamesSpawningArea2);
      }
      
      private function setData() : void
      {
         if(!this.mItemsCollectorManager)
         {
            return;
         }
         if(this.mFeedAmount > 0)
         {
            this.mTextfieldStatsTotalItems.text = this.mFeedAmount + "";
         }
         else
         {
            this.mTextfieldStatsTotalItems.text = ItemsInventory.instance.getAmountOfItem(ItemsCollectionManager.COLLETED_ITEM_ID) + "";
         }
         this.mTextfieldStatsItemsLeft.text = this.mItemsCollectorManager.totalCollectibleItemsAmount - this.mItemsCollectorManager.itemsCollectedAmount + "";
         if(this.mPreviousExchangeItemAmount == 0)
         {
            this.mTextfieldStatsPowerupAmount.text = ItemsInventory.instance.getAmountOfItem("ExchangedItem") + "";
         }
         else
         {
            this.mBurbPumpkins = ItemsInventory.instance.getAmountOfItem("ExchangedItem") - this.mPreviousExchangeItemAmount;
            this.mTextfieldStatsPowerupAmount.text = this.mPreviousExchangeItemAmount + "";
            this.mPreviousExchangeItemAmount = 0;
         }
         if(!this.mForceOpenHappened)
         {
            this.mWinningOpponent1.visible = false;
            this.mWinningOpponent2.visible = false;
         }
         else
         {
            this.mWinningOpponent1.visible = this.mItemsCollectorManager.getWinningOpponent() == 1;
            this.mWinningOpponent2.visible = this.mItemsCollectorManager.getWinningOpponent() == 2;
         }
         this.setFeedButtonsAvailability(this.canFeed());
      }
      
      private function updateTournamentEvent(e:Event) : void
      {
         var slotSecondsLeft:Number = NaN;
         if(this.mIsLoading || this.mRedeemActionActivated)
         {
            return;
         }
         if(this.mStopFeedAnimation)
         {
            this.handleFeedAnimations(0,0);
         }
         else if(!this.mPlayingFeedAnimation && !this.mPlayingPumpkinBurbAnimation)
         {
            if(this.mBurbPumpkins > 0)
            {
               this.startBurbAnimation();
            }
         }
         var eventSecondsLeft:Number = this.mTournamentEventManager.getEventSecondsLeft();
         this.mTextfieldEventTimeLeft.text = FriendsUtil.getTimeLeftAsPrettyString(eventSecondsLeft)[0];
         if(eventSecondsLeft > 0)
         {
            slotSecondsLeft = this.mItemsCollectorManager.getSlotSecondsLeft();
            if(slotSecondsLeft > 0)
            {
               this.mTextfieldSlotTimeLeft.text = FriendsUtil.getTimeLeftAsPrettyString(slotSecondsLeft)[0];
               if(eventSecondsLeft == slotSecondsLeft)
               {
                  this.mView.MoreCandies.visible = false;
               }
            }
            else
            {
               this.reloadData();
            }
         }
         else if(!this.mView.Textfield_EndEvent.visible)
         {
            this.mView.Textfield_EndEvent.visible = true;
            this.mView.EventTimer.visible = false;
            this.mView.MoreCandies.visible = false;
            this.mView.LeftForToday.visible = false;
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(this.mLoader || this.mRedeemActionActivated || this.mPlayingFeedAnimation || this.mPlayingPumpkinBurbAnimation)
         {
            return;
         }
         switch(eventName)
         {
            case "INFO":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
               break;
            case "FEED_OPPONENT_1":
               this.feedOpponent(1);
               break;
            case "FEED_OPPONENT_2":
               this.feedOpponent(2);
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
      
      override public function dispose() : void
      {
         this.mTournamentEventManager.removeEventListener(TournamentEventManager.EVENT_UPDATE_TOURNAMENT_EVENT,this.updateTournamentEvent);
         if(this.mTournamentLoader)
         {
            this.mTournamentLoader.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_LOADED,this.onCurrentTournamentInfoLoaded);
         }
         if(this.mOtherPlayersNameAnimationTimer1)
         {
            this.mOtherPlayersNameAnimationTimer1.stop();
            this.mOtherPlayersNameAnimationTimer1 = null;
         }
         if(this.mOtherPlayersNameAnimationTimer2)
         {
            this.mOtherPlayersNameAnimationTimer2.stop();
            this.mOtherPlayersNameAnimationTimer2 = null;
         }
         super.dispose();
      }
      
      private function reloadData() : void
      {
         this.setLoadingGraphic(true);
         this.mTournamentLoader = new TournamentLoader();
         this.mTournamentLoader.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_LOADED,this.onCurrentTournamentInfoLoaded);
         this.mTournamentLoader.loadCurrentTournament();
      }
      
      private function setLoadingGraphic(value:Boolean) : void
      {
         this.mView.LoadingImage.visible = value;
         this.mIsLoading = value;
         if(value)
         {
            this.setFeedButtonsAvailability(false);
         }
      }
      
      private function onCurrentTournamentInfoLoaded(e:TournamentEvent) : void
      {
         this.setData();
         this.setLoadingGraphic(false);
         this.mTournamentLoader.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_LOADED,this.onCurrentTournamentInfoLoaded);
      }
      
      private function feedOpponent(opponentID:int) : void
      {
         this.mRedeemActionActivated = true;
         this.setFeedButtonsAvailability(false);
         this.mLoader = new ABFLoader();
         this.mLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mLoader.addEventListener(Event.COMPLETE,this.onRedeemCompleted);
         this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onRedeemError);
         this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onRedeemError);
         this.mLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onRedeemError);
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/event/redeemCollectedItems?opponentId=" + opponentID);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         var feedAmount:int = ItemsInventory.instance.getAmountOfItem(ItemsCollectionManager.COLLETED_ITEM_ID);
         if(opponentID == 1)
         {
            this.handleFeedAnimations(feedAmount,0);
         }
         else
         {
            this.handleFeedAnimations(0,feedAmount);
         }
         this.mLoader.load(urlRequest);
      }
      
      private function stopDataLoading() : void
      {
         if(this.mLoader)
         {
            this.mLoader.removeEventListener(Event.COMPLETE,this.onRedeemCompleted);
            this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onRedeemError);
            this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onRedeemError);
            this.mLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onRedeemError);
            this.mLoader = null;
         }
         this.mRedeemActionActivated = false;
         this.setFeedButtonsAvailability(this.canFeed());
      }
      
      private function onRedeemError(event:Event) : void
      {
         var popup:IPopup = null;
         this.stopDataLoading();
         this.setFeedButtonsAvailability(false);
         if(event.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            popup = new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            popup = new WarningPopup(PopupLayerIndexFacebook.ERROR,PopupPriorityType.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      private function onRedeemCompleted(e:Event) : void
      {
         var responseData:Object = e.target.data;
         ItemsInventory.instance.injectInventoryUpdate(responseData);
         this.stopDataLoading();
         this.setData();
      }
      
      private function setFeedButtonsAvailability(value:Boolean) : void
      {
         if(value)
         {
            this.mFeedOpponentButton1.setEnabled(true);
            this.mFeedOpponentButton2.setEnabled(true);
            this.mFeedOpponentButton1.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.mFeedOpponentButton2.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.mFeedOpponentButton1.setEnabled(false);
            this.mFeedOpponentButton2.setEnabled(false);
            this.mFeedOpponentButton1.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            this.mFeedOpponentButton2.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function canFeed() : Boolean
      {
         return ItemsInventory.instance.getAmountOfItem(ItemsCollectionManager.COLLETED_ITEM_ID) > 0 && this.mTournamentEventManager.getEventSecondsLeft() > 0;
      }
      
      private function handleFeedAnimations(feedOpponent1Amount:int, feedOpponent2Amount:int) : void
      {
         var originalFeedAnim:MovieClip = null;
         var timeInterval:int = 0;
         var startPlaceVariationAmount:int = 0;
         var soundPlayingTime:int = 0;
         var soundPlayingLoops:int = 0;
         var tmr:Timer = null;
         this.mPlayingFeedAnimation = false;
         this.mStopFeedAnimation = false;
         if(!this.mPlayingPumpkinBurbAnimation)
         {
            this.mOpponent1.visible = true;
            this.mOpponent2.visible = true;
         }
         this.mAnimationFeedOpponent1.gotoAndStop(1);
         this.mAnimationMunchOpponent1.stop();
         this.mAnimationMunchOpponent1.visible = false;
         this.mAnimationFeedOpponent2.gotoAndStop(1);
         this.mAnimationMunchOpponent2.stop();
         this.mAnimationMunchOpponent2.visible = false;
         if(feedOpponent1Amount > 0 || feedOpponent2Amount > 0)
         {
            this.mFeedingOpponentID = feedOpponent1Amount > 0 ? 1 : 2;
            originalFeedAnim = feedOpponent1Amount > 0 ? this.mAnimationFeedOpponent1 : this.mAnimationFeedOpponent2;
            this.mFeedAmount = feedOpponent1Amount > 0 ? int(feedOpponent1Amount) : int(feedOpponent2Amount);
            timeInterval = 90;
            startPlaceVariationAmount = 20;
            if(this.mFeedAmount > 1)
            {
               tmr = new Timer(timeInterval);
               tmr.repeatCount = this.mFeedAmount - 1;
               tmr.addEventListener(TimerEvent.TIMER,function tmrFn():void
               {
                  var cloneFeedAnim:MovieClip = null;
                  var feedingAnimationName:String = mFeedingOpponentID == 1 ? FEED_ANIMATION_NAME_1 : FEED_ANIMATION_NAME_2;
                  var cls:Class = AssetCache.getAssetFromCache(feedingAnimationName);
                  cloneFeedAnim = new cls() as MovieClip;
                  cloneFeedAnim.x = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.y = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,function fn():void
                  {
                     cloneFeedAnim.stop();
                     mStopFeedAnimation = !tmr.running;
                     cloneFeedAnim.visible = false;
                     cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,null);
                     cloneFeedAnim = null;
                     if(!tmr.running && originalFeedAnim)
                     {
                        originalFeedAnim.visible = false;
                        originalFeedAnim = null;
                        mView.removeEventListener(MouseEvent.CLICK,skipAnimations);
                     }
                  });
                  FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,cloneFeedAnim);
                  originalFeedAnim.addChild(cloneFeedAnim);
                  FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,originalFeedAnim);
                  cloneFeedAnim.gotoAndPlay(1);
                  --mFeedAmount;
                  if(mSkipFeeding)
                  {
                     mStopFeedAnimation = true;
                     mFeedAmount = 0;
                     mPreviousExchangeItemAmount = 0;
                     tmr.stop();
                  }
                  mTextfieldStatsTotalItems.text = mFeedAmount + "";
               });
               tmr.start();
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  --mFeedAmount;
                  if(mSkipFeeding)
                  {
                     mStopFeedAnimation = true;
                     mFeedAmount = 0;
                     mPreviousExchangeItemAmount = 0;
                  }
                  mTextfieldStatsTotalItems.text = mFeedAmount + "";
               });
            }
            else
            {
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  mStopFeedAnimation = true;
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  originalFeedAnim.visible = false;
                  originalFeedAnim = null;
                  --mFeedAmount;
                  mTextfieldStatsTotalItems.text = mFeedAmount + "";
                  mView.removeEventListener(MouseEvent.CLICK,skipAnimations);
               });
            }
            originalFeedAnim.gotoAndPlay(1);
            this.mPlayingFeedAnimation = true;
            if(feedOpponent1Amount > 0)
            {
               this.mOpponent1.visible = false;
               this.mAnimationMunchOpponent1.visible = true;
               this.mAnimationMunchOpponent1.play();
            }
            else
            {
               this.mOpponent2.visible = false;
               this.mAnimationMunchOpponent2.visible = true;
               this.mAnimationMunchOpponent2.play();
            }
            this.mPreviousExchangeItemAmount = ItemsInventory.instance.getAmountOfItem("ExchangedItem");
            this.mView.addEventListener(MouseEvent.CLICK,this.skipAnimations);
            soundPlayingTime = this.mFeedAmount * timeInterval;
            soundPlayingLoops = soundPlayingTime / 1000;
            SoundEngine.playSound("boss_feeding",BOSS_FEEDING_SOUND_CHANNEL,soundPlayingLoops);
         }
      }
      
      private function startBurbAnimation() : void
      {
         var opponent:MovieClip = null;
         var burbOpponentAnim:MovieClip = null;
         var pumpkinOpponentAnim:MovieClip = null;
         SoundEngine.stopChannel(BOSS_FEEDING_SOUND_CHANNEL);
         if(this.mFeedingOpponentID == 0)
         {
            return;
         }
         if(this.mSkipFeeding)
         {
            this.mFeedingOpponentID = 0;
            this.mBurbPumpkins = 0;
            this.mPreviousExchangeItemAmount = 0;
            this.mTextfieldStatsPowerupAmount.text = ItemsInventory.instance.getAmountOfItem("ExchangedItem") + "";
            return;
         }
         this.mView.addEventListener(MouseEvent.CLICK,this.skipAnimations);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.mPlayingPumpkinBurbAnimation = true;
         opponent = this.mFeedingOpponentID == 1 ? this.mOpponent1 : this.mOpponent2;
         burbOpponentAnim = this.mFeedingOpponentID == 1 ? this.mAnimationBurbOpponent1 : this.mAnimationBurbOpponent2;
         pumpkinOpponentAnim = this.mFeedingOpponentID == 1 ? this.mAnimationPumpkinOpponent1 : this.mAnimationPumpkinOpponent2;
         opponent.visible = false;
         burbOpponentAnim.gotoAndStop(1);
         burbOpponentAnim.visible = true;
         burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,function fn1():void
         {
            burbOpponentAnim.gotoAndStop(1);
            pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,function fn2():void
            {
               pumpkinOpponentAnim.gotoAndStop(1);
               --mBurbPumpkins;
               if(mBurbPumpkins == 0)
               {
                  burbOpponentAnim.visible = false;
                  opponent.visible = true;
                  mFeedingOpponentID = 0;
                  mView.removeEventListener(MouseEvent.CLICK,skipAnimations);
               }
               if(mSkipFeeding)
               {
                  mFeedingOpponentID = 0;
                  mBurbPumpkins = 0;
               }
               mTextfieldStatsPowerupAmount.text = ItemsInventory.instance.getAmountOfItem("ExchangedItem") - mBurbPumpkins + "";
               mPlayingPumpkinBurbAnimation = false;
               pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,null);
            });
            pumpkinOpponentAnim.gotoAndPlay(1);
            burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,null);
            if(mSkipFeeding)
            {
               mFeedingOpponentID = 0;
               mBurbPumpkins = 0;
               mPlayingPumpkinBurbAnimation = false;
            }
         });
         burbOpponentAnim.play();
         SoundEngine.playSound(PIG_BURB_SOUNDS[int(Math.random() * PIG_BURB_SOUNDS.length)],SoundEngine.UI_CHANNEL);
      }
      
      private function skipAnimations(e:MouseEvent) : void
      {
         this.mSkipFeeding = true;
      }
      
      private function getRandomName() : String
      {
         if(Math.random() * 100 < 20)
         {
            return "Guest" + int(Math.random() * 10000);
         }
         if(!this.mRandomNamesUsedIndexes)
         {
            this.mRandomNamesUsedIndexes = new Vector.<int>();
         }
         var index:int = Math.random() * RANDOM_NAMES.length;
         var freeIndex:* = false;
         while(!freeIndex)
         {
            if(this.mRandomNamesUsedIndexes.length < RANDOM_NAMES.length)
            {
               freeIndex = this.mRandomNamesUsedIndexes.indexOf(index) == -1;
               if(freeIndex)
               {
                  this.mRandomNamesUsedIndexes.push(index);
               }
               else
               {
                  index = index + 1 < RANDOM_NAMES.length ? int(index + 1) : 0;
               }
            }
            else
            {
               this.mRandomNamesUsedIndexes = null;
               freeIndex = true;
            }
         }
         return RANDOM_NAMES[index];
      }
      
      private function startOtherPlayersNamesAnimation(timer:Timer, spawningArea:MovieClip) : void
      {
         if(timer)
         {
            return;
         }
         timer = new Timer(Math.random() * OTHER_PLAYERS_NAME_ANIMATION_MAX_TIME);
         timer.addEventListener(TimerEvent.TIMER,function tmrFn():void
         {
            var cls:Class = null;
            var nameAnim:MovieClip = null;
            timer.stop();
            if(mTournamentEventManager.getEventSecondsLeft() > 0)
            {
               cls = AssetCache.getAssetFromCache("ItemsCollectionNameAnimation");
               nameAnim = new cls() as MovieClip;
               FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,nameAnim.NameMovieClip);
               nameAnim.NameMovieClip.nameTF.text = getRandomName();
               nameAnim.NameMovieClip.scoreTF.text = "+" + (int(Math.random() * 10) + 1);
               nameAnim.addFrameScript(nameAnim.totalFrames - 1,function fn2():void
               {
                  nameAnim.stop();
                  nameAnim.addFrameScript(nameAnim.totalFrames - 1,null);
                  nameAnim.parent.removeChild(nameAnim);
                  nameAnim = null;
               });
               if(!mOtherPlayersNameSpawningArea)
               {
                  mOtherPlayersNameSpawningArea = new Point(spawningArea.width,spawningArea.height);
               }
               nameAnim.x = Math.random() * mOtherPlayersNameSpawningArea.x;
               nameAnim.y = Math.random() * mOtherPlayersNameSpawningArea.y;
               spawningArea.addChild(nameAnim);
               timer.delay = Math.random() * OTHER_PLAYERS_NAME_ANIMATION_MAX_TIME;
               timer.start();
            }
         });
         timer.start();
      }
   }
}
