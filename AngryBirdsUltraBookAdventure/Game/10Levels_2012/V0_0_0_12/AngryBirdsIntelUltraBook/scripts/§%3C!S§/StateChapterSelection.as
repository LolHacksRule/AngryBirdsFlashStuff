package §<!S§
{
   import § D§.§]!B§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class StateChapterSelection extends StateBase
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const TWEEN_TIME:Number = 0.5;
       
      
      private var §4!%§:Sprite;
      
      private var §5!?§:UIContainerRovio;
      
      private var §9!;§:Array;
      
      private var §[!2§:Array;
      
      private var §89§:int = 0;
      
      private var §,!Q§:Number = 0;
      
      private var §]!A§:Number = 0;
      
      private var §?!_§:Dictionary;
      
      private var §<<§:Dictionary;
      
      private var §9!f§:§!T§ = null;
      
      private var §=!K§:Boolean = false;
      
      private var § get§:Number = 0;
      
      public function StateChapterSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         super(initObject,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_ChapterSelection[0]);
         this.§@!9§();
      }
      
      override public function activate() : void
      {
         var image:MovieClip = null;
         var chapter:ChapterModel = null;
         super.activate();
         §]!B§.§>F§.§,>§(false);
         var chapterNum:int = 0;
         for each(image in this.§9!;§)
         {
            chapter = LevelManager.§;![§(chapterNum);
            if(image.Textfield_ME_Score != null)
            {
               image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§6Y§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§`=§(chapter);
            }
            if(image.Textfield_CollectedStars != null)
            {
               image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§,l§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§8!_§(chapter);
            }
            if(image.Textfield_Score != null)
            {
               image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8i§(chapter);
            }
            chapterNum++;
         }
      }
      
      private function §@!9§() : void
      {
         var chapter:ChapterModel = null;
         var chapterName:String = null;
         this.§5!?§ = §5!M§.getItemByName("Container_ChapterSelection") as UIContainerRovio;
         this.§9!;§ = [];
         this.§[!2§ = [];
         var offsetX:Number = 0;
         this.§4!%§ = new Sprite();
         this.§4!%§.y = AngryBirdsFP11.§1[§ / 2;
         this.§,!Q§ = AngryBirdsFP11.§8!6§ / 2;
         this.§4!%§.x = this.§,!Q§;
         this.§5!?§.mClip.addChild(this.§4!%§);
         this.§<<§ = new Dictionary();
         for(var chapterNum:int = 0; chapterNum < LevelManager.§??§(); chapterNum++)
         {
            chapter = LevelManager.§;![§(chapterNum);
            chapterName = "MovieClip_" + chapter.menuImage;
            offsetX = this.§^d§(chapterName,offsetX,chapterNum);
         }
         offsetX = this.§^d§("MovieClip_Chapter_Selection_More_Coming",offsetX,chapterNum);
         chapterNum++;
         offsetX = this.§^d§("MovieClip_Chapter_Selection_Shop",offsetX,chapterNum);
         this.§^W§();
      }
      
      private function §^W§() : void
      {
         var dotCls:Class = null;
         var image:MovieClip = null;
         var offsetX:Number = 0;
         this.§?!_§ = new Dictionary();
         for(var i:int = 0; i < this.§9!;§.length; i++)
         {
            dotCls = AssetCache.§-9§("Button_Dot");
            image = new dotCls();
            if(i == this.§89§)
            {
               image.gotoAndStop("Selected");
            }
            else
            {
               image.gotoAndStop("UnSelected");
            }
            image.x = AngryBirdsFP11.§8!6§ / 2 + offsetX - this.§9!;§.length * image.width / 2;
            image.y = (§5!M§.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
            this.§5!?§.mClip.addChild(image);
            image.buttonMode = true;
            this.§?!_§[image] = i;
            this.§[!2§.push(image);
            offsetX += image.width;
            image.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         }
         trace("Scale: " + §]!B§.§<!3§);
         offsetX = this.§9!;§.length * image.width / 2 + image.width * 1.5;
         (§5!M§.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsFP11.§8!6§ / 2;
         (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsFP11.§8!6§ / 2;
         (§5!M§.getItemByName("Button_Next") as UIButtonRovio).x = (§5!M§.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
         (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x = (§5!M§.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
      }
      
      private function §^d§(chapterName:String, offsetX:Number, chapterNum:int) : Number
      {
         var chapter:ChapterModel = null;
         var chapterCls:Class = null;
         var image:MovieClip = null;
         if(AssetCache.§[!f§(chapterName))
         {
            chapter = LevelManager.§;![§(chapterNum);
            chapterCls = AssetCache.§-9§(chapterName);
            image = new chapterCls();
            image.x = offsetX;
            this.§4!%§.addChild(image);
            this.§9!;§.push(image);
            offsetX += image.width * 1.55;
            this.§<<§[image] = chapterNum;
            image.addEventListener(MouseEvent.CLICK,this.§"s§);
            image.buttonMode = true;
            if(image.Textfield_CollectedStars != null)
            {
               image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§,l§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§8!_§(chapter);
            }
            if(image.Textfield_Score != null)
            {
               image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8i§(chapter);
            }
            if(image.Textfield_ME_Score != null)
            {
               image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§6Y§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§`=§(chapter);
            }
         }
         return offsetX;
      }
      
      private function §]4§(e:MouseEvent) : void
      {
         if(!this.§=!K§)
         {
            this.§?'§(this.§?!_§[e.target]);
         }
      }
      
      private function §"s§(e:MouseEvent) : void
      {
         var chapter:MovieClip = null;
         if(!this.§=!K§)
         {
            if(!(e.currentTarget is MovieClip))
            {
               return;
            }
            chapter = MovieClip(e.currentTarget);
            if(this.§89§ != this.§<<§[chapter])
            {
               this.§?'§(this.§<<§[chapter]);
            }
            else if(this.§<<§[chapter] < LevelManager.§??§())
            {
               LevelManager.§?Q§ = this.§<<§[chapter];
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
         this.§7v§();
         this.§6n§();
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §6n§() : void
      {
         var distance:Number = NaN;
         for(var i:int = 0; i < this.§9!;§.length; i++)
         {
            distance = this.§4!%§.x + this.§9!;§[i].x - AngryBirdsFP11.§8!6§ / 2;
            distance = Math.abs(distance);
            distance *= 0.55;
            if(distance > 1000)
            {
               distance = 1000;
            }
            this.§9!;§[i].scaleX = 1.1 - distance / 1000;
            this.§9!;§[i].scaleY = 1.1 - distance / 1000;
            this.§9!;§[i].alpha = 1 - distance / 1000 * 1.5;
            this.§9!;§[i].y = distance / 1000 * -200;
         }
      }
      
      private function §7v§() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.§[!2§.length; )
         {
            if(-this.§4!%§.x + 800 >= this.§9!;§[i].x && -this.§ get§ < this.§9!;§[i].x)
            {
               for(j = 0; j < this.§[!2§.length; j++)
               {
                  this.§[!2§[j].gotoAndStop("UnSelected");
               }
               this.§[!2§[i].gotoAndStop("Selected");
            }
            if(-this.§4!%§.x + 800 <= this.§9!;§[i].x && -this.§ get§ > this.§9!;§[i].x)
            {
               for(j = 0; j < this.§[!2§.length; j++)
               {
                  this.§[!2§[j].gotoAndStop("UnSelected");
               }
               this.§[!2§[i].gotoAndStop("Selected");
            }
            i++;
         }
         this.§ get§ = this.§4!%§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §]!B§.§>F§.clearLevel();
         (§5!M§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "BACK":
               SoundEngine.§9!X§("Menu_Back");
               mNextState = StateStart.STATE_NAME;
               break;
            case "PREV":
               SoundEngine.§9!X§("Menu_Confirm");
               if(!this.§=!K§)
               {
                  --this.§89§;
                  this.§?'§(this.§89§);
                  break;
               }
               break;
            case "NEXT":
               SoundEngine.§9!X§("Menu_Confirm");
               if(!this.§=!K§)
               {
                  ++this.§89§;
                  this.§?'§(this.§89§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§9!X§("Menu_Confirm");
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
      
      private function §?'§(chapterNum:int) : void
      {
         this.§=!K§ = true;
         if(chapterNum > this.§9!;§.length - 1)
         {
            chapterNum = this.§9!;§.length - 1;
         }
         else if(chapterNum < 0)
         {
            chapterNum = 0;
         }
         this.§89§ = chapterNum;
         var newX:Number = -this.§9!;§[chapterNum].x + this.§,!Q§;
         var distance:Number = this.§4!%§.x - newX;
         var tweenTime:Number = Math.abs(distance);
         tweenTime /= 400;
         tweenTime *= TWEEN_TIME;
         if(tweenTime > 1)
         {
            tweenTime = 1;
         }
         if(this.§9!f§ != null)
         {
            this.§9!f§.stop();
         }
         this.§9!f§ = TweenManager.§8!X§.§8m§(this.§4!%§,{"x":newX},null,tweenTime,TweenManager.§&T§);
         this.§9!f§.onComplete = this.§?X§;
         this.§9!f§.play();
      }
      
      private function §?X§() : void
      {
         for(var i:int = 0; i < this.§[!2§.length; i++)
         {
            if(i == this.§89§)
            {
               this.§[!2§[i].gotoAndStop("Selected");
            }
            else
            {
               this.§[!2§[i].gotoAndStop("UnSelected");
            }
         }
         this.§=!K§ = false;
      }
   }
}
