package §9c§
{
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §"!2§.UIRepeaterButtonRovio;
   import §"!2§.UIRepeaterRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIComponentRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §^h§.§5!9§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class StateLevelSelection extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const TWEEN_TIME:Number = 0.5;
      
      public static var sPreviousState:String = "";
       
      
      protected var §7!^§:Boolean = false;
      
      protected var §@v§:UIContainerRovio;
      
      protected var §'!L§:UIContainerRovio;
      
      protected var override:MovieClip;
      
      protected var §?!K§:Array;
      
      protected var §5!k§:Array;
      
      protected var §1i§:int = 0;
      
      protected var §#§:int = 0;
      
      protected var §?f§:int = 0;
      
      protected var § v§:Boolean = false;
      
      protected var §]!L§:§9h§ = null;
      
      protected var § !`§:Dictionary;
      
      protected var §^!A§:Array;
      
      protected var §04§:Array;
      
      protected var §@!A§:§5!9§;
      
      protected var §3!W§:Number = 0;
      
      public function StateLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         for(this.initView(); this.§'!L§.mClip.numChildren > 0; )
         {
            this.§'!L§.mClip.removeChildAt(0);
         }
         this.§5!k§ = [];
         this.§?!K§ = [];
      }
      
      protected function initView() : void
      {
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_LevelSelection[0]);
         this.§'!L§ = §^,§.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
         this.§@v§ = §^,§.getItemByName("Container_LevelSelection") as UIContainerRovio;
      }
      
      override public function activate() : void
      {
         super.activate();
         §4!T§.§1t§.clearLevel();
         §4!T§.§1t§.§@!F§(false);
         this.initLevelsRepeater();
         AngryBirdsFP11.playThemeMusic();
         if(this.§5!k§.length == 1)
         {
            (§^,§.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_Next") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(false);
         }
         else
         {
            (§^,§.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Next") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(true);
         }
         this.§3!W§ = this.§'!L§.x;
         if(§^,§.stage)
         {
            §^,§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§'!D§);
         }
      }
      
      protected function §'!D§(keyEvent:KeyboardEvent) : void
      {
         if(this.§5!k§.length <= 1)
         {
            return;
         }
         if(keyEvent.keyCode == Keyboard.LEFT)
         {
            this.§2!Y§();
         }
         else if(keyEvent.keyCode == Keyboard.RIGHT)
         {
            this.§`!P§();
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.§5!-§();
         this.§0!_§();
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      protected function §5!-§() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.§?!K§.length; )
         {
            if(-this.§'!L§.x >= this.§5!k§[i].x && -this.§3!W§ < this.§5!k§[i].x)
            {
               for(j = 0; j < this.§?!K§.length; j++)
               {
                  this.§?!K§[j].gotoAndStop("UnSelected");
               }
               this.§?f§ = i;
               this.§?!K§[i].gotoAndStop("Selected");
               (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§?!K§[i].x;
               this.updatePageNumber(i);
            }
            if(-this.§'!L§.x <= this.§5!k§[i].x && -this.§3!W§ > this.§5!k§[i].x)
            {
               for(j = 0; j < this.§?!K§.length; j++)
               {
                  this.§?!K§[j].gotoAndStop("UnSelected");
               }
               this.§?f§ = i;
               this.§?!K§[i].gotoAndStop("Selected");
               (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§?!K§[i].x;
               this.updatePageNumber(i);
            }
            i++;
         }
         if(this.§?f§ != this.§1i§)
         {
            if(this.§1i§ > this.§?f§)
            {
               this.§#§ = this.§?f§ + 1;
            }
            else if(this.§1i§ < this.§?f§)
            {
               this.§#§ = this.§?f§ - 1;
            }
            else
            {
               this.§#§ = this.§?f§;
            }
            this.§@!A§.§00§(this.§^!A§[this.§#§].red,this.§^!A§[this.§#§].green,this.§^!A§[this.§#§].blue);
         }
         this.§3!W§ = this.§'!L§.x;
      }
      
      protected function §0!_§() : void
      {
         var distance:Number = NaN;
         for(var i:int = 0; i < this.§5!k§.length; i++)
         {
            distance = this.§'!L§.x + this.§5!k§[i].x;
            distance = Math.abs(distance);
            if(distance > 1000)
            {
               distance = 1000;
            }
            if(Math.abs(this.§5!k§[i].mClip.alpha - (1 - distance / 1000)) > 0.0001)
            {
               this.§5!k§[i].mClip.alpha = 1 - distance / 1000;
            }
            if(this.§5!k§[i].mClip.alpha < 1)
            {
               (this.§5!k§[i] as UIComponentRovio).setEnabled(false);
            }
            else
            {
               (this.§5!k§[i] as UIComponentRovio).setEnabled(true);
            }
         }
      }
      
      override public function deActivate() : void
      {
         if(§^,§.stage)
         {
            §^,§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!D§);
         }
         super.deActivate();
         this.§;!`§();
         (§^,§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§ !Y§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§]!L§)
         {
            this.§]!L§.stop();
            this.§]!L§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(eventName.length > 0 && component is UIRepeaterButtonRovio)
         {
            if((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§ v§)
               {
                  LevelManager.§%<§(LevelManager.§[!U§(eventName.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
         }
         switch(eventName)
         {
            case "BACK":
               SoundEngine.§`B§("Menu_Back");
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "NEXT":
               this.§`!P§();
               break;
            case "PREV":
               this.§2!Y§();
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§`B§("Menu_Confirm");
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
      
      protected function §`!P§() : void
      {
         SoundEngine.§`B§("Menu_Confirm");
         if(!this.§ v§)
         {
            ++this.§1i§;
            this.§?M§(this.§1i§);
         }
      }
      
      protected function §2!Y§() : void
      {
         SoundEngine.§`B§("Menu_Confirm");
         if(!this.§ v§)
         {
            --this.§1i§;
            this.§?M§(this.§1i§);
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var levels:Array = null;
         var leftThemeCls:Class = null;
         var leftThemeClip:MovieClip = null;
         var rightThemeCls:Class = null;
         var rightThemeClip:MovieClip = null;
         var offsetX:Number = 0;
         this.§^!A§ = [];
         this.§04§ = [];
         this.§1i§ = LevelManager.§ m§(LevelManager.§3V§).§9!O§;
         this.§#§ = this.§1i§;
         this.§?f§ = this.§1i§;
         trace("We are at page: " + this.§1i§);
         var chapter:ChapterModel = LevelManager.§ m§(LevelManager.§3V§);
         for(var i:Number = 0; i < chapter.pageIndexes.length; i++)
         {
            levels = chapter.§]l§(chapter.pageIndexes[i]);
            this.§^!A§.push(chapter.§>!O§(i));
            this.§04§.push(chapter.§4[§(i));
            offsetX = this.addLevelPage(levels,i,offsetX,chapter);
         }
         this.§@!A§ = new §5!9§(this.§^!A§[this.§1i§].red,this.§^!A§[this.§1i§].green,this.§^!A§[this.§1i§].blue,1);
         §^,§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§@!A§);
         if(chapter.§=F§)
         {
            leftThemeCls = AssetCache.§,!k§(chapter.§=F§);
            leftThemeClip = new leftThemeCls();
            §^,§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(leftThemeClip);
         }
         else
         {
            §^,§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(chapter.§,`§)
         {
            rightThemeCls = AssetCache.§,!k§(chapter.§,`§);
            rightThemeClip = new rightThemeCls();
            §^,§.getItemByName("MovieClip_ThemeRight").changeMovieClip(rightThemeClip);
         }
         else
         {
            §^,§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§2?§();
         if(sPreviousState == StateCutScene.STATE_NAME)
         {
            sPreviousState = "";
            this.§?M§(this.§?f§);
         }
         else
         {
            this.§?M§(this.§1i§,true);
         }
      }
      
      protected function addLevelPage(levels:Array, pageNum:int, offsetX:Number, chapter:ChapterModel) : Number
      {
         var repeaterXML:XML = null;
         var key:String = null;
         var isOpen:Boolean = false;
         var clip:MovieClip = null;
         var but:XML = null;
         var list:Array = new Array();
         list[0] = new Array();
         var buttonCls:Class = AssetCache.§,!k§(this.§04§[pageNum]);
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
         if(levels.length == 15 || levels.length == 10)
         {
            repeaterXML.@name = "Repeater_LevelSelection15";
         }
         else
         {
            repeaterXML.@name = "Repeater_LevelSelection";
         }
         repeaterXML.@button = this.§04§[pageNum];
         repeaterXML.@enabled = "True";
         repeaterXML.@buttonSelectionType = "NO_SELECTION";
         repeaterXML.@fromLibrary = "true";
         var levelRepeater:UIRepeaterRovio = new UIRepeaterRovio(repeaterXML,this.§'!L§,null,null);
         levelRepeater.§>!0§(list);
         levelRepeater.setVisibility(true);
         levelRepeater.x += offsetX;
         this.§'!L§.addComponent(levelRepeater);
         this.§5!k§.push(levelRepeater);
         return Number(offsetX + AngryBirdsFP11.§8!Z§);
      }
      
      protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var numStars:Number = NaN;
         var clip:MovieClip = new buttonClass();
         clip.TextField_LevelNum.text.text = (index + 1).toString();
         if(isOpen)
         {
            clip.gotoAndStop("Open");
            clip.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(level) == 100)
            {
               clip.MovieClip_Feather.gotoAndStop("Visible");
               clip.MovieClip_Feather.mouseEnabled = false;
            }
            else
            {
               clip.MovieClip_Feather.gotoAndStop("Hidden");
               clip.MovieClip_Feather.mouseEnabled = false;
            }
         }
         else
         {
            clip.gotoAndStop("Locked");
         }
         clip.isOpen = isOpen;
         if(isOpen)
         {
            numStars = AngryBirdsFP11.sUserProgress.getStarsForLevel(level);
            clip.MovieClip_Stars.gotoAndStop(numStars.toString() + "_stars");
         }
         return clip;
      }
      
      protected function §2?§() : void
      {
         var dotCls:Class = null;
         var image:MovieClip = null;
         if(this.§5!k§.length == 1)
         {
            return;
         }
         var offsetX:Number = 0;
         this.§ !`§ = new Dictionary();
         for(var i:int = 0; i < this.§5!k§.length; i++)
         {
            dotCls = AssetCache.§,!k§("Button_Dot");
            image = new dotCls();
            image.x = AngryBirdsFP11.§8!Z§ / 2 + offsetX - this.§5!k§.length * image.width / 2;
            image.y = (§^,§.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
            if(i == this.§1i§)
            {
               image.gotoAndStop("Selected");
               (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = image.x;
               (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).y = image.y - image.height;
               this.updatePageNumber(i);
            }
            else
            {
               image.gotoAndStop("UnSelected");
            }
            this.§@v§.mClip.addChild(image);
            this.§ !`§[image] = i;
            this.§?!K§.push(image);
            offsetX += image.width;
            image.addEventListener(MouseEvent.MOUSE_DOWN,this.§1c§);
            image.buttonMode = true;
         }
         offsetX = this.§5!k§.length * image.width / 2 + image.width * 1.5;
         (§^,§.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsFP11.§8!Z§ / 2;
         (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsFP11.§8!Z§ / 2;
         (§^,§.getItemByName("Button_Next") as UIButtonRovio).x = (§^,§.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
         (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x = (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
      }
      
      protected function §;!`§() : void
      {
         if(this.§@!A§)
         {
            this.§@!A§.clean();
         }
         for(var i:int = 0; i < this.§?!K§.length; )
         {
            if(this.§@v§.mClip.contains(this.§?!K§[i]))
            {
               this.§?!K§[i].removeEventListener(MouseEvent.MOUSE_DOWN,this.§1c§);
               this.§@v§.mClip.removeChild(this.§?!K§[i]);
            }
            i++;
         }
         for(this.§?!K§ = []; this.§'!L§.mClip.numChildren > 0; )
         {
            this.§'!L§.mClip.removeChildAt(0);
         }
         this.§5!k§ = [];
      }
      
      protected function §1c§(e:MouseEvent) : void
      {
         if(!this.§ v§)
         {
            this.§?M§(this.§ !`§[e.target]);
         }
      }
      
      protected function §2!N§(e:MouseEvent) : void
      {
         if(!this.§ v§)
         {
            mNextState = StateLevelSelection.STATE_NAME;
         }
      }
      
      protected function §?M§(pageNum:int, instantMove:Boolean = false) : void
      {
         this.§ v§ = true;
         if(pageNum > this.§5!k§.length - 1)
         {
            pageNum = this.§5!k§.length - 1;
         }
         else if(pageNum < 0)
         {
            pageNum = 0;
         }
         this.§1i§ = pageNum;
         if(this.§1i§ > this.§?f§)
         {
            this.§#§ = this.§?f§ + 1;
         }
         else if(this.§1i§ < this.§?f§)
         {
            this.§#§ = this.§?f§ - 1;
         }
         var newX:Number = -this.§5!k§[pageNum].x;
         var distance:Number = this.§5!k§[pageNum].x + this.§'!L§.x;
         var tweenTime:Number = Math.abs(distance);
         tweenTime /= 1024;
         tweenTime *= TWEEN_TIME;
         if(this.§]!L§ != null)
         {
            this.§]!L§.stop();
         }
         if(instantMove)
         {
            this.§'!L§.x = newX;
         }
         else
         {
            this.§]!L§ = TweenManager.§&!'§.§3L§(this.§'!L§,{"x":newX},null,tweenTime,TweenManager.§[!0§);
            this.§]!L§.onComplete = this.§=!N§;
         }
         if(instantMove)
         {
            this.§=!N§();
         }
         else
         {
            this.§]!L§.play();
         }
      }
      
      protected function §=!N§() : void
      {
         for(var i:int = 0; i < this.§?!K§.length; i++)
         {
            if(i == this.§1i§)
            {
               this.§?!K§[i].gotoAndStop("Selected");
               (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§?!K§[i].x;
               this.updatePageNumber(i);
            }
            else
            {
               this.§?!K§[i].gotoAndStop("UnSelected");
            }
         }
         this.§ v§ = false;
         LevelManager.§ m§(LevelManager.§3V§).§9!O§ = this.§1i§;
      }
      
      protected function updatePageNumber(index:int) : void
      {
         (§^,§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§ ^§.text = LevelManager.§ m§(LevelManager.§3V§).pageIndexes[index];
      }
   }
}
