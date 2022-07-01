package §""6§
{
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §2!O§.§,w§;
   import §2i§.§!§;
   import §62§.§5!P§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §?!k§.§0!t§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §;!U§ extends §,w§
   {
      
      public static const §^z§:String = "LevelStartState";
      
      private static var §'c§:BitmapData = null;
       
      
      private var §?G§:Boolean = false;
      
      private var §@m§:Boolean = false;
      
      private var §7!R§:§5!P§ = null;
      
      private var §9i§:Boolean = false;
      
      private var §5"8§:Boolean = false;
      
      private var §&E§:Number = 0;
      
      private var §-D§:Number = 0;
      
      private var §+!%§:Number = 0;
      
      private var §&Z§:Number = 0;
      
      private var §-!z§:Number;
      
      private var §`!>§:Number;
      
      private var §;^§:Number;
      
      private var § 0§:Number;
      
      private var §;!@§:§!§;
      
      public function §;!U§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §6s§() : BitmapData
      {
         return §'c§;
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelStart[0]);
         this.§7!R§ = new §5!P§(§?z§.§=7§);
         this.§-!z§ = (§%""§.getItemByName("Container_MenuLeftButtons") as §;!u§).height;
         this.§`!>§ = (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).height;
         this.§;^§ = §%""§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§ 0§ = §%""§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?z§.§=7§.§,L§(true);
         §?z§.§5!R§(this.§7!R§);
         this.§7!R§.init();
         this.§5!q§();
         §%""§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         §%""§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§?z§.§3R§());
         §%""§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§8!I§.§3!&§ ? false : true);
      }
      
      protected function §5!q§() : void
      {
         AngryBirdsFP11.§5!q§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;^§ = §%""§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§ 0§ = §%""§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§;a§(param1);
         if(!this.§@m§)
         {
            §?z§.§6!#§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      private function §;a§(param1:Number) : void
      {
         (§%""§.getItemByName("Container_MenuLeftButtons") as §;!u§).mClip.scrollRect = new Rectangle(0,0,(§%""§.getItemByName("Container_MenuLeftButtons") as §;!u§).width,this.§-!z§ + 20 - (this.§-!z§ - this.§+!%§));
         (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).mClip.scrollRect = new Rectangle(0,0,(§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).width,this.§`!>§ + 20 - (this.§`!>§ - this.§&Z§));
         if(this.§9i§)
         {
            (§%""§.getItemByName("Container_MenuLeftButtons") as §;!u§).setVisibility(true);
            if(this.§&E§ < 90)
            {
               this.§&E§ += 0.3 * param1;
            }
            if(this.§&E§ > 90)
            {
               this.§&E§ = 90;
            }
            if(this.§+!%§ < this.§-!z§)
            {
               this.§+!%§ += 0.5 * param1;
            }
            if(this.§+!%§ > this.§-!z§)
            {
               this.§+!%§ = this.§-!z§;
            }
         }
         else
         {
            if(this.§&E§ > 0)
            {
               this.§&E§ -= 0.3 * param1;
            }
            if(this.§&E§ < 0)
            {
               this.§&E§ = 0;
            }
            if(this.§+!%§ > 0)
            {
               this.§+!%§ -= 0.5 * param1;
            }
            if(this.§+!%§ < 0)
            {
               (§%""§.getItemByName("Container_MenuLeftButtons") as §;!u§).setVisibility(false);
               this.§+!%§ = 0;
            }
         }
         if(this.§5"8§)
         {
            (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).setVisibility(true);
            if(this.§-D§ < 180)
            {
               this.§-D§ += 0.5 * param1;
               (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).y = (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).y - 0.5 * param1;
            }
            if(this.§-D§ > 180)
            {
               this.§-D§ = 180;
            }
            if(this.§&Z§ < this.§`!>§)
            {
               this.§&Z§ += 0.5 * param1;
            }
            if(this.§&Z§ > this.§`!>§)
            {
               this.§&Z§ = this.§`!>§;
            }
         }
         else
         {
            if(this.§-D§ > 0)
            {
               this.§-D§ -= 0.5 * param1;
               (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).y = (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).y + 0.5 * param1;
            }
            if(this.§-D§ < 0)
            {
               this.§-D§ = 0;
            }
            if(this.§&Z§ > 0)
            {
               this.§&Z§ -= 0.5 * param1;
            }
            if(this.§&Z§ < 0)
            {
               (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).setVisibility(false);
               this.§&Z§ = 0;
            }
         }
         (§%""§.getItemByName("Button_LeftMenuOpen") as §2v§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§%""§.getItemByName("Button_RightMenuOpen") as §2v§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§%""§.getItemByName("Button_LeftMenuOpen") as §2v§).mClip.MovieClip_LeftMenuImage.rotation = this.§&E§;
         (§%""§.getItemByName("Button_RightMenuOpen") as §2v§).mClip.MovieClip_RightMenuImage.rotation = this.§-D§;
         (§%""§.getItemByName("Container_MenuLeftButtons") as §;!u§).y = this.§;^§ - this.§+!%§;
         (§%""§.getItemByName("Container_MenuRightButtons") as §;!u§).y = this.§ 0§ - this.§&Z§;
      }
      
      override public function deActivate() : void
      {
         (§%""§.getItemByName("Button_Play") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§?G§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§9i§)
               {
                  this.§9i§ = false;
               }
               else
               {
                  this.§9i§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§5"8§)
               {
                  this.§5"8§ = false;
               }
               else
               {
                  this.§5"8§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §0!t§.playSound("Menu_Confirm");
               mNextState = §+v§.§^z§;
               break;
            case "OPEN_MENU":
               §%""§.setItemVisibility("Container_MenuButtons",!§%""§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§?z§.§3R§();
               §?z§.§'8§(_loc4_);
               §%""§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §0!t§.playSound("Menu_Confirm");
               AngryBirdsFP11.§@!N§.§2!1§();
               break;
            case "OPEN_CREDITS":
               §0!t§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §0!t§.playSound("Menu_Confirm");
               mNextState = §"!Y§.§^z§;
               this.§9i§ = false;
               break;
            case "SOUNDS_BUTTON":
               §0!t§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  this.§5!q§();
               }
               §%""§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§;!@§ == null)
               {
                  this.§;!@§ = new §!§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§%""§.getItemByName("MovieClip_YouTubeArea") as §%!`§).changeMovieClip(this.§;!@§);
                  (§%""§.getItemByName("MovieClip_YouTubeArea") as §%!`§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
