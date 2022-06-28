package §<!S§
{
   import § D§.§]!B§;
   import §2!?§.§>X§;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §7p§.YouTubeVideo;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class StateStart extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var _avatarGraphic:BitmapData = null;
       
      
      private var §6T§:Boolean = false;
      
      private var §'@§:Boolean = false;
      
      private var §8!i§:§>X§ = null;
      
      private var §=!Q§:Boolean = false;
      
      private var §=Q§:Boolean = false;
      
      private var § c§:Number = 0;
      
      private var §4]§:Number = 0;
      
      private var §'!K§:Number = 0;
      
      private var §3!G§:Number = 0;
      
      private var §+!E§:Number;
      
      private var §2;§:Number;
      
      private var §%!M§:Number;
      
      private var §@>§:Number;
      
      private var §1!f§:YouTubeVideo;
      
      public function StateStart(initState:Boolean = false, name:String = "LevelStartState")
      {
         super(initState,name);
      }
      
      public static function get §"!,§() : BitmapData
      {
         return _avatarGraphic;
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_LevelStart[0]);
         this.§8!i§ = new §>X§(§]!B§.§>F§);
         this.§+!E§ = (§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).height;
         this.§2;§ = (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).height;
         this.§%!M§ = §5!M§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§@>§ = §5!M§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]!B§.§>F§.§,>§(true);
         §]!B§.setController(this.§8!i§);
         this.§8!i§.init();
         AngryBirdsFP11.playThemeMusic();
         §5!M§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§+i§());
         §5!M§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§]!B§.§]!#§());
         §5!M§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§?m§ ? Boolean(false) : Boolean(true));
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.§%!M§ = §5!M§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§@>§ = §5!M§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§!!B§(deltaTime);
         if(!this.§'@§)
         {
            §]!B§.controller.update(deltaTime);
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §!!B§(deltaTime:Number) : void
      {
         (§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).width,this.§+!E§ + 20 - (this.§+!E§ - this.§'!K§));
         (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).width,this.§2;§ + 20 - (this.§2;§ - this.§3!G§));
         if(this.§=!Q§)
         {
            (§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(true);
            if(this.§ c§ < 90)
            {
               this.§ c§ += 0.3 * deltaTime;
            }
            if(this.§ c§ > 90)
            {
               this.§ c§ = 90;
            }
            if(this.§'!K§ < this.§+!E§)
            {
               this.§'!K§ += 0.5 * deltaTime;
            }
            if(this.§'!K§ > this.§+!E§)
            {
               this.§'!K§ = this.§+!E§;
            }
         }
         else
         {
            if(this.§ c§ > 0)
            {
               this.§ c§ -= 0.3 * deltaTime;
            }
            if(this.§ c§ < 0)
            {
               this.§ c§ = 0;
            }
            if(this.§'!K§ > 0)
            {
               this.§'!K§ -= 0.5 * deltaTime;
            }
            if(this.§'!K§ < 0)
            {
               (§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(false);
               this.§'!K§ = 0;
            }
         }
         if(this.§=Q§)
         {
            (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(true);
            if(this.§4]§ < 180)
            {
               this.§4]§ += 0.5 * deltaTime;
               (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y - 0.5 * deltaTime;
            }
            if(this.§4]§ > 180)
            {
               this.§4]§ = 180;
            }
            if(this.§3!G§ < this.§2;§)
            {
               this.§3!G§ += 0.5 * deltaTime;
            }
            if(this.§3!G§ > this.§2;§)
            {
               this.§3!G§ = this.§2;§;
            }
         }
         else
         {
            if(this.§4]§ > 0)
            {
               this.§4]§ -= 0.5 * deltaTime;
               (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y + 0.5 * deltaTime;
            }
            if(this.§4]§ < 0)
            {
               this.§4]§ = 0;
            }
            if(this.§3!G§ > 0)
            {
               this.§3!G§ -= 0.5 * deltaTime;
            }
            if(this.§3!G§ < 0)
            {
               (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(false);
               this.§3!G§ = 0;
            }
         }
         (§5!M§.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§5!M§.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§5!M§.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.rotation = this.§ c§;
         (§5!M§.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.rotation = this.§4]§;
         (§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).y = this.§%!M§ - this.§'!K§;
         (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = this.§@>§ - this.§3!G§;
      }
      
      override public function deActivate() : void
      {
         (§5!M§.getItemByName("Button_Play") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§6T§ = false;
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
               if(this.§=!Q§)
               {
                  this.§=!Q§ = false;
               }
               else
               {
                  this.§=!Q§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§=Q§)
               {
                  this.§=Q§ = false;
               }
               else
               {
                  this.§=Q§ = true;
               }
               break;
            case "PLAY_LEVEL":
               SoundEngine.§9!X§("Menu_Confirm");
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "OPEN_MENU":
               §5!M§.setItemVisibility("Container_MenuButtons",!§5!M§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               particlesEnabled = !§]!B§.§]!#§();
               §]!B§.§^!Y§(particlesEnabled);
               §5!M§.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§9!X§("Menu_Confirm");
               AngryBirdsFP11.§5V§.§>J§();
               break;
            case "OPEN_CREDITS":
               SoundEngine.§9!X§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               SoundEngine.§9!X§("Menu_Confirm");
               mNextState = StateCreditsNew.STATE_NAME;
               this.§=!Q§ = false;
               break;
            case "SOUNDS_BUTTON":
               SoundEngine.§9!X§("Menu_Confirm");
               soundsEnabled = !AngryBirdsFP11.§+i§();
               AngryBirdsFP11.§72§(soundsEnabled);
               if(soundsEnabled)
               {
                  AngryBirdsFP11.playThemeMusic();
               }
               §5!M§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               trace("Open Mighty Eagle Video");
               if(this.§1!f§ == null)
               {
                  this.§1!f§ = new YouTubeVideo("http://www.youtube.com/v/-eyig_V-_5o");
                  (§5!M§.getItemByName("MovieClip_YouTubeArea") as §6#§).changeMovieClip(this.§1!f§);
                  (§5!M§.getItemByName("MovieClip_YouTubeArea") as §6#§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
