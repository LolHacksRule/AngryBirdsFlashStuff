package §[!$§
{
   import § 3§.FacebookUserProgress;
   import §!!0§.SoundEngine;
   import §0!Q§.UIEventListenerRovio;
   import §5=§.§9F§;
   import §6a§.UIContainerRovio;
   import §6a§.UIRepeaterRovio;
   import §6a§.UITextFieldRovio;
   import §7t§.StateChapterSelection;
   import §7t§.StateCreditsNew;
   import §7t§.StateCutScene;
   import §7t§.StateLevelSelection;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import §]B§.BackGroundAnimator;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelSelection extends StateLevelSelection
   {
      
      public static var sForceGoToPage:int = -1;
       
      
      private var §9$§:Boolean = false;
      
      private var §,!1§:Number = 41.666666666666664;
      
      private var §4c§:int = 0;
      
      private var §,4§:BackGroundAnimator;
      
      public function StateFacebookLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_LevelSelection[0]);
         §6^§ = §`=§.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
         §@@§ = §`=§.getItemByName("Container_LevelSelection") as UIContainerRovio;
         this.§,4§ = new BackGroundAnimator(§`=§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         var episode:ChapterModel = LevelManager.§!]§();
         if(episode == null)
         {
            return;
         }
         §`=§.visible = true;
         (§`S§.§=F§ as AngryBirdsUltraBook).§^!c§.§8!k§ = false;
         (§`S§.§=F§ as AngryBirdsUltraBook).§,!@§("");
         (§`S§.§=F§ as AngryBirdsUltraBook).§`<§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         if(§`S§.§[o§.background)
         {
            §`S§.§[o§.background.§^&§();
         }
         var cName:String = LevelManager.§!]§().writtenName;
         §`=§.setText(cName,"TextField_LevelName");
         §`=§.setText(AngryBirdsFP11.sUserProgress.§]J§(episode) + "/" + AngryBirdsFP11.sUserProgress.§7!d§(episode),"Textfield_CollectedStars");
         if(sForceGoToPage != -1)
         {
            §'z§(sForceGoToPage);
            sForceGoToPage = -1;
         }
         if(sPreviousState == StateFacebookEpisodeSelection.STATE_NAME)
         {
            this.§9$§ = true;
            sPreviousState = "";
            §`=§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
            §`=§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         }
         else
         {
            this.§9$§ = false;
            §`=§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§`=§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
            §`=§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§`=§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
         }
         this.§,4§.start();
      }
      
      override public function deActivate() : void
      {
         this.§,4§.stop();
         super.deActivate();
      }
      
      protected function §0p§(tmc:MovieClip) : void
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
         if(this.§9$§)
         {
            this.§4c§ += deltaTime;
            if(this.§4c§ >= this.§,!1§)
            {
               this.§0p§(§`=§.getItemByName("MovieClip_RightCorner").mClip);
               this.§0p§(§`=§.getItemByName("MovieClip_LeftCorner").mClip);
               this.§4c§ = 0;
            }
         }
         this.§,4§.run(deltaTime);
         return super.run(deltaTime);
      }
      
      override public function initLevelsRepeater() : void
      {
         var levels:Array = null;
         var offsetX:Number = 0;
         §1!I§ = [];
         §4h§ = [];
         §=&§ = LevelManager.§7Z§(LevelManager.§]!U§).§0N§;
         §2R§ = §=&§;
         §]Y§ = §=&§;
         trace("We are at page: " + §=&§);
         var chapter:ChapterModel = LevelManager.§7Z§(LevelManager.§]!U§);
         for(var i:Number = 0; i < chapter.pageIndexes.length; i++)
         {
            levels = chapter.§2!<§(chapter.pageIndexes[i]);
            §1!I§.push(chapter.§]!>§(i));
            §4h§.push(chapter.§-f§(i));
            offsetX = this.addLevelPage(levels,i,offsetX,chapter);
         }
         §]d§();
         if(sPreviousState == StateCutScene.STATE_NAME)
         {
            sPreviousState = "";
            §'z§(§]Y§);
         }
         else
         {
            §'z§(§=&§,true);
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
         var buttonCls:Class = AssetCache.§%p§(§4h§[pageNum]);
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
         repeaterXML.@button = §4h§[pageNum];
         repeaterXML.@enabled = "True";
         repeaterXML.@buttonSelectionType = "NO_SELECTION";
         repeaterXML.@fromLibrary = "true";
         var tempOffset:Number = offsetX;
         var levelRepeater:UIRepeaterRovio = new UIRepeaterRovio(repeaterXML,§6^§,null,null);
         levelRepeater.§+!M§ = 5;
         levelRepeater.§8x§ = 0;
         levelRepeater.§2!,§(list);
         levelRepeater.setVisibility(true);
         levelRepeater.x = offsetX;
         levelRepeater.y = 50;
         §6^§.addComponent(levelRepeater);
         § !8§.push(levelRepeater);
         return Number(tempOffset + AngryBirdsFP11.§@]§);
      }
      
      override protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var crown:MovieClip = null;
         var clip:MovieClip = super.makeButtonForLevel(level,isOpen,buttonClass,index,pageNum);
         var userRankForLevel:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"8§(level);
         if(userRankForLevel && userRankForLevel <= 3)
         {
            crown = new AssetCache.§%p§("LevelSelectionCrown")();
            crown.gotoAndStop(userRankForLevel);
            crown.x = -78;
            crown.y = -102;
            clip.addChild(crown);
         }
         clip.TextField_LevelNum.text.text = index + 1 + pageNum * LevelManager.§6X§(level).levelsPerPage;
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
               SoundEngine.§-!h§("Menu_Back");
               StateFacebookEpisodeSelection.sPreviousState = STATE_NAME;
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "FRIENDS_BUTTON":
               ultrabookURL = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §9F§.§+3§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§?]§();
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
         (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§,![§.text = (index + 1).toString();
      }
   }
}
