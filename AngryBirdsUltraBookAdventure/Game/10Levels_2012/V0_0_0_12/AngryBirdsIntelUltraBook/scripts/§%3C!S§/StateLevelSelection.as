package §<!S§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIComponentRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import §]!6§.UIRepeaterButtonRovio;
   import §]!6§.UIRepeaterRovio;
   import §]!6§.UITextFieldRovio;
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
       
      
      protected var §6T§:Boolean = false;
      
      protected var §5!?§:UIContainerRovio;
      
      protected var §;!W§:UIContainerRovio;
      
      protected var §=!X§:MovieClip;
      
      protected var §[!2§:Array;
      
      protected var §5!3§:Array;
      
      protected var §,!!§:int = 0;
      
      protected var §3[§:int = 0;
      
      protected var §3!&§:int = 0;
      
      protected var §^!U§:Boolean = false;
      
      protected var §9!f§:§!T§ = null;
      
      protected var §%g§:Dictionary;
      
      protected var §+q§:Array;
      
      protected var §!!"§:Array;
      
      protected var § !A§:§!!8§;
      
      protected var §6Z§:Number = 0;
      
      public function StateLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         for(this.initView(); this.§;!W§.mClip.numChildren > 0; )
         {
            this.§;!W§.mClip.removeChildAt(0);
         }
         this.§5!3§ = [];
         this.§[!2§ = [];
      }
      
      protected function initView() : void
      {
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_LevelSelection[0]);
         this.§;!W§ = §5!M§.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
         this.§5!?§ = §5!M§.getItemByName("Container_LevelSelection") as UIContainerRovio;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]!B§.§>F§.clearLevel();
         §]!B§.§>F§.§,>§(false);
         this.initLevelsRepeater();
         AngryBirdsFP11.playThemeMusic();
         if(this.§5!3§.length == 1)
         {
            (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_Next") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(false);
         }
         else
         {
            (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Next") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(true);
         }
         this.§6Z§ = this.§;!W§.x;
         if(§5!M§.stage)
         {
            §5!M§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§&-§);
         }
      }
      
      protected function §&-§(keyEvent:KeyboardEvent) : void
      {
         if(this.§5!3§.length <= 1)
         {
            return;
         }
         if(keyEvent.keyCode == Keyboard.LEFT)
         {
            this.§!![§();
         }
         else if(keyEvent.keyCode == Keyboard.RIGHT)
         {
            this.§+B§();
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.§7v§();
         this.§%<§();
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      protected function §7v§() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.§[!2§.length; )
         {
            if(-this.§;!W§.x >= this.§5!3§[i].x && -this.§6Z§ < this.§5!3§[i].x)
            {
               for(j = 0; j < this.§[!2§.length; j++)
               {
                  this.§[!2§[j].gotoAndStop("UnSelected");
               }
               this.§3!&§ = i;
               this.§[!2§[i].gotoAndStop("Selected");
               (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§[!2§[i].x;
               this.updatePageNumber(i);
            }
            if(-this.§;!W§.x <= this.§5!3§[i].x && -this.§6Z§ > this.§5!3§[i].x)
            {
               for(j = 0; j < this.§[!2§.length; j++)
               {
                  this.§[!2§[j].gotoAndStop("UnSelected");
               }
               this.§3!&§ = i;
               this.§[!2§[i].gotoAndStop("Selected");
               (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§[!2§[i].x;
               this.updatePageNumber(i);
            }
            i++;
         }
         if(this.§3!&§ != this.§,!!§)
         {
            if(this.§,!!§ > this.§3!&§)
            {
               this.§3[§ = this.§3!&§ + 1;
            }
            else if(this.§,!!§ < this.§3!&§)
            {
               this.§3[§ = this.§3!&§ - 1;
            }
            else
            {
               this.§3[§ = this.§3!&§;
            }
            this.§ !A§.§`]§(this.§+q§[this.§3[§].red,this.§+q§[this.§3[§].green,this.§+q§[this.§3[§].blue);
         }
         this.§6Z§ = this.§;!W§.x;
      }
      
      protected function §%<§() : void
      {
         var distance:Number = NaN;
         for(var i:int = 0; i < this.§5!3§.length; i++)
         {
            distance = this.§;!W§.x + this.§5!3§[i].x;
            distance = Math.abs(distance);
            if(distance > 1000)
            {
               distance = 1000;
            }
            if(Math.abs(this.§5!3§[i].mClip.alpha - (1 - distance / 1000)) > 0.0001)
            {
               this.§5!3§[i].mClip.alpha = 1 - distance / 1000;
            }
            if(this.§5!3§[i].mClip.alpha < 1)
            {
               (this.§5!3§[i] as UIComponentRovio).setEnabled(false);
            }
            else
            {
               (this.§5!3§[i] as UIComponentRovio).setEnabled(true);
            }
         }
      }
      
      override public function deActivate() : void
      {
         if(§5!M§.stage)
         {
            §5!M§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&-§);
         }
         super.deActivate();
         this.§9!§();
         (§5!M§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§;p§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§9!f§)
         {
            this.§9!f§.stop();
            this.§9!f§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(eventName.length > 0 && component is UIRepeaterButtonRovio)
         {
            if((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§^!U§)
               {
                  LevelManager.§]!R§(LevelManager.§"%§(eventName.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
         }
         switch(eventName)
         {
            case "BACK":
               SoundEngine.§9!X§("Menu_Back");
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "NEXT":
               this.§+B§();
               break;
            case "PREV":
               this.§!![§();
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§9!X§("Menu_Confirm");
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
      
      protected function §+B§() : void
      {
         SoundEngine.§9!X§("Menu_Confirm");
         if(!this.§^!U§)
         {
            ++this.§,!!§;
            this.§,!N§(this.§,!!§);
         }
      }
      
      protected function §!![§() : void
      {
         SoundEngine.§9!X§("Menu_Confirm");
         if(!this.§^!U§)
         {
            --this.§,!!§;
            this.§,!N§(this.§,!!§);
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
         this.§+q§ = [];
         this.§!!"§ = [];
         this.§,!!§ = LevelManager.§;![§(LevelManager.§?Q§).§ !_§;
         this.§3[§ = this.§,!!§;
         this.§3!&§ = this.§,!!§;
         trace("We are at page: " + this.§,!!§);
         var chapter:ChapterModel = LevelManager.§;![§(LevelManager.§?Q§);
         for(var i:Number = 0; i < chapter.pageIndexes.length; i++)
         {
            levels = chapter.§;Z§(chapter.pageIndexes[i]);
            this.§+q§.push(chapter.§?b§(i));
            this.§!!"§.push(chapter.§5J§(i));
            offsetX = this.addLevelPage(levels,i,offsetX,chapter);
         }
         this.§ !A§ = new §!!8§(this.§+q§[this.§,!!§].red,this.§+q§[this.§,!!§].green,this.§+q§[this.§,!!§].blue,1);
         §5!M§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§ !A§);
         if(chapter.§set §)
         {
            leftThemeCls = AssetCache.§-9§(chapter.§set §);
            leftThemeClip = new leftThemeCls();
            §5!M§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(leftThemeClip);
         }
         else
         {
            §5!M§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(chapter.§8!^§)
         {
            rightThemeCls = AssetCache.§-9§(chapter.§8!^§);
            rightThemeClip = new rightThemeCls();
            §5!M§.getItemByName("MovieClip_ThemeRight").changeMovieClip(rightThemeClip);
         }
         else
         {
            §5!M§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§6?§();
         if(sPreviousState == StateCutScene.STATE_NAME)
         {
            sPreviousState = "";
            this.§,!N§(this.§3!&§);
         }
         else
         {
            this.§,!N§(this.§,!!§,true);
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
         var buttonCls:Class = AssetCache.§-9§(this.§!!"§[pageNum]);
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
         repeaterXML.@button = this.§!!"§[pageNum];
         repeaterXML.@enabled = "True";
         repeaterXML.@buttonSelectionType = "NO_SELECTION";
         repeaterXML.@fromLibrary = "true";
         var levelRepeater:UIRepeaterRovio = new UIRepeaterRovio(repeaterXML,this.§;!W§,null,null);
         levelRepeater.§%U§(list);
         levelRepeater.setVisibility(true);
         levelRepeater.x += offsetX;
         this.§;!W§.addComponent(levelRepeater);
         this.§5!3§.push(levelRepeater);
         return Number(offsetX + AngryBirdsFP11.§8!6§);
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
      
      protected function §6?§() : void
      {
         var dotCls:Class = null;
         var image:MovieClip = null;
         if(this.§5!3§.length == 1)
         {
            return;
         }
         var offsetX:Number = 0;
         this.§%g§ = new Dictionary();
         for(var i:int = 0; i < this.§5!3§.length; i++)
         {
            dotCls = AssetCache.§-9§("Button_Dot");
            image = new dotCls();
            image.x = AngryBirdsFP11.§8!6§ / 2 + offsetX - this.§5!3§.length * image.width / 2;
            image.y = (§5!M§.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
            if(i == this.§,!!§)
            {
               image.gotoAndStop("Selected");
               (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = image.x;
               (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).y = image.y - image.height;
               this.updatePageNumber(i);
            }
            else
            {
               image.gotoAndStop("UnSelected");
            }
            this.§5!?§.mClip.addChild(image);
            this.§%g§[image] = i;
            this.§[!2§.push(image);
            offsetX += image.width;
            image.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
            image.buttonMode = true;
         }
         offsetX = this.§5!3§.length * image.width / 2 + image.width * 1.5;
         (§5!M§.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsFP11.§8!6§ / 2;
         (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsFP11.§8!6§ / 2;
         (§5!M§.getItemByName("Button_Next") as UIButtonRovio).x = (§5!M§.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
         (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x = (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
      }
      
      protected function §9!§() : void
      {
         if(this.§ !A§)
         {
            this.§ !A§.clean();
         }
         for(var i:int = 0; i < this.§[!2§.length; )
         {
            if(this.§5!?§.mClip.contains(this.§[!2§[i]))
            {
               this.§[!2§[i].removeEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
               this.§5!?§.mClip.removeChild(this.§[!2§[i]);
            }
            i++;
         }
         for(this.§[!2§ = []; this.§;!W§.mClip.numChildren > 0; )
         {
            this.§;!W§.mClip.removeChildAt(0);
         }
         this.§5!3§ = [];
      }
      
      protected function §]4§(e:MouseEvent) : void
      {
         if(!this.§^!U§)
         {
            this.§,!N§(this.§%g§[e.target]);
         }
      }
      
      protected function §"s§(e:MouseEvent) : void
      {
         if(!this.§^!U§)
         {
            mNextState = StateLevelSelection.STATE_NAME;
         }
      }
      
      protected function §,!N§(pageNum:int, instantMove:Boolean = false) : void
      {
         this.§^!U§ = true;
         if(pageNum > this.§5!3§.length - 1)
         {
            pageNum = this.§5!3§.length - 1;
         }
         else if(pageNum < 0)
         {
            pageNum = 0;
         }
         this.§,!!§ = pageNum;
         if(this.§,!!§ > this.§3!&§)
         {
            this.§3[§ = this.§3!&§ + 1;
         }
         else if(this.§,!!§ < this.§3!&§)
         {
            this.§3[§ = this.§3!&§ - 1;
         }
         var newX:Number = -this.§5!3§[pageNum].x;
         var distance:Number = this.§5!3§[pageNum].x + this.§;!W§.x;
         var tweenTime:Number = Math.abs(distance);
         tweenTime /= 1024;
         tweenTime *= TWEEN_TIME;
         if(this.§9!f§ != null)
         {
            this.§9!f§.stop();
         }
         if(instantMove)
         {
            this.§;!W§.x = newX;
         }
         else
         {
            this.§9!f§ = TweenManager.§8!X§.§8m§(this.§;!W§,{"x":newX},null,tweenTime,TweenManager.§&T§);
            this.§9!f§.onComplete = this.§4!I§;
         }
         if(instantMove)
         {
            this.§4!I§();
         }
         else
         {
            this.§9!f§.play();
         }
      }
      
      protected function §4!I§() : void
      {
         for(var i:int = 0; i < this.§[!2§.length; i++)
         {
            if(i == this.§,!!§)
            {
               this.§[!2§[i].gotoAndStop("Selected");
               (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.§[!2§[i].x;
               this.updatePageNumber(i);
            }
            else
            {
               this.§[!2§[i].gotoAndStop("UnSelected");
            }
         }
         this.§^!U§ = false;
         LevelManager.§;![§(LevelManager.§?Q§).§ !_§ = this.§,!!§;
      }
      
      protected function updatePageNumber(index:int) : void
      {
         (§5!M§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§24§.text = LevelManager.§;![§(LevelManager.§?Q§).pageIndexes[index];
      }
   }
}
