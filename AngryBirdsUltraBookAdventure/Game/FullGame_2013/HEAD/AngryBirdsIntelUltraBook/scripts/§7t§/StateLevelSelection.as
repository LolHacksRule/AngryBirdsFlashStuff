package §7t§
{
   import §!!0§.SoundEngine;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIComponentRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §5!3§.§2!R§;
   import §6a§.UIButtonRovio;
   import §6a§.UIContainerRovio;
   import §6a§.UIRepeaterButtonRovio;
   import §6a§.UIRepeaterRovio;
   import §6a§.UITextFieldRovio;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
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
       
      
      protected var §,!X§:Boolean = false;
      
      protected var §@@§:UIContainerRovio;
      
      protected var §6^§:UIContainerRovio;
      
      protected var §3A§:MovieClip;
      
      protected var §!!H§:Array;
      
      protected var § !8§:Array;
      
      protected var §=&§:int = 0;
      
      protected var §2R§:int = 0;
      
      protected var §]Y§:int = 0;
      
      protected var §-!k§:Boolean = false;
      
      protected var §<A§:§?W§ = null;
      
      protected var §&X§:Dictionary;
      
      protected var §1!I§:Array;
      
      protected var §4h§:Array;
      
      protected var §%!Q§:§2!R§;
      
      protected var §4!`§:Number = 0;
      
      public function StateLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         for(this.initView(); this.§6^§.mClip.numChildren > 0; )
         {
            this.§6^§.mClip.removeChildAt(0);
         }
         this.§ !8§ = [];
         this.§!!H§ = [];
      }
      
      protected function initView() : void
      {
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_LevelSelection[0]);
         this.§6^§ = §`=§.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
         this.§@@§ = §`=§.getItemByName("Container_LevelSelection") as UIContainerRovio;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`S§.§[o§.clearLevel();
         §`S§.§[o§.§#!$§(false);
         this.initLevelsRepeater();
         AngryBirdsFP11.playThemeMusic();
         if(this.§ !8§.length == 1)
         {
            (§`=§.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_Next") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(false);
         }
         else
         {
            (§`=§.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Next") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(true);
         }
         this.§4!`§ = this.§6^§.x;
         if(§`=§.stage)
         {
            §`=§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§8t§);
         }
      }
      
      protected function §8t§(keyEvent:KeyboardEvent) : void
      {
         if(this.§ !8§.length <= 1)
         {
            return;
         }
         if(keyEvent.keyCode == Keyboard.LEFT)
         {
            this.§0!e§();
         }
         else if(keyEvent.keyCode == Keyboard.RIGHT)
         {
            this.§!S§();
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.§2!D§();
         this.§6!G§();
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      protected function §2!D§() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.§!!H§.length; )
         {
            if(-this.§6^§.x >= this.§ !8§[i].x && -this.§4!`§ < this.§ !8§[i].x)
            {
               for(j = 0; j < this.§!!H§.length; j++)
               {
                  this.§!!H§[j].gotoAndStop("UnSelected");
               }
               this.§]Y§ = i;
               this.§!!H§[i].gotoAndStop("Selected");
               (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§!!H§[i].x;
               this.updatePageNumber(i);
            }
            if(-this.§6^§.x <= this.§ !8§[i].x && -this.§4!`§ > this.§ !8§[i].x)
            {
               for(j = 0; j < this.§!!H§.length; j++)
               {
                  this.§!!H§[j].gotoAndStop("UnSelected");
               }
               this.§]Y§ = i;
               this.§!!H§[i].gotoAndStop("Selected");
               (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§!!H§[i].x;
               this.updatePageNumber(i);
            }
            i++;
         }
         if(this.§]Y§ != this.§=&§)
         {
            if(this.§=&§ > this.§]Y§)
            {
               this.§2R§ = this.§]Y§ + 1;
            }
            else if(this.§=&§ < this.§]Y§)
            {
               this.§2R§ = this.§]Y§ - 1;
            }
            else
            {
               this.§2R§ = this.§]Y§;
            }
            this.§%!Q§.§6!6§(this.§1!I§[this.§2R§].red,this.§1!I§[this.§2R§].green,this.§1!I§[this.§2R§].blue);
         }
         this.§4!`§ = this.§6^§.x;
      }
      
      protected function §6!G§() : void
      {
         var distance:Number = NaN;
         for(var i:int = 0; i < this.§ !8§.length; i++)
         {
            distance = this.§6^§.x + this.§ !8§[i].x;
            distance = Math.abs(distance);
            if(distance > 1000)
            {
               distance = 1000;
            }
            if(Math.abs(this.§ !8§[i].mClip.alpha - (1 - distance / 1000)) > 0.0001)
            {
               this.§ !8§[i].mClip.alpha = 1 - distance / 1000;
            }
            if(this.§ !8§[i].mClip.alpha < 1)
            {
               (this.§ !8§[i] as UIComponentRovio).setEnabled(false);
            }
            else
            {
               (this.§ !8§[i] as UIComponentRovio).setEnabled(true);
            }
         }
      }
      
      override public function deActivate() : void
      {
         if(§`=§.stage)
         {
            §`=§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8t§);
         }
         super.deActivate();
         this.§?<§();
         (§`=§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§=t§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§<A§)
         {
            this.§<A§.stop();
            this.§<A§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(eventName.length > 0 && component is UIRepeaterButtonRovio)
         {
            if((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§-!k§)
               {
                  LevelManager.§?h§(LevelManager.§'!^§(eventName.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
         }
         switch(eventName)
         {
            case "BACK":
               SoundEngine.§-!h§("Menu_Back");
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "NEXT":
               this.§!S§();
               break;
            case "PREV":
               this.§0!e§();
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§-!h§("Menu_Confirm");
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
      
      protected function §!S§() : void
      {
         SoundEngine.§-!h§("Menu_Confirm");
         if(!this.§-!k§)
         {
            ++this.§=&§;
            this.§'z§(this.§=&§);
         }
      }
      
      protected function §0!e§() : void
      {
         SoundEngine.§-!h§("Menu_Confirm");
         if(!this.§-!k§)
         {
            --this.§=&§;
            this.§'z§(this.§=&§);
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
         this.§1!I§ = [];
         this.§4h§ = [];
         this.§=&§ = LevelManager.§7Z§(LevelManager.§]!U§).§0N§;
         this.§2R§ = this.§=&§;
         this.§]Y§ = this.§=&§;
         trace("We are at page: " + this.§=&§);
         var chapter:ChapterModel = LevelManager.§7Z§(LevelManager.§]!U§);
         for(var i:Number = 0; i < chapter.pageIndexes.length; i++)
         {
            levels = chapter.§2!<§(chapter.pageIndexes[i]);
            this.§1!I§.push(chapter.§]!>§(i));
            this.§4h§.push(chapter.§-f§(i));
            offsetX = this.addLevelPage(levels,i,offsetX,chapter);
         }
         this.§%!Q§ = new §2!R§(this.§1!I§[this.§=&§].red,this.§1!I§[this.§=&§].green,this.§1!I§[this.§=&§].blue,1);
         §`=§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§%!Q§);
         if(chapter.§=g§)
         {
            leftThemeCls = AssetCache.§%p§(chapter.§=g§);
            leftThemeClip = new leftThemeCls();
            §`=§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(leftThemeClip);
         }
         else
         {
            §`=§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(chapter.§>3§)
         {
            rightThemeCls = AssetCache.§%p§(chapter.§>3§);
            rightThemeClip = new rightThemeCls();
            §`=§.getItemByName("MovieClip_ThemeRight").changeMovieClip(rightThemeClip);
         }
         else
         {
            §`=§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§]d§();
         if(sPreviousState == StateCutScene.STATE_NAME)
         {
            sPreviousState = "";
            this.§'z§(this.§]Y§);
         }
         else
         {
            this.§'z§(this.§=&§,true);
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
         var buttonCls:Class = AssetCache.§%p§(this.§4h§[pageNum]);
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
         repeaterXML.@button = this.§4h§[pageNum];
         repeaterXML.@enabled = "True";
         repeaterXML.@buttonSelectionType = "NO_SELECTION";
         repeaterXML.@fromLibrary = "true";
         var levelRepeater:UIRepeaterRovio = new UIRepeaterRovio(repeaterXML,this.§6^§,null,null);
         levelRepeater.§2!,§(list);
         levelRepeater.setVisibility(true);
         levelRepeater.x += offsetX;
         this.§6^§.addComponent(levelRepeater);
         this.§ !8§.push(levelRepeater);
         return Number(offsetX + AngryBirdsFP11.§@]§);
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
      
      protected function §]d§() : void
      {
         var dotCls:Class = null;
         var image:MovieClip = null;
         if(this.§ !8§.length == 1)
         {
            return;
         }
         var offsetX:Number = 0;
         this.§&X§ = new Dictionary();
         for(var i:int = 0; i < this.§ !8§.length; i++)
         {
            dotCls = AssetCache.§%p§("Button_Dot");
            image = new dotCls();
            image.x = AngryBirdsFP11.§@]§ / 2 + offsetX - this.§ !8§.length * image.width / 2;
            image.y = (§`=§.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
            if(i == this.§=&§)
            {
               image.gotoAndStop("Selected");
               (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = image.x;
               (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).y = image.y - image.height;
               this.updatePageNumber(i);
            }
            else
            {
               image.gotoAndStop("UnSelected");
            }
            this.§@@§.mClip.addChild(image);
            this.§&X§[image] = i;
            this.§!!H§.push(image);
            offsetX += image.width;
            image.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!S§);
            image.buttonMode = true;
         }
         offsetX = this.§ !8§.length * image.width / 2 + image.width * 1.5;
         (§`=§.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsFP11.§@]§ / 2;
         (§`=§.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsFP11.§@]§ / 2;
         (§`=§.getItemByName("Button_Next") as UIButtonRovio).x = (§`=§.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
         (§`=§.getItemByName("Button_Prev") as UIButtonRovio).x = (§`=§.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
      }
      
      protected function §?<§() : void
      {
         if(this.§%!Q§)
         {
            this.§%!Q§.clean();
         }
         for(var i:int = 0; i < this.§!!H§.length; )
         {
            if(this.§@@§.mClip.contains(this.§!!H§[i]))
            {
               this.§!!H§[i].removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!S§);
               this.§@@§.mClip.removeChild(this.§!!H§[i]);
            }
            i++;
         }
         for(this.§!!H§ = []; this.§6^§.mClip.numChildren > 0; )
         {
            this.§6^§.mClip.removeChildAt(0);
         }
         this.§ !8§ = [];
      }
      
      protected function §[!S§(e:MouseEvent) : void
      {
         if(!this.§-!k§)
         {
            this.§'z§(this.§&X§[e.target]);
         }
      }
      
      protected function §<;§(e:MouseEvent) : void
      {
         if(!this.§-!k§)
         {
            mNextState = StateLevelSelection.STATE_NAME;
         }
      }
      
      protected function §'z§(pageNum:int, instantMove:Boolean = false) : void
      {
         this.§-!k§ = true;
         if(pageNum > this.§ !8§.length - 1)
         {
            pageNum = this.§ !8§.length - 1;
         }
         else if(pageNum < 0)
         {
            pageNum = 0;
         }
         this.§=&§ = pageNum;
         if(this.§=&§ > this.§]Y§)
         {
            this.§2R§ = this.§]Y§ + 1;
         }
         else if(this.§=&§ < this.§]Y§)
         {
            this.§2R§ = this.§]Y§ - 1;
         }
         var newX:Number = -this.§ !8§[pageNum].x;
         var distance:Number = this.§ !8§[pageNum].x + this.§6^§.x;
         var tweenTime:Number = Math.abs(distance);
         tweenTime /= 1024;
         tweenTime *= TWEEN_TIME;
         if(this.§<A§ != null)
         {
            this.§<A§.stop();
         }
         if(instantMove)
         {
            this.§6^§.x = newX;
         }
         else
         {
            this.§<A§ = TweenManager.§7!E§.§5§(this.§6^§,{"x":newX},null,tweenTime,TweenManager.§2!'§);
            this.§<A§.onComplete = this.§<!]§;
         }
         if(instantMove)
         {
            this.§<!]§();
         }
         else
         {
            this.§<A§.play();
         }
      }
      
      protected function §<!]§() : void
      {
         for(var i:int = 0; i < this.§!!H§.length; i++)
         {
            if(i == this.§=&§)
            {
               this.§!!H§[i].gotoAndStop("Selected");
               (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§!!H§[i].x;
               this.updatePageNumber(i);
            }
            else
            {
               this.§!!H§[i].gotoAndStop("UnSelected");
            }
         }
         this.§-!k§ = false;
         LevelManager.§7Z§(LevelManager.§]!U§).§0N§ = this.§=&§;
      }
      
      protected function updatePageNumber(index:int) : void
      {
         (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§,![§.text = LevelManager.§7Z§(LevelManager.§]!U§).pageIndexes[index];
      }
   }
}
