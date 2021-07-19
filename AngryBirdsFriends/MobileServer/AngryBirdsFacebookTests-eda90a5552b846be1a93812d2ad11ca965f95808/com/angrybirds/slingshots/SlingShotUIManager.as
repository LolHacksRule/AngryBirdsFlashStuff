package com.angrybirds.slingshots
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.FacebookLevelSlingshot;
   import com.angrybirds.engine.LevelSlingshot;
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
   import com.angrybirds.popups.league.SlingshotRewardInfoPopup;
   import com.angrybirds.powerups.GlitterParticle;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.QuickPurchaseEvent;
   import com.angrybirds.shoppopup.quickbuy.QuickPurchaseHandler;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import starling.core.Starling;
   
   public class SlingShotUIManager extends EventDispatcher
   {
      
      public static const SLINGSHOT_MENU_ENABLED:Boolean = true;
      
      private static const SLING_SHOT_CONTAINER_Y:Number = 160;
      
      private static const SLING_SHOT_CONTAINER_X:Number = 60;
      
      private static const SLING_SHOT_MENU_ITEMS_ON_ONE_ROW:int = 4;
      
      private static const SLING_SHOT_MENU_BG_MARGIN_VERTICAL:Number = 12;
      
      private static const SLING_SHOT_MENU_BG_MARGIN_HORIZONTAL:Number = 22;
      
      private static const SLING_SHOT_MENU_BG_X:Number = 40;
      
      private static const SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE:Number = 40;
      
      private static var smSelectedSlingShotIdentifier:String = "default";
      
      public static var SLINGSHOT_INTRO_ANIMATION_RUNNING:Boolean = false;
      
      private static const SLING_SHOT_INTRO_ANIMATION_LENGTH:int = 700;
       
      
      private var mSlingShotMenuOpen:Boolean = false;
      
      private var mGameLogicController:FacebookGameLogicController;
      
      protected var mUIView:UIContainerRovio;
      
      private var mLevelManager:LevelManager;
      
      private var mSlingShotContainer:UIComponentRovio;
      
      private var mSlingShotButton:UIComponentRovio;
      
      private var mSlingShotMenuHeight:Number;
      
      private var mSlingShotMenuWidth:Number;
      
      private var SLING_SHOT_ICON_WIDTH:int = 59;
      
      private var SLING_SHOT_ICON_HEIGHT:int = 76;
      
      private var SLING_SHOT_ICON_PADDING_BOTTOM:int = 8;
      
      private var SLING_SHOT_ICON_PADDING_RIGHT:int = 5;
      
      private var mSlingShotButtonsBG:Sprite;
      
      private var mPendingSlingShotDefinition:SlingShotDefinition;
      
      private var mQuickPurchaseHandler:QuickPurchaseHandler;
      
      private var mSlingShotIntroAnimationTimer:Timer;
      
      public function SlingShotUIManager(uiView:UIContainerRovio, levelManager:LevelManager)
      {
         super();
         this.mUIView = uiView;
         this.mLevelManager = levelManager;
         this.init();
      }
      
      public static function getSelectedSlingShotId() : String
      {
         return smSelectedSlingShotIdentifier;
      }
      
      private function init() : void
      {
         var rows:int = 0;
         Starling.current.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated,false,0,true);
         var maxSlingShotItemsOnOneRow:int = SlingShotType.getAvailableSlingShotAmount();
         if(maxSlingShotItemsOnOneRow > SLING_SHOT_MENU_ITEMS_ON_ONE_ROW)
         {
            maxSlingShotItemsOnOneRow = SLING_SHOT_MENU_ITEMS_ON_ONE_ROW;
         }
         rows = Math.ceil(SlingShotType.getAvailableSlingShotAmount() / maxSlingShotItemsOnOneRow);
         var iconPaddingRows:int = rows > 1 ? int(rows - 1) : 0;
         var iconPaddingColumns:int = maxSlingShotItemsOnOneRow > 1 ? int(maxSlingShotItemsOnOneRow - 1) : 0;
         this.mSlingShotMenuHeight = SLING_SHOT_MENU_BG_MARGIN_VERTICAL + this.SLING_SHOT_ICON_HEIGHT * rows + this.SLING_SHOT_ICON_PADDING_BOTTOM * iconPaddingRows + SLING_SHOT_MENU_BG_MARGIN_VERTICAL;
         this.mSlingShotMenuWidth = SLING_SHOT_MENU_BG_MARGIN_HORIZONTAL + this.SLING_SHOT_ICON_WIDTH * maxSlingShotItemsOnOneRow + iconPaddingColumns * this.SLING_SHOT_ICON_PADDING_RIGHT + SLING_SHOT_MENU_BG_MARGIN_HORIZONTAL;
         this.mUIView.getItemByName("Button_Slingshot").mClip.rotation = 0;
         this.mSlingShotContainer = this.mUIView.getItemByName("Container_Slingshot_Buttons");
         this.mSlingShotButton = this.mUIView.getItemByName("Button_Slingshot");
         this.mSlingShotButtonsBG = new Sprite();
         this.mSlingShotButtonsBG.graphics.beginFill(0);
         this.mSlingShotButtonsBG.graphics.lineTo(0,this.mSlingShotMenuHeight - SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE);
         this.mSlingShotButtonsBG.graphics.curveTo(0,this.mSlingShotMenuHeight,SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE,this.mSlingShotMenuHeight);
         this.mSlingShotButtonsBG.graphics.lineTo(this.mSlingShotMenuWidth - SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE,this.mSlingShotMenuHeight);
         this.mSlingShotButtonsBG.graphics.curveTo(this.mSlingShotMenuWidth,this.mSlingShotMenuHeight,this.mSlingShotMenuWidth,this.mSlingShotMenuHeight - SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE);
         this.mSlingShotButtonsBG.graphics.lineTo(this.mSlingShotMenuWidth,SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE);
         this.mSlingShotButtonsBG.graphics.curveTo(this.mSlingShotMenuWidth,0,this.mSlingShotMenuWidth - SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE,0);
         this.mSlingShotButtonsBG.graphics.lineTo(0,0);
         this.mSlingShotButtonsBG.graphics.endFill();
         this.mSlingShotButtonsBG.x = SLING_SHOT_MENU_BG_X;
         this.mSlingShotButtonsBG.y = SLING_SHOT_CONTAINER_Y;
         this.mSlingShotButtonsBG.alpha = 0.5;
         this.mSlingShotButtonsBG.scale9Grid = new Rectangle(SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE,SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE,this.mSlingShotMenuWidth - SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE * 2,this.mSlingShotMenuHeight - SLING_SHOT_MENU_BG_ROUNDED_CORNER_SIZE * 2);
         this.mSlingShotContainer.mClip.addChildAt(this.mSlingShotButtonsBG,0);
         this.mSlingShotContainer.x = SLING_SHOT_CONTAINER_X;
         this.mSlingShotContainer.y = SLING_SHOT_CONTAINER_Y;
         SLINGSHOT_INTRO_ANIMATION_RUNNING = false;
         this.mSlingShotIntroAnimationTimer = new Timer(SLING_SHOT_INTRO_ANIMATION_LENGTH);
      }
      
      public function activate(gameLogicController:FacebookGameLogicController) : void
      {
         if(!SLINGSHOT_MENU_ENABLED)
         {
            return;
         }
         this.mGameLogicController = gameLogicController;
         this.setSlingShotMenuOpen(false);
         this.updateSlingShotMenu(0);
         ItemsInventory.instance.addEventListener(Event.CHANGE,this.onInventoryCountUpdated);
      }
      
      public function deActivate() : void
      {
         ItemsInventory.instance.removeEventListener(Event.CHANGE,this.onInventoryCountUpdated);
      }
      
      public function dispose() : void
      {
         Starling.current.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
         if(!SLINGSHOT_MENU_ENABLED)
         {
            return;
         }
         this.mSlingShotContainer.mClip.removeChild(this.mSlingShotButtonsBG);
      }
      
      public function run(deltaTime:Number) : void
      {
         if(!SLINGSHOT_MENU_ENABLED)
         {
            return;
         }
         if(this.mGameLogicController.levelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_CELEBRATE)
         {
            this.setSlingShotMenuOpen(false);
         }
         this.updateSlingShotMenu(deltaTime);
      }
      
      public function toggleSlingShotOpen() : void
      {
         this.setSlingShotMenuOpen(!this.isSlingShotMenuOpen());
      }
      
      public function openSlingShotMenu() : void
      {
         if(!this.isSlingShotMenuOpen())
         {
            this.setSlingShotMenuOpen(false);
         }
      }
      
      public function closeSlingShotMenu() : void
      {
         if(this.isSlingShotMenuOpen())
         {
            this.setSlingShotMenuOpen(false);
         }
      }
      
      private function onSlingShotBarTimerCompleted(e:TimerEvent) : void
      {
         this.setSlingShotMenuOpen(!this.isSlingShotMenuOpen());
      }
      
      public function selectSlingshot(slingShotId:String, slingShotSelectedAtStartup:Boolean) : void
      {
         var shopItem:ShopItem = null;
         var slingShotDefinition:SlingShotDefinition = SlingShotType.getSlingShotByID(slingShotId);
         if(slingShotDefinition)
         {
            if(slingShotDefinition.purchased)
            {
               smSelectedSlingShotIdentifier = slingShotId;
               if(!slingShotSelectedAtStartup)
               {
                  this.mPendingSlingShotDefinition = slingShotDefinition;
                  this.startSlingShotIntroAnimation(slingShotDefinition.introMovieClipName);
                  if(slingShotId != "default")
                  {
                     this.useSlingshot(slingShotDefinition.identifier);
                  }
               }
               else
               {
                  (AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot).activateSlingShotType(slingShotDefinition,slingShotSelectedAtStartup);
                  SLINGSHOT_INTRO_ANIMATION_RUNNING = false;
               }
               this.setSlingShotMenuOpen(false);
            }
            else if(SlingshotRewardInfoPopup.isRewardSlingshot(slingShotId))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new SlingshotRewardInfoPopup(slingShotId,SlingshotRewardInfoPopup.TYPE_SLINGSHOT_INFO));
            }
            else
            {
               shopItem = (AngryBirdsBase.singleton.dataModel as DataModelFriends).shopListing.getSlingshotById(slingShotDefinition.identifier);
               this.mQuickPurchaseHandler = new QuickPurchaseHandler(this.mUIView.mClip,shopItem,slingShotDefinition.prettyName);
               this.mQuickPurchaseHandler.addEventListener(QuickPurchaseEvent.PURCHASE_COMPLETED,this.onQuickPurchaseCompleted);
               this.mQuickPurchaseHandler.purchase();
            }
         }
      }
      
      protected function onQuickPurchaseCompleted(event:QuickPurchaseEvent) : void
      {
         var slingshotDef:SlingShotDefinition = SlingShotType.getSlingShotByID(event.purchasedItemId);
         var uiComponent:UIComponentRovio = this.mUIView.getItemByName(slingshotDef.buttonName);
         var mcIcon:MovieClip = uiComponent.mClip.getChildAt(1) as MovieClip;
         var position:Point = mcIcon.localToGlobal(new Point(0,0));
         var particleCount:int = 40;
         for(var i:int = 0; i < particleCount; i++)
         {
            this.mUIView.mClip.addChild(new GlitterParticle(position.x + mcIcon.width * 0.5 + Math.random() * 20,position.y + mcIcon.width * 0.5 + Math.random() * 20));
         }
      }
      
      private function useSlingshot(name:String) : void
      {
         if((AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedItems().indexOf(name) == -1)
         {
            FacebookLevelMain(AngryBirdsEngine.smLevelMain).powerupsHandler.requestPowerup(name);
         }
         (AngryBirdsEngine.smLevelMain as FacebookLevelMain).useSlingShot(name);
      }
      
      public function isSlingShotMenuOpen() : Boolean
      {
         return this.mSlingShotMenuOpen;
      }
      
      private function setSlingShotMenuOpen(value:Boolean) : void
      {
         this.mSlingShotMenuOpen = value;
         this.updateSlingShotButtons();
      }
      
      private function updateSlingShotButtons() : void
      {
         var currentButton:UIComponentRovio = null;
         var currentBuyButton:UIComponentRovio = null;
         var buttonX:int = 0;
         var buttonY:int = 0;
         var slingShotDefinition:SlingShotDefinition = null;
         var increaseSlingshotIndex:Boolean = false;
         var buttonColumnIndex:int = 0;
         var buttonRowIndex:int = 0;
         for each(slingShotDefinition in SlingShotType.allSlingShots)
         {
            currentButton = this.mUIView.getItemByName(slingShotDefinition.buttonName);
            currentBuyButton = this.mUIView.getItemByName(slingShotDefinition.buttonBuyName);
            if(currentButton)
            {
               increaseSlingshotIndex = true;
               if(smSelectedSlingShotIdentifier == slingShotDefinition.identifier)
               {
                  currentButton.setEnabled(false);
                  this.mUIView.getItemByName(slingShotDefinition.selectedMovieClipName).visible = true;
                  if(currentBuyButton)
                  {
                     currentBuyButton.setVisibility(false);
                  }
               }
               else
               {
                  this.mUIView.getItemByName(slingShotDefinition.selectedMovieClipName).visible = false;
                  if(slingShotDefinition.purchased)
                  {
                     currentButton.setEnabled(this.mSlingShotMenuOpen);
                     if(currentBuyButton)
                     {
                        currentBuyButton.setVisibility(false);
                     }
                  }
                  else if(slingShotDefinition.available)
                  {
                     currentButton.setEnabled(this.mSlingShotMenuOpen);
                     if(currentBuyButton)
                     {
                        currentBuyButton.setVisibility(true);
                        currentBuyButton.setEnabled(this.mSlingShotMenuOpen);
                     }
                  }
                  else
                  {
                     currentButton.setVisibility(false);
                     if(currentBuyButton)
                     {
                        currentBuyButton.setVisibility(false);
                     }
                     increaseSlingshotIndex = false;
                  }
               }
               if(increaseSlingshotIndex)
               {
                  buttonX = SLING_SHOT_MENU_BG_X + SLING_SHOT_MENU_BG_MARGIN_HORIZONTAL + buttonColumnIndex * this.SLING_SHOT_ICON_WIDTH + buttonColumnIndex * this.SLING_SHOT_ICON_PADDING_RIGHT;
                  buttonY = SLING_SHOT_CONTAINER_Y + SLING_SHOT_MENU_BG_MARGIN_VERTICAL + buttonRowIndex * this.SLING_SHOT_ICON_HEIGHT + buttonRowIndex * this.SLING_SHOT_ICON_PADDING_BOTTOM;
                  currentButton.x = buttonX;
                  currentButton.y = buttonY;
                  if(currentBuyButton)
                  {
                     currentBuyButton.x = buttonX;
                     currentBuyButton.y = buttonY;
                  }
                  if(smSelectedSlingShotIdentifier == slingShotDefinition.identifier)
                  {
                     this.mUIView.getItemByName(slingShotDefinition.selectedMovieClipName).x = buttonX;
                     this.mUIView.getItemByName(slingShotDefinition.selectedMovieClipName).y = buttonY;
                  }
                  buttonColumnIndex++;
                  if(buttonColumnIndex == SLING_SHOT_MENU_ITEMS_ON_ONE_ROW)
                  {
                     buttonRowIndex++;
                     buttonColumnIndex = 0;
                  }
               }
            }
         }
      }
      
      private function updateSlingShotMenu(deltaTime:Number) : void
      {
         var positionChanged:Boolean = this.updateSlingShotMenuPosition(deltaTime);
         if(positionChanged)
         {
            this.mSlingShotContainer.mClip.scrollRect = new Rectangle(SLING_SHOT_MENU_BG_X,SLING_SHOT_CONTAINER_Y,this.mSlingShotMenuWidth,this.mSlingShotMenuHeight);
         }
      }
      
      private function updateSlingShotMenuPosition(deltaTime:Number) : Boolean
      {
         if(this.isSlingShotMenuOpen())
         {
            if(!this.mSlingShotContainer.visible)
            {
               this.mSlingShotContainer.setVisibility(true);
               return true;
            }
         }
         else if(this.mSlingShotContainer.visible)
         {
            this.mSlingShotContainer.setVisibility(false);
            return true;
         }
         return false;
      }
      
      private function startSlingShotIntroAnimation(slingShotIntroMovieClipName:String) : void
      {
         this.stopSlingShotIntroAnimation();
         SLINGSHOT_INTRO_ANIMATION_RUNNING = true;
         var introContainer:UIContainerRovio = this.mUIView.getItemByName("Container_PowerUp_Intro2") as UIContainerRovio;
         introContainer.visible = true;
         SoundEngine.playSound("slingshot_generic_activation","ChannelPowerups",0,0.3);
         this.mSlingShotIntroAnimationTimer.delay = SLING_SHOT_INTRO_ANIMATION_LENGTH;
         this.mSlingShotIntroAnimationTimer.addEventListener(TimerEvent.TIMER,this.onSlingShotIntroAnimationTimer);
         this.mSlingShotIntroAnimationTimer.start();
         var introMovieClip:UIMovieClipRovio = introContainer.getItemByName(slingShotIntroMovieClipName) as UIMovieClipRovio;
         introMovieClip.visible = true;
         introMovieClip.mClip.gotoAndPlay(1);
         if(introMovieClip.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            introMovieClip.mClip.parent.removeChildAt(0);
         }
      }
      
      protected function slingShotIntroAnimationFinished() : void
      {
         if(Starling.contextValid)
         {
            if(this.mPendingSlingShotDefinition)
            {
               this.activatePendingSlingshot(this.mPendingSlingShotDefinition.identifier);
            }
         }
      }
      
      private function activatePendingSlingshot(slingShotId:String) : void
      {
         var slingShotDefinition:SlingShotDefinition = SlingShotType.getSlingShotByID(slingShotId);
         (AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot).activateSlingShotType(slingShotDefinition,false);
         SLINGSHOT_INTRO_ANIMATION_RUNNING = false;
         this.mPendingSlingShotDefinition = null;
      }
      
      private function onContextCreated(event:Event) : void
      {
         if(this.mPendingSlingShotDefinition)
         {
            this.activatePendingSlingshot(this.mPendingSlingShotDefinition.identifier);
         }
      }
      
      private function onSlingShotIntroAnimationTimer(event:TimerEvent) : void
      {
         this.stopSlingShotIntroAnimation();
         this.slingShotIntroAnimationFinished();
      }
      
      private function stopSlingShotIntroAnimation() : void
      {
         var component:UIComponentRovio = null;
         this.mSlingShotIntroAnimationTimer.stop();
         var introContainer:UIContainerRovio = this.mUIView.getItemByName("Container_PowerUp_Intro2") as UIContainerRovio;
         for each(component in introContainer.mItems)
         {
            component.mClip.stop();
            component.visible = false;
         }
         introContainer.visible = false;
      }
      
      private function onInventoryCountUpdated(e:Event) : void
      {
         this.updateSlingShotButtons();
      }
   }
}
