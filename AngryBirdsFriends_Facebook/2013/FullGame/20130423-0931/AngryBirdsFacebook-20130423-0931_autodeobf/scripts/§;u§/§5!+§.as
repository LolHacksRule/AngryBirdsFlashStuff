package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §-p§.§&h§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9@§.§+"Z§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §5!+§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var §;"Y§:BitmapData = null;
       
      
      private var §8!w§:Boolean = false;
      
      private var §;"'§:Boolean = false;
      
      private var §<!3§:§&h§ = null;
      
      private var §1-§:Boolean = false;
      
      private var §]!K§:Boolean = false;
      
      private var §4"§:Number = 0;
      
      private var §?!2§:Number = 0;
      
      private var § x§:Number = 0;
      
      private var §3"D§:Number = 0;
      
      private var §"j§:Number;
      
      private var §3!>§:Number;
      
      private var §5!g§:Number;
      
      private var §%E§:Number;
      
      private var §@!t§:§+"Z§;
      
      public function §5!+§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §0"6§() : BitmapData
      {
         return §;"Y§;
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_LevelStart[0]);
         this.§<!3§ = new §&h§(§?l§.§'h§);
         this.§"j§ = (§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).height;
         this.§3!>§ = (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).height;
         this.§5!g§ = §2"@§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§%E§ = §2"@§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?l§.§'h§.§#"[§(true);
         §?l§.setController(this.§<!3§);
         this.§<!3§.init();
         this.playThemeMusic();
         §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§6!,§());
         §2"@§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§?l§.§'!R§());
         §2"@§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§"-§ ? false : true);
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§5!g§ = §2"@§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§%E§ = §2"@§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§;K§(param1);
         if(!this.§;"'§)
         {
            §?l§.§5-§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      private function §;K§(param1:Number) : void
      {
         (§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).mClip.scrollRect = new Rectangle(0,0,(§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).width,this.§"j§ + 20 - (this.§"j§ - this.§ x§));
         (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).mClip.scrollRect = new Rectangle(0,0,(§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).width,this.§3!>§ + 20 - (this.§3!>§ - this.§3"D§));
         if(this.§1-§)
         {
            (§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).setVisibility(true);
            if(this.§4"§ < 90)
            {
               this.§4"§ += 0.3 * param1;
            }
            if(this.§4"§ > 90)
            {
               this.§4"§ = 90;
            }
            if(this.§ x§ < this.§"j§)
            {
               this.§ x§ += 0.5 * param1;
            }
            if(this.§ x§ > this.§"j§)
            {
               this.§ x§ = this.§"j§;
            }
         }
         else
         {
            if(this.§4"§ > 0)
            {
               this.§4"§ -= 0.3 * param1;
            }
            if(this.§4"§ < 0)
            {
               this.§4"§ = 0;
            }
            if(this.§ x§ > 0)
            {
               this.§ x§ -= 0.5 * param1;
            }
            if(this.§ x§ < 0)
            {
               (§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).setVisibility(false);
               this.§ x§ = 0;
            }
         }
         if(this.§]!K§)
         {
            (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).setVisibility(true);
            if(this.§?!2§ < 180)
            {
               this.§?!2§ += 0.5 * param1;
               (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y = (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y - 0.5 * param1;
            }
            if(this.§?!2§ > 180)
            {
               this.§?!2§ = 180;
            }
            if(this.§3"D§ < this.§3!>§)
            {
               this.§3"D§ += 0.5 * param1;
            }
            if(this.§3"D§ > this.§3!>§)
            {
               this.§3"D§ = this.§3!>§;
            }
         }
         else
         {
            if(this.§?!2§ > 0)
            {
               this.§?!2§ -= 0.5 * param1;
               (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y = (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y + 0.5 * param1;
            }
            if(this.§?!2§ < 0)
            {
               this.§?!2§ = 0;
            }
            if(this.§3"D§ > 0)
            {
               this.§3"D§ -= 0.5 * param1;
            }
            if(this.§3"D§ < 0)
            {
               (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).setVisibility(false);
               this.§3"D§ = 0;
            }
         }
         (§2"@§.getItemByName("Button_LeftMenuOpen") as §7"0§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§2"@§.getItemByName("Button_RightMenuOpen") as §7"0§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§2"@§.getItemByName("Button_LeftMenuOpen") as §7"0§).mClip.MovieClip_LeftMenuImage.rotation = this.§4"§;
         (§2"@§.getItemByName("Button_RightMenuOpen") as §7"0§).mClip.MovieClip_RightMenuImage.rotation = this.§?!2§;
         (§2"@§.getItemByName("Container_MenuLeftButtons") as §0!Y§).y = this.§5!g§ - this.§ x§;
         (§2"@§.getItemByName("Container_MenuRightButtons") as §0!Y§).y = this.§%E§ - this.§3"D§;
      }
      
      override public function deActivate() : void
      {
         (§2"@§.getItemByName("Button_Play") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§8!w§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§1-§)
               {
                  this.§1-§ = false;
               }
               else
               {
                  this.§1-§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§]!K§)
               {
                  this.§]!K§ = false;
               }
               else
               {
                  this.§]!K§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §@"M§.§3"C§("Menu_Confirm");
               mNextState = §9!V§.STATE_NAME;
               break;
            case "OPEN_MENU":
               §2"@§.setItemVisibility("Container_MenuButtons",!§2"@§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§?l§.§'!R§();
               §?l§.§%"7§(_loc4_);
               §2"@§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §@"M§.§3"C§("Menu_Confirm");
               AngryBirdsFP11.§>m§.§=-§();
               break;
            case "OPEN_CREDITS":
               §@"M§.§3"C§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §@"M§.§3"C§("Menu_Confirm");
               mNextState = §&"[§.STATE_NAME;
               this.§1-§ = false;
               break;
            case "SOUNDS_BUTTON":
               §@"M§.§3"C§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§6!,§();
               AngryBirdsFP11.§]"H§(_loc5_);
               if(_loc5_)
               {
                  this.playThemeMusic();
               }
               §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§@!t§ == null)
               {
                  this.§@!t§ = new §+"Z§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§2"@§.getItemByName("MovieClip_YouTubeArea") as §^n§).changeMovieClip(this.§@!t§);
                  (§2"@§.getItemByName("MovieClip_YouTubeArea") as §^n§).setVisibility(true);
               }
         }
      }
   }
}
