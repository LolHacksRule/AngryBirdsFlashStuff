package §7t§
{
   import §!!0§.SoundEngine;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §5=§.YouTubeVideo;
   import §6a§.§=D§;
   import §6a§.UIButtonRovio;
   import §6a§.UIContainerRovio;
   import §91§.§4!"§;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class StateStart extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var _avatarGraphic:BitmapData = null;
       
      
      private var §,!X§:Boolean = false;
      
      private var §&A§:Boolean = false;
      
      private var §3!'§:§4!"§ = null;
      
      private var §,!K§:Boolean = false;
      
      private var §>k§:Boolean = false;
      
      private var § z§:Number = 0;
      
      private var §1!@§:Number = 0;
      
      private var §,!M§:Number = 0;
      
      private var §]5§:Number = 0;
      
      private var § 4§:Number;
      
      private var §?r§:Number;
      
      private var §`!V§:Number;
      
      private var §8M§:Number;
      
      private var §!!M§:YouTubeVideo;
      
      public function StateStart(initState:Boolean = false, name:String = "LevelStartState")
      {
         super(initState,name);
      }
      
      public static function get §6r§() : BitmapData
      {
         return _avatarGraphic;
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_LevelStart[0]);
         this.§3!'§ = new §4!"§(§`S§.§[o§);
         this.§ 4§ = (§`=§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).height;
         this.§?r§ = (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).height;
         this.§`!V§ = §`=§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§8M§ = §`=§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`S§.§[o§.§#!$§(true);
         §`S§.setController(this.§3!'§);
         this.§3!'§.init();
         AngryBirdsFP11.playThemeMusic();
         §`=§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§4!M§());
         §`=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§`S§.§-!,§());
         §`=§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§5n§ ? Boolean(false) : Boolean(true));
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.§`!V§ = §`=§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§8M§ = §`=§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§,"§(deltaTime);
         if(!this.§&A§)
         {
            §`S§.controller.update(deltaTime);
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §,"§(deltaTime:Number) : void
      {
         (§`=§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(§`=§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).width,this.§ 4§ + 20 - (this.§ 4§ - this.§,!M§));
         (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).width,this.§?r§ + 20 - (this.§?r§ - this.§]5§));
         if(this.§,!K§)
         {
            (§`=§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(true);
            if(this.§ z§ < 90)
            {
               this.§ z§ += 0.3 * deltaTime;
            }
            if(this.§ z§ > 90)
            {
               this.§ z§ = 90;
            }
            if(this.§,!M§ < this.§ 4§)
            {
               this.§,!M§ += 0.5 * deltaTime;
            }
            if(this.§,!M§ > this.§ 4§)
            {
               this.§,!M§ = this.§ 4§;
            }
         }
         else
         {
            if(this.§ z§ > 0)
            {
               this.§ z§ -= 0.3 * deltaTime;
            }
            if(this.§ z§ < 0)
            {
               this.§ z§ = 0;
            }
            if(this.§,!M§ > 0)
            {
               this.§,!M§ -= 0.5 * deltaTime;
            }
            if(this.§,!M§ < 0)
            {
               (§`=§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(false);
               this.§,!M§ = 0;
            }
         }
         if(this.§>k§)
         {
            (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(true);
            if(this.§1!@§ < 180)
            {
               this.§1!@§ += 0.5 * deltaTime;
               (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y - 0.5 * deltaTime;
            }
            if(this.§1!@§ > 180)
            {
               this.§1!@§ = 180;
            }
            if(this.§]5§ < this.§?r§)
            {
               this.§]5§ += 0.5 * deltaTime;
            }
            if(this.§]5§ > this.§?r§)
            {
               this.§]5§ = this.§?r§;
            }
         }
         else
         {
            if(this.§1!@§ > 0)
            {
               this.§1!@§ -= 0.5 * deltaTime;
               (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y + 0.5 * deltaTime;
            }
            if(this.§1!@§ < 0)
            {
               this.§1!@§ = 0;
            }
            if(this.§]5§ > 0)
            {
               this.§]5§ -= 0.5 * deltaTime;
            }
            if(this.§]5§ < 0)
            {
               (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(false);
               this.§]5§ = 0;
            }
         }
         (§`=§.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§`=§.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§`=§.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.rotation = this.§ z§;
         (§`=§.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.rotation = this.§1!@§;
         (§`=§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).y = this.§`!V§ - this.§,!M§;
         (§`=§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = this.§8M§ - this.§]5§;
      }
      
      override public function deActivate() : void
      {
         (§`=§.getItemByName("Button_Play") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§,!X§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var particlesEnabled:Boolean = false;
         var soundsEnabled:Boolean = false;
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§,!K§)
               {
                  this.§,!K§ = false;
               }
               else
               {
                  this.§,!K§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§>k§)
               {
                  this.§>k§ = false;
               }
               else
               {
                  this.§>k§ = true;
               }
               break;
            case "PLAY_LEVEL":
               SoundEngine.§-!h§("Menu_Confirm");
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "OPEN_MENU":
               §`=§.setItemVisibility("Container_MenuButtons",!§`=§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               particlesEnabled = !§`S§.§-!,§();
               §`S§.§^!D§(particlesEnabled);
               §`=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§-!h§("Menu_Confirm");
               AngryBirdsFP11.§'t§.§0-§();
               break;
            case "OPEN_CREDITS":
               SoundEngine.§-!h§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               SoundEngine.§-!h§("Menu_Confirm");
               mNextState = StateCreditsNew.STATE_NAME;
               this.§,!K§ = false;
               break;
            case "SOUNDS_BUTTON":
               SoundEngine.§-!h§("Menu_Confirm");
               soundsEnabled = !AngryBirdsFP11.§4!M§();
               AngryBirdsFP11.§0!§(soundsEnabled);
               if(soundsEnabled)
               {
                  AngryBirdsFP11.playThemeMusic();
               }
               §`=§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               trace("Open Mighty Eagle Video");
               if(this.§!!M§ == null)
               {
                  this.§!!M§ = new YouTubeVideo("http://www.youtube.com/v/-eyig_V-_5o");
                  (§`=§.getItemByName("MovieClip_YouTubeArea") as §=D§).changeMovieClip(this.§!!M§);
                  (§`=§.getItemByName("MovieClip_YouTubeArea") as §=D§).setVisibility(true);
               }
         }
      }
   }
}
