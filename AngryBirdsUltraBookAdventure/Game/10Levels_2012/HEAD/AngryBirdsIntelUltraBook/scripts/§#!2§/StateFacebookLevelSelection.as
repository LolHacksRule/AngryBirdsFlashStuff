package §#!2§
{
   import §"!2§.UIContainerRovio;
   import §"!2§.UIRepeaterRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §6!'§.BackGroundAnimator;
   import §8T§.FacebookUserProgress;
   import §9!!§.§85§;
   import §9c§.StateChapterSelection;
   import §9c§.StateCreditsNew;
   import §9c§.StateCutScene;
   import §9c§.StateLevelSelection;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelSelection extends StateLevelSelection
   {
      
      public static var sForceGoToPage:int = -1;
       
      
      private var §=!9§:Boolean = false;
      
      private var §^-§:Number = 41.666666666666664;
      
      private var §,T§:int = 0;
      
      private var §1I§:BackGroundAnimator;
      
      public function StateFacebookLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_LevelSelection[0]);
         §'!L§ = §^,§.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
         §@v§ = §^,§.getItemByName("Container_LevelSelection") as UIContainerRovio;
         this.§1I§ = new BackGroundAnimator(§^,§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         var episode:ChapterModel = LevelManager.§7+§();
         if(episode == null)
         {
            return;
         }
         §^,§.visible = true;
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§=s§.§`!4§ = false;
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§1!-§("");
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         if(§4!T§.§1t§.background)
         {
            §4!T§.§1t§.background.§1r§();
         }
         var cName:String = LevelManager.§7+§().writtenName;
         §^,§.setText(cName,"TextField_LevelName");
         §^,§.setText(AngryBirdsFP11.sUserProgress.§8!2§(episode) + "/" + AngryBirdsFP11.sUserProgress.§@!3§(episode),"Textfield_CollectedStars");
         if(sForceGoToPage != -1)
         {
            §?M§(sForceGoToPage);
            sForceGoToPage = -1;
         }
         if(sPreviousState == StateFacebookEpisodeSelection.STATE_NAME)
         {
            this.§=!9§ = true;
            sPreviousState = "";
            §^,§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
            §^,§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         }
         else
         {
            this.§=!9§ = false;
            §^,§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§^,§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
            §^,§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§^,§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
         }
         this.§1I§.start();
      }
      
      override public function deActivate() : void
      {
         this.§1I§.stop();
         super.deActivate();
      }
      
      protected function §=z§(tmc:MovieClip) : void
      {
         var tFrame:int = tmc.currentFrame + 1;
         if(tFrame >= tmc.totalFrames)
         {
            tFrame = tmc.totalFrames;
         }
         tmc.gotoAndStop(tFrame);
      }
      
      override public function run(deltaTime:Number) : int
      {
         if(this.§=!9§)
         {
            this.§,T§ += deltaTime;
            if(this.§,T§ >= this.§^-§)
            {
               this.§=z§(§^,§.getItemByName("MovieClip_RightCorner").mClip);
               this.§=z§(§^,§.getItemByName("MovieClip_LeftCorner").mClip);
               this.§,T§ = 0;
            }
         }
         this.§1I§.run(deltaTime);
         return super.run(deltaTime);
      }
      
      override public function initLevelsRepeater() : void
      {
         var levels:Array = null;
         var offsetX:Number = 0;
         §^!A§ = [];
         §04§ = [];
         §1i§ = LevelManager.§ m§(LevelManager.§3V§).§9!O§;
         §#§ = §1i§;
         §?f§ = §1i§;
         trace("We are at page: " + §1i§);
         var chapter:ChapterModel = LevelManager.§ m§(LevelManager.§3V§);
         for(var i:Number = 0; i < chapter.pageIndexes.length; i++)
         {
            levels = chapter.§]l§(chapter.pageIndexes[i]);
            §^!A§.push(chapter.§>!O§(i));
            §04§.push(chapter.§4[§(i));
            offsetX = this.addLevelPage(levels,i,offsetX,chapter);
         }
         §2?§();
         if(sPreviousState == StateCutScene.STATE_NAME)
         {
            sPreviousState = "";
            §?M§(§?f§);
         }
         else
         {
            §?M§(§1i§,true);
         }
      }
      
      override protected function addLevelPage(levels:Array, pageNum:int, offsetX:Number, chapter:ChapterModel) : Number
      {
         var repeaterXML:XML = null;
         var key:String = null;
         var isOpen:Boolean = false;
         var clip:MovieClip = null;
         var but:XML = null;
         var list:Array = new Array();
         list[0] = new Array();
         var buttonCls:Class = AssetCache.§,!k§(§04§[pageNum]);
         for(var i:Number = 0; i < levels.length; i++)
         {
            key = levels[i];
            isOpen = AngryBirdsFP11.sUserProgress.isLevelOpen(key);
            clip = this.makeButtonForLevel(key,isOpen,buttonCls,i,pageNum);
            but = <Button/>;
            but.@name = key;
            if(isOpen || AngryBirdsFP11.DEBUG_MODE_ENABLED)
            {
               but.@MouseUp = key;
            }
            but.@scaleOnMouseOver = "True";
            list[0].push(new Array(but,null,clip));
            if(isOpen)
            {
               clip.MovieClip_Stars.mouseEnabled = false;
            }
            clip.TextField_LevelNum.text.mouseEnabled = false;
         }
         repeaterXML = <Repeater/>;
         if(levels.length == 15)
         {
            repeaterXML.@name = "Repeater_LevelSelection15";
         }
         else
         {
            repeaterXML.@name = "Repeater_LevelSelection";
         }
         repeaterXML.@button = §04§[pageNum];
         repeaterXML.@enabled = "True";
         repeaterXML.@buttonSelectionType = "NO_SELECTION";
         repeaterXML.@fromLibrary = "true";
         var tempOffset:Number = offsetX;
         var levelRepeater:UIRepeaterRovio = new UIRepeaterRovio(repeaterXML,§'!L§,null,null);
         levelRepeater.§#u§ = 5;
         levelRepeater.§!I§ = 0;
         levelRepeater.§>!0§(list);
         levelRepeater.setVisibility(true);
         levelRepeater.x = offsetX;
         levelRepeater.y = 50;
         §'!L§.addComponent(levelRepeater);
         §5!k§.push(levelRepeater);
         return Number(tempOffset + AngryBirdsFP11.§8!Z§);
      }
      
      override protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var crown:MovieClip = null;
         var clip:MovieClip = super.makeButtonForLevel(level,isOpen,buttonClass,index,pageNum);
         var userRankForLevel:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"!d§(level);
         if(userRankForLevel && userRankForLevel <= 3)
         {
            crown = new AssetCache.§,!k§("LevelSelectionCrown")();
            crown.gotoAndStop(userRankForLevel);
            crown.x = -78;
            crown.y = -102;
            clip.addChild(crown);
         }
         clip.TextField_LevelNum.text.text = index + 1 + pageNum * LevelManager.§'!7§(level).levelsPerPage;
         return clip;
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         super.uiInteractionHandler(eventIndex,eventName,component);
         switch(eventName)
         {
            case "BACK":
               SoundEngine.§`B§("Menu_Back");
               StateFacebookEpisodeSelection.sPreviousState = STATE_NAME;
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "FRIENDS_BUTTON":
               ultrabookURL = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §85§.§"!,§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§!!'§();
               urlReq = new URLRequest(ultrabookURL);
               navigateToURL(urlReq,"_blank");
               break;
            case "showCredits":
               mNextState = StateCreditsNew.STATE_NAME;
               trace("Really going to credits screen");
         }
      }
      
      override protected function updatePageNumber(index:int) : void
      {
         (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§ ^§.text = (index + 1).toString();
      }
   }
}
