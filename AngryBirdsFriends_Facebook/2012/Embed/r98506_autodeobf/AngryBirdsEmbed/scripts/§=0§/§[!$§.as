package §=0§
{
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §3'§.§5I§;
   import §3'§.§8I§;
   import §3'§.§?-§;
   import §>K§.§#q§;
   import §>z§.§ =§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §[!$§ extends §`U§
   {
      
      public static const §?1§:String = "LevelStartState";
      
      private static var §]X§:BitmapData = null;
       
      
      private var §`!+§:Boolean = false;
      
      private var §`!?§:Boolean = false;
      
      private var §8!>§:§ =§ = null;
      
      private var §3x§:Boolean = false;
      
      private var §#Z§:Boolean = false;
      
      private var §+G§:Number = 0;
      
      private var §!!5§:Number = 0;
      
      private var §>!7§:Number = 0;
      
      private var §&M§:Number = 0;
      
      private var §,!+§:Number;
      
      private var §3@§:Number;
      
      private var §&J§:Number;
      
      private var §>v§:Number;
      
      private var § !A§:§#q§;
      
      public function §[!$§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §82§() : BitmapData
      {
         return §]X§;
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_LevelStart[0]);
         this.§8!>§ = new § =§(§^?§.§]!%§);
         this.§,!+§ = (§4G§.getItemByName("Container_MenuLeftButtons") as §8I§).height;
         this.§3@§ = (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).height;
         this.§&J§ = §4G§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§>v§ = §4G§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §^?§.§]!%§.§ U§(true);
         §^?§.§5S§(this.§8!>§);
         this.§8!>§.init();
         this.§`!@§();
         §4G§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§7H§());
         §4G§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§^?§.§8! §());
         §4G§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§&r§ ? false : true);
      }
      
      protected function §`!@§() : void
      {
         AngryBirdsFP11.§`!@§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§&J§ = §4G§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§>v§ = §4G§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§'B§(param1);
         if(!this.§`!?§)
         {
            §^?§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      private function §'B§(param1:Number) : void
      {
         (§4G§.getItemByName("Container_MenuLeftButtons") as §8I§).mClip.scrollRect = new Rectangle(0,0,(§4G§.getItemByName("Container_MenuLeftButtons") as §8I§).width,this.§,!+§ + 20 - (this.§,!+§ - this.§>!7§));
         (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).mClip.scrollRect = new Rectangle(0,0,(§4G§.getItemByName("Container_MenuRightButtons") as §8I§).width,this.§3@§ + 20 - (this.§3@§ - this.§&M§));
         if(this.§3x§)
         {
            (§4G§.getItemByName("Container_MenuLeftButtons") as §8I§).setVisibility(true);
            if(this.§+G§ < 90)
            {
               this.§+G§ += 0.3 * param1;
            }
            if(this.§+G§ > 90)
            {
               this.§+G§ = 90;
            }
            if(this.§>!7§ < this.§,!+§)
            {
               this.§>!7§ += 0.5 * param1;
            }
            if(this.§>!7§ > this.§,!+§)
            {
               this.§>!7§ = this.§,!+§;
            }
         }
         else
         {
            if(this.§+G§ > 0)
            {
               this.§+G§ -= 0.3 * param1;
            }
            if(this.§+G§ < 0)
            {
               this.§+G§ = 0;
            }
            if(this.§>!7§ > 0)
            {
               this.§>!7§ -= 0.5 * param1;
            }
            if(this.§>!7§ < 0)
            {
               (§4G§.getItemByName("Container_MenuLeftButtons") as §8I§).setVisibility(false);
               this.§>!7§ = 0;
            }
         }
         if(this.§#Z§)
         {
            (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).setVisibility(true);
            if(this.§!!5§ < 180)
            {
               this.§!!5§ += 0.5 * param1;
               (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).y = (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).y - 0.5 * param1;
            }
            if(this.§!!5§ > 180)
            {
               this.§!!5§ = 180;
            }
            if(this.§&M§ < this.§3@§)
            {
               this.§&M§ += 0.5 * param1;
            }
            if(this.§&M§ > this.§3@§)
            {
               this.§&M§ = this.§3@§;
            }
         }
         else
         {
            if(this.§!!5§ > 0)
            {
               this.§!!5§ -= 0.5 * param1;
               (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).y = (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).y + 0.5 * param1;
            }
            if(this.§!!5§ < 0)
            {
               this.§!!5§ = 0;
            }
            if(this.§&M§ > 0)
            {
               this.§&M§ -= 0.5 * param1;
            }
            if(this.§&M§ < 0)
            {
               (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).setVisibility(false);
               this.§&M§ = 0;
            }
         }
         (§4G§.getItemByName("Button_LeftMenuOpen") as §5I§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§4G§.getItemByName("Button_RightMenuOpen") as §5I§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§4G§.getItemByName("Button_LeftMenuOpen") as §5I§).mClip.MovieClip_LeftMenuImage.rotation = this.§+G§;
         (§4G§.getItemByName("Button_RightMenuOpen") as §5I§).mClip.MovieClip_RightMenuImage.rotation = this.§!!5§;
         (§4G§.getItemByName("Container_MenuLeftButtons") as §8I§).y = this.§&J§ - this.§>!7§;
         (§4G§.getItemByName("Container_MenuRightButtons") as §8I§).y = this.§>v§ - this.§&M§;
      }
      
      override public function deActivate() : void
      {
         (§4G§.getItemByName("Button_Play") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§`!+§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§3x§)
               {
                  this.§3x§ = false;
                  break;
               }
               this.§3x§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§#Z§)
               {
                  this.§#Z§ = false;
                  break;
               }
               this.§#Z§ = true;
               break;
            case "PLAY_LEVEL":
               §9!0§.§-! §("Menu_Confirm");
               mNextState = §20§.§?1§;
               break;
            case "OPEN_MENU":
               §4G§.setItemVisibility("Container_MenuButtons",!§4G§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§^?§.§8! §();
               §^?§.§6!<§(_loc4_);
               §4G§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §9!0§.§-! §("Menu_Confirm");
               AngryBirdsFP11.§5W§.§^!@§();
               break;
            case "OPEN_CREDITS":
               §9!0§.§-! §("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §9!0§.§-! §("Menu_Confirm");
               mNextState = §%!$§.§?1§;
               this.§3x§ = false;
               break;
            case "SOUNDS_BUTTON":
               §9!0§.§-! §("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§7H§();
               AngryBirdsFP11.§^!4§(_loc5_);
               if(_loc5_)
               {
                  this.§`!@§();
               }
               §4G§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§ !A§ == null)
               {
                  this.§ !A§ = new §#q§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§4G§.getItemByName("MovieClip_YouTubeArea") as §?-§).changeMovieClip(this.§ !A§);
                  (§4G§.getItemByName("MovieClip_YouTubeArea") as §?-§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
