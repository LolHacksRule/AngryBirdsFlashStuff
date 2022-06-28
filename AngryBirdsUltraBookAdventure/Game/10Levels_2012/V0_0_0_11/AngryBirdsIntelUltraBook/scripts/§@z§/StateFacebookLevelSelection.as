package §@z§
{
   import § D§.§]!B§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §7p§.§+!N§;
   import §<!S§.StateChapterSelection;
   import §<!S§.StateCreditsNew;
   import §<!S§.StateCutScene;
   import §<!S§.StateLevelSelection;
   import §=?§.SoundEngine;
   import §>!-§.UIEventListenerRovio;
   import §?j§.FacebookUserProgress;
   import §?t§.BackGroundAnimator;
   import §]!6§.UIContainerRovio;
   import §]!6§.UIRepeaterRovio;
   import §]!6§.UITextFieldRovio;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelSelection extends StateLevelSelection
   {
      
      public static var sForceGoToPage:int = -1;
       
      
      private var §;!Q§:Boolean = false;
      
      private var §&!S§:Number = 41.666666666666664;
      
      private var §6!2§:int = 0;
      
      private var §8#§:BackGroundAnimator;
      
      public function StateFacebookLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_LevelSelection[0]);
         §;!W§ = §5!M§.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
         §5!?§ = §5!M§.getItemByName("Container_LevelSelection") as UIContainerRovio;
         this.§8#§ = new BackGroundAnimator(§5!M§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         var episode:ChapterModel = LevelManager.§&!e§();
         if(episode == null)
         {
            return;
         }
         §5!M§.visible = true;
         (§]!B§.§%h§ as AngryBirdsUltraBook).§56§.§5^§ = false;
         (§]!B§.§%h§ as AngryBirdsUltraBook).§81§("");
         (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         if(§]!B§.§>F§.background)
         {
            §]!B§.§>F§.background.§"d§();
         }
         var cName:String = LevelManager.§&!e§().writtenName;
         §5!M§.setText(cName,"TextField_LevelName");
         §5!M§.setText(AngryBirdsFP11.sUserProgress.§,l§(episode) + "/" + AngryBirdsFP11.sUserProgress.§8!_§(episode),"Textfield_CollectedStars");
         if(sForceGoToPage != -1)
         {
            §,!N§(sForceGoToPage);
            sForceGoToPage = -1;
         }
         if(sPreviousState == StateFacebookEpisodeSelection.STATE_NAME)
         {
            this.§;!Q§ = true;
            sPreviousState = "";
            §5!M§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
            §5!M§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         }
         else
         {
            this.§;!Q§ = false;
            §5!M§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§5!M§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
            §5!M§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§5!M§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
         }
         this.§8#§.start();
      }
      
      override public function deActivate() : void
      {
         this.§8#§.stop();
         super.deActivate();
      }
      
      protected function §,!3§(tmc:MovieClip) : void
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
         if(this.§;!Q§)
         {
            this.§6!2§ += deltaTime;
            if(this.§6!2§ >= this.§&!S§)
            {
               this.§,!3§(§5!M§.getItemByName("MovieClip_RightCorner").mClip);
               this.§,!3§(§5!M§.getItemByName("MovieClip_LeftCorner").mClip);
               this.§6!2§ = 0;
            }
         }
         this.§8#§.run(deltaTime);
         return super.run(deltaTime);
      }
      
      override public function initLevelsRepeater() : void
      {
         var levels:Array = null;
         var offsetX:Number = 0;
         §+q§ = [];
         §!!"§ = [];
         §,!!§ = LevelManager.§;![§(LevelManager.§?Q§).§ !_§;
         §3[§ = §,!!§;
         §3!&§ = §,!!§;
         trace("We are at page: " + §,!!§);
         var chapter:ChapterModel = LevelManager.§;![§(LevelManager.§?Q§);
         for(var i:Number = 0; i < chapter.pageIndexes.length; i++)
         {
            levels = chapter.§;Z§(chapter.pageIndexes[i]);
            §+q§.push(chapter.§?b§(i));
            §!!"§.push(chapter.§5J§(i));
            offsetX = this.addLevelPage(levels,i,offsetX,chapter);
         }
         §6?§();
         if(sPreviousState == StateCutScene.STATE_NAME)
         {
            sPreviousState = "";
            §,!N§(§3!&§);
         }
         else
         {
            §,!N§(§,!!§,true);
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
         var buttonCls:Class = AssetCache.§-9§(§!!"§[pageNum]);
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
         repeaterXML.@button = §!!"§[pageNum];
         repeaterXML.@enabled = "True";
         repeaterXML.@buttonSelectionType = "NO_SELECTION";
         repeaterXML.@fromLibrary = "true";
         var tempOffset:Number = offsetX;
         var levelRepeater:UIRepeaterRovio = new UIRepeaterRovio(repeaterXML,§;!W§,null,null);
         levelRepeater.§6V§ = 5;
         levelRepeater.§>P§ = 0;
         levelRepeater.§%U§(list);
         levelRepeater.setVisibility(true);
         levelRepeater.x = offsetX;
         levelRepeater.y = 50;
         §;!W§.addComponent(levelRepeater);
         §5!3§.push(levelRepeater);
         return Number(tempOffset + AngryBirdsFP11.§8!6§);
      }
      
      override protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var crown:MovieClip = null;
         var clip:MovieClip = super.makeButtonForLevel(level,isOpen,buttonClass,index,pageNum);
         var userRankForLevel:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§`q§(level);
         if(userRankForLevel && userRankForLevel <= 3)
         {
            crown = new AssetCache.§-9§("LevelSelectionCrown")();
            crown.gotoAndStop(userRankForLevel);
            crown.x = -78;
            crown.y = -102;
            clip.addChild(crown);
         }
         clip.TextField_LevelNum.text.text = index + 1 + pageNum * LevelManager.§;<§(level).levelsPerPage;
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
               SoundEngine.§9!X§("Menu_Back");
               StateFacebookEpisodeSelection.sPreviousState = STATE_NAME;
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "FRIENDS_BUTTON":
               ultrabookURL = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §+!N§.§;7§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§"§();
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
         (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§24§.text = (index + 1).toString();
      }
   }
}
