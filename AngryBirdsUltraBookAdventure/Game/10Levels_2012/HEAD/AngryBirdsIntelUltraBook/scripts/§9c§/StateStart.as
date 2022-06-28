package §9c§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §9!!§.YouTubeVideo;
   import §9!H§.§@1§;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class StateStart extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var _avatarGraphic:BitmapData = null;
       
      
      private var §7!^§:Boolean = false;
      
      private var §3!D§:Boolean = false;
      
      private var §5m§:§@1§ = null;
      
      private var §?!F§:Boolean = false;
      
      private var §8![§:Boolean = false;
      
      private var §!z§:Number = 0;
      
      private var §8!#§:Number = 0;
      
      private var §>!-§:Number = 0;
      
      private var §+!c§:Number = 0;
      
      private var §0§:Number;
      
      private var §2!Z§:Number;
      
      private var §>_§:Number;
      
      private var §&s§:Number;
      
      private var §6!?§:YouTubeVideo;
      
      public function StateStart(initState:Boolean = false, name:String = "LevelStartState")
      {
         super(initState,name);
      }
      
      public static function get §3w§() : BitmapData
      {
         return _avatarGraphic;
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_LevelStart[0]);
         this.§5m§ = new §@1§(§4!T§.§1t§);
         this.§0§ = (§^,§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).height;
         this.§2!Z§ = (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).height;
         this.§>_§ = §^,§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§&s§ = §^,§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §4!T§.§1t§.§@!F§(true);
         §4!T§.setController(this.§5m§);
         this.§5m§.init();
         AngryBirdsFP11.playThemeMusic();
         §^,§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§%!D§());
         §^,§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§4!T§.§>!>§());
         §^,§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§6!a§ ? Boolean(false) : Boolean(true));
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.§>_§ = §^,§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§&s§ = §^,§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§%!5§(deltaTime);
         if(!this.§3!D§)
         {
            §4!T§.controller.update(deltaTime);
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §%!5§(deltaTime:Number) : void
      {
         (§^,§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(§^,§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).width,this.§0§ + 20 - (this.§0§ - this.§>!-§));
         (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).width,this.§2!Z§ + 20 - (this.§2!Z§ - this.§+!c§));
         if(this.§?!F§)
         {
            (§^,§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(true);
            if(this.§!z§ < 90)
            {
               this.§!z§ += 0.3 * deltaTime;
            }
            if(this.§!z§ > 90)
            {
               this.§!z§ = 90;
            }
            if(this.§>!-§ < this.§0§)
            {
               this.§>!-§ += 0.5 * deltaTime;
            }
            if(this.§>!-§ > this.§0§)
            {
               this.§>!-§ = this.§0§;
            }
         }
         else
         {
            if(this.§!z§ > 0)
            {
               this.§!z§ -= 0.3 * deltaTime;
            }
            if(this.§!z§ < 0)
            {
               this.§!z§ = 0;
            }
            if(this.§>!-§ > 0)
            {
               this.§>!-§ -= 0.5 * deltaTime;
            }
            if(this.§>!-§ < 0)
            {
               (§^,§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(false);
               this.§>!-§ = 0;
            }
         }
         if(this.§8![§)
         {
            (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(true);
            if(this.§8!#§ < 180)
            {
               this.§8!#§ += 0.5 * deltaTime;
               (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y - 0.5 * deltaTime;
            }
            if(this.§8!#§ > 180)
            {
               this.§8!#§ = 180;
            }
            if(this.§+!c§ < this.§2!Z§)
            {
               this.§+!c§ += 0.5 * deltaTime;
            }
            if(this.§+!c§ > this.§2!Z§)
            {
               this.§+!c§ = this.§2!Z§;
            }
         }
         else
         {
            if(this.§8!#§ > 0)
            {
               this.§8!#§ -= 0.5 * deltaTime;
               (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y + 0.5 * deltaTime;
            }
            if(this.§8!#§ < 0)
            {
               this.§8!#§ = 0;
            }
            if(this.§+!c§ > 0)
            {
               this.§+!c§ -= 0.5 * deltaTime;
            }
            if(this.§+!c§ < 0)
            {
               (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(false);
               this.§+!c§ = 0;
            }
         }
         (§^,§.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§^,§.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§^,§.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.rotation = this.§!z§;
         (§^,§.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.rotation = this.§8!#§;
         (§^,§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).y = this.§>_§ - this.§>!-§;
         (§^,§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = this.§&s§ - this.§+!c§;
      }
      
      override public function deActivate() : void
      {
         (§^,§.getItemByName("Button_Play") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§7!^§ = false;
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
               if(this.§?!F§)
               {
                  this.§?!F§ = false;
               }
               else
               {
                  this.§?!F§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§8![§)
               {
                  this.§8![§ = false;
               }
               else
               {
                  this.§8![§ = true;
               }
               break;
            case "PLAY_LEVEL":
               SoundEngine.§`B§("Menu_Confirm");
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "OPEN_MENU":
               §^,§.setItemVisibility("Container_MenuButtons",!§^,§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               particlesEnabled = !§4!T§.§>!>§();
               §4!T§.§]z§(particlesEnabled);
               §^,§.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.§`B§("Menu_Confirm");
               AngryBirdsFP11.§8R§.§,!f§();
               break;
            case "OPEN_CREDITS":
               SoundEngine.§`B§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               SoundEngine.§`B§("Menu_Confirm");
               mNextState = StateCreditsNew.STATE_NAME;
               this.§?!F§ = false;
               break;
            case "SOUNDS_BUTTON":
               SoundEngine.§`B§("Menu_Confirm");
               soundsEnabled = !AngryBirdsFP11.§%!D§();
               AngryBirdsFP11.§ !@§(soundsEnabled);
               if(soundsEnabled)
               {
                  AngryBirdsFP11.playThemeMusic();
               }
               §^,§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               trace("Open Mighty Eagle Video");
               if(this.§6!?§ == null)
               {
                  this.§6!?§ = new YouTubeVideo("http://www.youtube.com/v/-eyig_V-_5o");
                  (§^,§.getItemByName("MovieClip_YouTubeArea") as §+,§).changeMovieClip(this.§6!?§);
                  (§^,§.getItemByName("MovieClip_YouTubeArea") as §+,§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
