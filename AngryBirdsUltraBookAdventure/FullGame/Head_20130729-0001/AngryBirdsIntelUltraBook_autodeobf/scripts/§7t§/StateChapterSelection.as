package §7t§
{
   import §!!0§.SoundEngine;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §6a§.UIButtonRovio;
   import §6a§.UIContainerRovio;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class StateChapterSelection extends StateBase
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const TWEEN_TIME:Number = 0.5;
       
      
      private var §2!T§:Sprite;
      
      private var §@@§:UIContainerRovio;
      
      private var §3'§:Array;
      
      private var §!!H§:Array;
      
      private var §0!B§:int = 0;
      
      private var §3J§:Number = 0;
      
      private var §=T§:Number = 0;
      
      private var §=!b§:Dictionary;
      
      private var §&v§:Dictionary;
      
      private var §<A§:§?W§ = null;
      
      private var §#a§:Boolean = false;
      
      private var §&!L§:Number = 0;
      
      public function StateChapterSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         super(initObject,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_ChapterSelection[0]);
         this.§5!8§();
      }
      
      override public function activate() : void
      {
         var image:MovieClip = null;
         var chapter:ChapterModel = null;
         super.activate();
         §`S§.§[o§.§#!$§(false);
         var chapterNum:int = 0;
         for each(image in this.§3'§)
         {
            chapter = LevelManager.§7Z§(chapterNum);
            if(image.Textfield_ME_Score != null)
            {
               image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§`!E§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§#!c§(chapter);
            }
            if(image.Textfield_CollectedStars != null)
            {
               image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§]J§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§7!d§(chapter);
            }
            if(image.Textfield_Score != null)
            {
               image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§;b§(chapter);
            }
            chapterNum++;
         }
      }
      
      private function §5!8§() : void
      {
         var chapter:ChapterModel = null;
         var chapterName:String = null;
         this.§@@§ = §`=§.getItemByName("Container_ChapterSelection") as UIContainerRovio;
         this.§3'§ = [];
         this.§!!H§ = [];
         var offsetX:Number = 0;
         this.§2!T§ = new Sprite();
         this.§2!T§.y = AngryBirdsFP11.§!3§ / 2;
         this.§3J§ = AngryBirdsFP11.§@]§ / 2;
         this.§2!T§.x = this.§3J§;
         this.§@@§.mClip.addChild(this.§2!T§);
         this.§&v§ = new Dictionary();
         for(var chapterNum:int = 0; chapterNum < LevelManager.§3!3§(); chapterNum++)
         {
            chapter = LevelManager.§7Z§(chapterNum);
            chapterName = "MovieClip_" + chapter.menuImage;
            offsetX = this.§2u§(chapterName,offsetX,chapterNum);
         }
         offsetX = this.§2u§("MovieClip_Chapter_Selection_More_Coming",offsetX,chapterNum);
         chapterNum++;
         offsetX = this.§2u§("MovieClip_Chapter_Selection_Shop",offsetX,chapterNum);
         this.§;!N§();
      }
      
      private function §;!N§() : void
      {
         var dotCls:Class = null;
         var image:MovieClip = null;
         var offsetX:Number = 0;
         this.§=!b§ = new Dictionary();
         for(var i:int = 0; i < this.§3'§.length; i++)
         {
            dotCls = AssetCache.§%p§("Button_Dot");
            image = new dotCls();
            if(i == this.§0!B§)
            {
               image.gotoAndStop("Selected");
            }
            else
            {
               image.gotoAndStop("UnSelected");
            }
            image.x = AngryBirdsFP11.§@]§ / 2 + offsetX - this.§3'§.length * image.width / 2;
            image.y = (§`=§.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
            this.§@@§.mClip.addChild(image);
            image.buttonMode = true;
            this.§=!b§[image] = i;
            this.§!!H§.push(image);
            offsetX += image.width;
            image.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!S§);
         }
         trace("Scale: " + §`S§.§3! §);
         offsetX = this.§3'§.length * image.width / 2 + image.width * 1.5;
         (§`=§.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsFP11.§@]§ / 2;
         (§`=§.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsFP11.§@]§ / 2;
         (§`=§.getItemByName("Button_Next") as UIButtonRovio).x = (§`=§.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
         (§`=§.getItemByName("Button_Prev") as UIButtonRovio).x = (§`=§.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
      }
      
      private function §2u§(chapterName:String, offsetX:Number, chapterNum:int) : Number
      {
         var chapter:ChapterModel = null;
         var chapterCls:Class = null;
         var image:MovieClip = null;
         if(AssetCache.§+c§(chapterName))
         {
            chapter = LevelManager.§7Z§(chapterNum);
            chapterCls = AssetCache.§%p§(chapterName);
            image = new chapterCls();
            image.x = offsetX;
            this.§2!T§.addChild(image);
            this.§3'§.push(image);
            offsetX += image.width * 1.55;
            this.§&v§[image] = chapterNum;
            image.addEventListener(MouseEvent.CLICK,this.§<;§);
            image.buttonMode = true;
            if(image.Textfield_CollectedStars != null)
            {
               image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§]J§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§7!d§(chapter);
            }
            if(image.Textfield_Score != null)
            {
               image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§;b§(chapter);
            }
            if(image.Textfield_ME_Score != null)
            {
               image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§`!E§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§#!c§(chapter);
            }
         }
         return offsetX;
      }
      
      private function §[!S§(e:MouseEvent) : void
      {
         if(!this.§#a§)
         {
            this.§0!N§(this.§=!b§[e.target]);
         }
      }
      
      private function §<;§(e:MouseEvent) : void
      {
         var chapter:MovieClip = null;
         if(!this.§#a§)
         {
            if(!(e.currentTarget is MovieClip))
            {
               return;
            }
            chapter = MovieClip(e.currentTarget);
            if(this.§0!B§ != this.§&v§[chapter])
            {
               this.§0!N§(this.§&v§[chapter]);
            }
            else if(this.§&v§[chapter] < LevelManager.§3!3§())
            {
               LevelManager.§]!U§ = this.§&v§[chapter];
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
         this.§2!D§();
         this.§^9§();
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §^9§() : void
      {
         var distance:Number = NaN;
         for(var i:int = 0; i < this.§3'§.length; i++)
         {
            distance = this.§2!T§.x + this.§3'§[i].x - AngryBirdsFP11.§@]§ / 2;
            distance = Math.abs(distance);
            distance *= 0.55;
            if(distance > 1000)
            {
               distance = 1000;
            }
            this.§3'§[i].scaleX = 1.1 - distance / 1000;
            this.§3'§[i].scaleY = 1.1 - distance / 1000;
            this.§3'§[i].alpha = 1 - distance / 1000 * 1.5;
            this.§3'§[i].y = distance / 1000 * -200;
         }
      }
      
      private function §2!D§() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.§!!H§.length; )
         {
            if(-this.§2!T§.x + 800 >= this.§3'§[i].x && -this.§&!L§ < this.§3'§[i].x)
            {
               for(j = 0; j < this.§!!H§.length; j++)
               {
                  this.§!!H§[j].gotoAndStop("UnSelected");
               }
               this.§!!H§[i].gotoAndStop("Selected");
            }
            if(-this.§2!T§.x + 800 <= this.§3'§[i].x && -this.§&!L§ > this.§3'§[i].x)
            {
               for(j = 0; j < this.§!!H§.length; j++)
               {
                  this.§!!H§[j].gotoAndStop("UnSelected");
               }
               this.§!!H§[i].gotoAndStop("Selected");
            }
            i++;
         }
         this.§&!L§ = this.§2!T§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §`S§.§[o§.clearLevel();
         (§`=§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "BACK":
               SoundEngine.§-!h§("Menu_Back");
               mNextState = StateStart.STATE_NAME;
               break;
            case "PREV":
               SoundEngine.§-!h§("Menu_Confirm");
               if(!this.§#a§)
               {
                  --this.§0!B§;
                  this.§0!N§(this.§0!B§);
               }
               break;
            case "NEXT":
               SoundEngine.§-!h§("Menu_Confirm");
               if(!this.§#a§)
               {
                  ++this.§0!B§;
                  this.§0!N§(this.§0!B§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§-!h§("Menu_Confirm");
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
      
      private function §0!N§(chapterNum:int) : void
      {
         this.§#a§ = true;
         if(chapterNum > this.§3'§.length - 1)
         {
            chapterNum = this.§3'§.length - 1;
         }
         else if(chapterNum < 0)
         {
            chapterNum = 0;
         }
         this.§0!B§ = chapterNum;
         var newX:Number = -this.§3'§[chapterNum].x + this.§3J§;
         var distance:Number = this.§2!T§.x - newX;
         var tweenTime:Number = Math.abs(distance);
         tweenTime /= 400;
         tweenTime *= TWEEN_TIME;
         if(tweenTime > 1)
         {
            tweenTime = 1;
         }
         if(this.§<A§ != null)
         {
            this.§<A§.stop();
         }
         this.§<A§ = TweenManager.§7!E§.§5§(this.§2!T§,{"x":newX},null,tweenTime,TweenManager.§2!'§);
         this.§<A§.onComplete = this.§<l§;
         this.§<A§.play();
      }
      
      private function §<l§() : void
      {
         for(var i:int = 0; i < this.§!!H§.length; i++)
         {
            if(i == this.§0!B§)
            {
               this.§!!H§[i].gotoAndStop("Selected");
            }
            else
            {
               this.§!!H§[i].gotoAndStop("UnSelected");
            }
         }
         this.§#a§ = false;
      }
   }
}
