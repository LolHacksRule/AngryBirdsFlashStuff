package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§ n§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §-B§.§]!<§;
   import §5!G§.§&2§;
   import §70§.§#!p§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §5"7§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var §6!M§:BitmapData = null;
       
      
      private var §2h§:Boolean = false;
      
      private var §>!d§:Boolean = false;
      
      private var §6!z§:§#!p§ = null;
      
      private var §,!J§:Boolean = false;
      
      private var §^!g§:Boolean = false;
      
      private var §>P§:Number = 0;
      
      private var §?r§:Number = 0;
      
      private var §+"!§:Number = 0;
      
      private var §>6§:Number = 0;
      
      private var §^=§:Number;
      
      private var §7"'§:Number;
      
      private var §6!t§:Number;
      
      private var §@!!§:Number;
      
      private var § O§:§ n§;
      
      public function §5"7§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §#!5§() : BitmapData
      {
         return §6!M§;
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_LevelStart[0]);
         this.§6!z§ = new §#!p§(§&2§.§],§);
         this.§^=§ = (§2!K§.getItemByName("Container_MenuLeftButtons") as §?!j§).height;
         this.§7"'§ = (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).height;
         this.§6!t§ = §2!K§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§@!!§ = §2!K§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §&2§.§],§.§`!I§(true);
         §&2§.setController(this.§6!z§);
         this.§6!z§.init();
         this.playThemeMusic();
         §2!K§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§""4§());
         §2!K§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§&2§.§5;§());
         §2!K§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§+!x§ ? false : true);
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§6!t§ = §2!K§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§@!!§ = §2!K§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§5c§(param1);
         if(!this.§>!d§)
         {
            §&2§.§,!x§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      private function §5c§(param1:Number) : void
      {
         (§2!K§.getItemByName("Container_MenuLeftButtons") as §?!j§).mClip.scrollRect = new Rectangle(0,0,(§2!K§.getItemByName("Container_MenuLeftButtons") as §?!j§).width,this.§^=§ + 20 - (this.§^=§ - this.§+"!§));
         (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).mClip.scrollRect = new Rectangle(0,0,(§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).width,this.§7"'§ + 20 - (this.§7"'§ - this.§>6§));
         if(this.§,!J§)
         {
            (§2!K§.getItemByName("Container_MenuLeftButtons") as §?!j§).setVisibility(true);
            if(this.§>P§ < 90)
            {
               this.§>P§ += 0.3 * param1;
            }
            if(this.§>P§ > 90)
            {
               this.§>P§ = 90;
            }
            if(this.§+"!§ < this.§^=§)
            {
               this.§+"!§ += 0.5 * param1;
            }
            if(this.§+"!§ > this.§^=§)
            {
               this.§+"!§ = this.§^=§;
            }
         }
         else
         {
            if(this.§>P§ > 0)
            {
               this.§>P§ -= 0.3 * param1;
            }
            if(this.§>P§ < 0)
            {
               this.§>P§ = 0;
            }
            if(this.§+"!§ > 0)
            {
               this.§+"!§ -= 0.5 * param1;
            }
            if(this.§+"!§ < 0)
            {
               (§2!K§.getItemByName("Container_MenuLeftButtons") as §?!j§).setVisibility(false);
               this.§+"!§ = 0;
            }
         }
         if(this.§^!g§)
         {
            (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).setVisibility(true);
            if(this.§?r§ < 180)
            {
               this.§?r§ += 0.5 * param1;
               (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).y = (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).y - 0.5 * param1;
            }
            if(this.§?r§ > 180)
            {
               this.§?r§ = 180;
            }
            if(this.§>6§ < this.§7"'§)
            {
               this.§>6§ += 0.5 * param1;
            }
            if(this.§>6§ > this.§7"'§)
            {
               this.§>6§ = this.§7"'§;
            }
         }
         else
         {
            if(this.§?r§ > 0)
            {
               this.§?r§ -= 0.5 * param1;
               (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).y = (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).y + 0.5 * param1;
            }
            if(this.§?r§ < 0)
            {
               this.§?r§ = 0;
            }
            if(this.§>6§ > 0)
            {
               this.§>6§ -= 0.5 * param1;
            }
            if(this.§>6§ < 0)
            {
               (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).setVisibility(false);
               this.§>6§ = 0;
            }
         }
         (§2!K§.getItemByName("Button_LeftMenuOpen") as §]!<§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§2!K§.getItemByName("Button_RightMenuOpen") as §]!<§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§2!K§.getItemByName("Button_LeftMenuOpen") as §]!<§).mClip.MovieClip_LeftMenuImage.rotation = this.§>P§;
         (§2!K§.getItemByName("Button_RightMenuOpen") as §]!<§).mClip.MovieClip_RightMenuImage.rotation = this.§?r§;
         (§2!K§.getItemByName("Container_MenuLeftButtons") as §?!j§).y = this.§6!t§ - this.§+"!§;
         (§2!K§.getItemByName("Container_MenuRightButtons") as §?!j§).y = this.§@!!§ - this.§>6§;
      }
      
      override public function deActivate() : void
      {
         (§2!K§.getItemByName("Button_Play") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§2h§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§,!J§)
               {
                  this.§,!J§ = false;
               }
               else
               {
                  this.§,!J§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§^!g§)
               {
                  this.§^!g§ = false;
               }
               else
               {
                  this.§^!g§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §+m§.§]!N§("Menu_Confirm");
               mNextState = §6!B§.STATE_NAME;
               break;
            case "OPEN_MENU":
               §2!K§.setItemVisibility("Container_MenuButtons",!§2!K§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§&2§.§5;§();
               §&2§.§7"C§(_loc4_);
               §2!K§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §+m§.§]!N§("Menu_Confirm");
               AngryBirdsFP11.§#!4§.§-"F§();
               break;
            case "OPEN_CREDITS":
               §+m§.§]!N§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §+m§.§]!N§("Menu_Confirm");
               mNextState = §`f§.STATE_NAME;
               this.§,!J§ = false;
               break;
            case "SOUNDS_BUTTON":
               §+m§.§]!N§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§""4§();
               AngryBirdsFP11.§=",§(_loc5_);
               if(_loc5_)
               {
                  this.playThemeMusic();
               }
               §2!K§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§ O§ == null)
               {
                  this.§ O§ = new § n§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§2!K§.getItemByName("MovieClip_YouTubeArea") as §="0§).changeMovieClip(this.§ O§);
                  (§2!K§.getItemByName("MovieClip_YouTubeArea") as §="0§).setVisibility(true);
               }
         }
      }
   }
}
