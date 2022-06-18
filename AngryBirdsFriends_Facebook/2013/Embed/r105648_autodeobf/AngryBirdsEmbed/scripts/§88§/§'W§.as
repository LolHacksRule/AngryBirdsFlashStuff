package §88§
{
   import § `§.§&!?§;
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §&U§.§!X§;
   import §&U§.§05§;
   import §&U§.§^!@§;
   import §1t§.§-!M§;
   import §1t§.§`!B§;
   import §8!=§.§3`§;
   import §8T§.§@o§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §'W§ extends §2q§
   {
      
      public static const §&! §:String = "LevelStartState";
      
      private static var §>R§:BitmapData = null;
       
      
      private var §1[§:Boolean = false;
      
      private var §^! §:Boolean = false;
      
      private var §8j§:§&!?§ = null;
      
      private var §!!'§:Boolean = false;
      
      private var §,d§:Boolean = false;
      
      private var §8!C§:Number = 0;
      
      private var §%I§:Number = 0;
      
      private var §?@§:Number = 0;
      
      private var §<!6§:Number = 0;
      
      private var §#!?§:Number;
      
      private var § !+§:Number;
      
      private var §^"§:Number;
      
      private var §4!'§:Number;
      
      private var § for§:§3`§;
      
      public function §'W§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §-!3§() : BitmapData
      {
         return §>R§;
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_LevelStart[0]);
         this.§8j§ = new §&!?§(§'5§.§^;§);
         this.§#!?§ = (§=V§.getItemByName("Container_MenuLeftButtons") as §05§).height;
         this.§ !+§ = (§=V§.getItemByName("Container_MenuRightButtons") as §05§).height;
         this.§^"§ = §=V§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§4!'§ = §=V§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'5§.§^;§.§]g§(true);
         §'5§.§0o§(this.§8j§);
         this.§8j§.init();
         this.§7E§();
         §=V§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§[!0§());
         §=V§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§'5§.§`M§());
         §=V§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§2h§ ? false : true);
      }
      
      protected function §7E§() : void
      {
         AngryBirdsFP11.§7E§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^"§ = §=V§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§4!'§ = §=V§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§#'§(param1);
         if(!this.§^! §)
         {
            §'5§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      private function §#'§(param1:Number) : void
      {
         (§=V§.getItemByName("Container_MenuLeftButtons") as §05§).mClip.scrollRect = new Rectangle(0,0,(§=V§.getItemByName("Container_MenuLeftButtons") as §05§).width,this.§#!?§ + 20 - (this.§#!?§ - this.§?@§));
         (§=V§.getItemByName("Container_MenuRightButtons") as §05§).mClip.scrollRect = new Rectangle(0,0,(§=V§.getItemByName("Container_MenuRightButtons") as §05§).width,this.§ !+§ + 20 - (this.§ !+§ - this.§<!6§));
         if(this.§!!'§)
         {
            (§=V§.getItemByName("Container_MenuLeftButtons") as §05§).setVisibility(true);
            if(this.§8!C§ < 90)
            {
               this.§8!C§ += 0.3 * param1;
            }
            if(this.§8!C§ > 90)
            {
               this.§8!C§ = 90;
            }
            if(this.§?@§ < this.§#!?§)
            {
               this.§?@§ += 0.5 * param1;
            }
            if(this.§?@§ > this.§#!?§)
            {
               this.§?@§ = this.§#!?§;
            }
         }
         else
         {
            if(this.§8!C§ > 0)
            {
               this.§8!C§ -= 0.3 * param1;
            }
            if(this.§8!C§ < 0)
            {
               this.§8!C§ = 0;
            }
            if(this.§?@§ > 0)
            {
               this.§?@§ -= 0.5 * param1;
            }
            if(this.§?@§ < 0)
            {
               (§=V§.getItemByName("Container_MenuLeftButtons") as §05§).setVisibility(false);
               this.§?@§ = 0;
            }
         }
         if(this.§,d§)
         {
            (§=V§.getItemByName("Container_MenuRightButtons") as §05§).setVisibility(true);
            if(this.§%I§ < 180)
            {
               this.§%I§ += 0.5 * param1;
               (§=V§.getItemByName("Container_MenuRightButtons") as §05§).y = (§=V§.getItemByName("Container_MenuRightButtons") as §05§).y - 0.5 * param1;
            }
            if(this.§%I§ > 180)
            {
               this.§%I§ = 180;
            }
            if(this.§<!6§ < this.§ !+§)
            {
               this.§<!6§ += 0.5 * param1;
            }
            if(this.§<!6§ > this.§ !+§)
            {
               this.§<!6§ = this.§ !+§;
            }
         }
         else
         {
            if(this.§%I§ > 0)
            {
               this.§%I§ -= 0.5 * param1;
               (§=V§.getItemByName("Container_MenuRightButtons") as §05§).y = (§=V§.getItemByName("Container_MenuRightButtons") as §05§).y + 0.5 * param1;
            }
            if(this.§%I§ < 0)
            {
               this.§%I§ = 0;
            }
            if(this.§<!6§ > 0)
            {
               this.§<!6§ -= 0.5 * param1;
            }
            if(this.§<!6§ < 0)
            {
               (§=V§.getItemByName("Container_MenuRightButtons") as §05§).setVisibility(false);
               this.§<!6§ = 0;
            }
         }
         (§=V§.getItemByName("Button_LeftMenuOpen") as §^!@§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§=V§.getItemByName("Button_RightMenuOpen") as §^!@§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§=V§.getItemByName("Button_LeftMenuOpen") as §^!@§).mClip.MovieClip_LeftMenuImage.rotation = this.§8!C§;
         (§=V§.getItemByName("Button_RightMenuOpen") as §^!@§).mClip.MovieClip_RightMenuImage.rotation = this.§%I§;
         (§=V§.getItemByName("Container_MenuLeftButtons") as §05§).y = this.§^"§ - this.§?@§;
         (§=V§.getItemByName("Container_MenuRightButtons") as §05§).y = this.§4!'§ - this.§<!6§;
      }
      
      override public function deActivate() : void
      {
         (§=V§.getItemByName("Button_Play") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§1[§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§!!'§)
               {
                  this.§!!'§ = false;
               }
               else
               {
                  this.§!!'§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§,d§)
               {
                  this.§,d§ = false;
               }
               else
               {
                  this.§,d§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §@o§.playSound("Menu_Confirm");
               mNextState = §@_§.§&! §;
               break;
            case "OPEN_MENU":
               §=V§.setItemVisibility("Container_MenuButtons",!§=V§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§'5§.§`M§();
               §'5§.§4!K§(_loc4_);
               §=V§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §@o§.playSound("Menu_Confirm");
               AngryBirdsFP11.§^!<§.§;3§();
               break;
            case "OPEN_CREDITS":
               §@o§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §@o§.playSound("Menu_Confirm");
               mNextState = §7P§.§&! §;
               this.§!!'§ = false;
               break;
            case "SOUNDS_BUTTON":
               §@o§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§[!0§();
               AngryBirdsFP11.§;1§(_loc5_);
               if(_loc5_)
               {
                  this.§7E§();
               }
               §=V§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§ for§ == null)
               {
                  this.§ for§ = new §3`§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§=V§.getItemByName("MovieClip_YouTubeArea") as §!X§).changeMovieClip(this.§ for§);
                  (§=V§.getItemByName("MovieClip_YouTubeArea") as §!X§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
