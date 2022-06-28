package §9c§
{
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class StateChapterSelection extends StateBase
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const TWEEN_TIME:Number = 0.5;
       
      
      private var §9l§:Sprite;
      
      private var §@v§:UIContainerRovio;
      
      private var §!j§:Array;
      
      private var §?!K§:Array;
      
      private var §^!W§:int = 0;
      
      private var §?!Q§:Number = 0;
      
      private var §3!'§:Number = 0;
      
      private var §!!c§:Dictionary;
      
      private var §^!P§:Dictionary;
      
      private var §]!L§:§9h§ = null;
      
      private var §?K§:Boolean = false;
      
      private var §9w§:Number = 0;
      
      public function StateChapterSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         super(initObject,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_ChapterSelection[0]);
         this.§4!V§();
      }
      
      override public function activate() : void
      {
         var image:MovieClip = null;
         var chapter:ChapterModel = null;
         super.activate();
         §4!T§.§1t§.§@!F§(false);
         var chapterNum:int = 0;
         for each(image in this.§!j§)
         {
            chapter = LevelManager.§ m§(chapterNum);
            if(image.Textfield_ME_Score != null)
            {
               image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]!$§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§#!-§(chapter);
            }
            if(image.Textfield_CollectedStars != null)
            {
               image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§8!2§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§@!3§(chapter);
            }
            if(image.Textfield_Score != null)
            {
               image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8!6§(chapter);
            }
            chapterNum++;
         }
      }
      
      private function §4!V§() : void
      {
         var chapter:ChapterModel = null;
         var chapterName:String = null;
         this.§@v§ = §^,§.getItemByName("Container_ChapterSelection") as UIContainerRovio;
         this.§!j§ = [];
         this.§?!K§ = [];
         var offsetX:Number = 0;
         this.§9l§ = new Sprite();
         this.§9l§.y = AngryBirdsFP11.include / 2;
         this.§?!Q§ = AngryBirdsFP11.§8!Z§ / 2;
         this.§9l§.x = this.§?!Q§;
         this.§@v§.mClip.addChild(this.§9l§);
         this.§^!P§ = new Dictionary();
         for(var chapterNum:int = 0; chapterNum < LevelManager.§8H§(); chapterNum++)
         {
            chapter = LevelManager.§ m§(chapterNum);
            chapterName = "MovieClip_" + chapter.menuImage;
            offsetX = this.§7A§(chapterName,offsetX,chapterNum);
         }
         offsetX = this.§7A§("MovieClip_Chapter_Selection_More_Coming",offsetX,chapterNum);
         chapterNum++;
         offsetX = this.§7A§("MovieClip_Chapter_Selection_Shop",offsetX,chapterNum);
         this.§ use§();
      }
      
      private function § use§() : void
      {
         var dotCls:Class = null;
         var image:MovieClip = null;
         var offsetX:Number = 0;
         this.§!!c§ = new Dictionary();
         for(var i:int = 0; i < this.§!j§.length; i++)
         {
            dotCls = AssetCache.§,!k§("Button_Dot");
            image = new dotCls();
            if(i == this.§^!W§)
            {
               image.gotoAndStop("Selected");
            }
            else
            {
               image.gotoAndStop("UnSelected");
            }
            image.x = AngryBirdsFP11.§8!Z§ / 2 + offsetX - this.§!j§.length * image.width / 2;
            image.y = (§^,§.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
            this.§@v§.mClip.addChild(image);
            image.buttonMode = true;
            this.§!!c§[image] = i;
            this.§?!K§.push(image);
            offsetX += image.width;
            image.addEventListener(MouseEvent.MOUSE_DOWN,this.§1c§);
         }
         trace("Scale: " + §4!T§.§-!#§);
         offsetX = this.§!j§.length * image.width / 2 + image.width * 1.5;
         (§^,§.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsFP11.§8!Z§ / 2;
         (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsFP11.§8!Z§ / 2;
         (§^,§.getItemByName("Button_Next") as UIButtonRovio).x = (§^,§.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
         (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x = (§^,§.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
      }
      
      private function §7A§(chapterName:String, offsetX:Number, chapterNum:int) : Number
      {
         var chapter:ChapterModel = null;
         var chapterCls:Class = null;
         var image:MovieClip = null;
         if(AssetCache.§0u§(chapterName))
         {
            chapter = LevelManager.§ m§(chapterNum);
            chapterCls = AssetCache.§,!k§(chapterName);
            image = new chapterCls();
            image.x = offsetX;
            this.§9l§.addChild(image);
            this.§!j§.push(image);
            offsetX += image.width * 1.55;
            this.§^!P§[image] = chapterNum;
            image.addEventListener(MouseEvent.CLICK,this.§2!N§);
            image.buttonMode = true;
            if(image.Textfield_CollectedStars != null)
            {
               image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§8!2§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§@!3§(chapter);
            }
            if(image.Textfield_Score != null)
            {
               image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8!6§(chapter);
            }
            if(image.Textfield_ME_Score != null)
            {
               image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]!$§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§#!-§(chapter);
            }
         }
         return offsetX;
      }
      
      private function §1c§(e:MouseEvent) : void
      {
         if(!this.§?K§)
         {
            this.§=M§(this.§!!c§[e.target]);
         }
      }
      
      private function §2!N§(e:MouseEvent) : void
      {
         var chapter:MovieClip = null;
         if(!this.§?K§)
         {
            if(!(e.currentTarget is MovieClip))
            {
               return;
            }
            chapter = MovieClip(e.currentTarget);
            if(this.§^!W§ != this.§^!P§[chapter])
            {
               this.§=M§(this.§^!P§[chapter]);
            }
            else if(this.§^!P§[chapter] < LevelManager.§8H§())
            {
               LevelManager.§3V§ = this.§^!P§[chapter];
               mNextState = StateLevelSelection.STATE_NAME;
            }
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
         this.§+Q§();
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §+Q§() : void
      {
         var distance:Number = NaN;
         for(var i:int = 0; i < this.§!j§.length; i++)
         {
            distance = this.§9l§.x + this.§!j§[i].x - AngryBirdsFP11.§8!Z§ / 2;
            distance = Math.abs(distance);
            distance *= 0.55;
            if(distance > 1000)
            {
               distance = 1000;
            }
            this.§!j§[i].scaleX = 1.1 - distance / 1000;
            this.§!j§[i].scaleY = 1.1 - distance / 1000;
            this.§!j§[i].alpha = 1 - distance / 1000 * 1.5;
            this.§!j§[i].y = distance / 1000 * -200;
         }
      }
      
      private function §5!-§() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.§?!K§.length; )
         {
            if(-this.§9l§.x + 800 >= this.§!j§[i].x && -this.§9w§ < this.§!j§[i].x)
            {
               for(j = 0; j < this.§?!K§.length; j++)
               {
                  this.§?!K§[j].gotoAndStop("UnSelected");
               }
               this.§?!K§[i].gotoAndStop("Selected");
            }
            if(-this.§9l§.x + 800 <= this.§!j§[i].x && -this.§9w§ > this.§!j§[i].x)
            {
               for(j = 0; j < this.§?!K§.length; j++)
               {
                  this.§?!K§[j].gotoAndStop("UnSelected");
               }
               this.§?!K§[i].gotoAndStop("Selected");
            }
            i++;
         }
         this.§9w§ = this.§9l§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4!T§.§1t§.clearLevel();
         (§^,§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "BACK":
               SoundEngine.§`B§("Menu_Back");
               mNextState = StateStart.STATE_NAME;
               break;
            case "PREV":
               SoundEngine.§`B§("Menu_Confirm");
               if(!this.§?K§)
               {
                  --this.§^!W§;
                  this.§=M§(this.§^!W§);
                  break;
               }
               break;
            case "NEXT":
               SoundEngine.§`B§("Menu_Confirm");
               if(!this.§?K§)
               {
                  ++this.§^!W§;
                  this.§=M§(this.§^!W§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§`B§("Menu_Confirm");
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
      
      private function §=M§(chapterNum:int) : void
      {
         this.§?K§ = true;
         if(chapterNum > this.§!j§.length - 1)
         {
            chapterNum = this.§!j§.length - 1;
         }
         else if(chapterNum < 0)
         {
            chapterNum = 0;
         }
         this.§^!W§ = chapterNum;
         var newX:Number = -this.§!j§[chapterNum].x + this.§?!Q§;
         var distance:Number = this.§9l§.x - newX;
         var tweenTime:Number = Math.abs(distance);
         tweenTime /= 400;
         tweenTime *= TWEEN_TIME;
         if(tweenTime > 1)
         {
            tweenTime = 1;
         }
         if(this.§]!L§ != null)
         {
            this.§]!L§.stop();
         }
         this.§]!L§ = TweenManager.§&!'§.§3L§(this.§9l§,{"x":newX},null,tweenTime,TweenManager.§[!0§);
         this.§]!L§.onComplete = this.§0!§;
         this.§]!L§.play();
      }
      
      private function §0!§() : void
      {
         for(var i:int = 0; i < this.§?!K§.length; i++)
         {
            if(i == this.§^!W§)
            {
               this.§?!K§[i].gotoAndStop("Selected");
            }
            else
            {
               this.§?!K§[i].gotoAndStop("UnSelected");
            }
         }
         this.§?K§ = false;
      }
   }
}
