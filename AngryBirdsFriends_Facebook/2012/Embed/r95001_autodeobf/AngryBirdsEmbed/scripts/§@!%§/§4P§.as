package §@!%§
{
   import §!!G§.§6i§;
   import §-'§.§package§;
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §4-§.§'J§;
   import §4-§.§;g§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §4P§ extends §1!,§
   {
      
      public static const §5%§:String = "LevelStartState";
      
      private static var §4i§:BitmapData = null;
       
      
      private var §#!3§:Boolean = false;
      
      private var §5m§:Boolean = false;
      
      private var §8!1§:§6i§ = null;
      
      private var §;o§:Boolean = false;
      
      private var §^T§:Boolean = false;
      
      private var §#v§:Number = 0;
      
      private var §?!§:Number = 0;
      
      private var §4a§:Number = 0;
      
      private var §4R§:Number = 0;
      
      private var §'!"§:Number;
      
      private var §8!=§:Number;
      
      private var §4H§:Number;
      
      private var final:Number;
      
      private var §^e§:§package§;
      
      public function §4P§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §!Y§() : BitmapData
      {
         return §4i§;
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_LevelStart[0]);
         this.§8!1§ = new §6i§(§#!4§.§^Y§);
         this.§'!"§ = (§`k§.getItemByName("Container_MenuLeftButtons") as §'J§).height;
         this.§8!=§ = (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).height;
         this.§4H§ = §`k§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.final = §`k§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §#!4§.§^Y§.§<[§(true);
         §#!4§.§>=§(this.§8!1§);
         this.§8!1§.init();
         AngryBirdsFP11.§7!0§();
         §`k§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§>!6§());
         §`k§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§#!4§.§9!A§());
         §`k§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§0R§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§4H§ = §`k§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.final = §`k§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§"c§(param1);
         if(!this.§5m§)
         {
            §#!4§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      private function §"c§(param1:Number) : void
      {
         (§`k§.getItemByName("Container_MenuLeftButtons") as §'J§).mClip.scrollRect = new Rectangle(0,0,(§`k§.getItemByName("Container_MenuLeftButtons") as §'J§).width,this.§'!"§ + 20 - (this.§'!"§ - this.§4a§));
         (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).mClip.scrollRect = new Rectangle(0,0,(§`k§.getItemByName("Container_MenuRightButtons") as §'J§).width,this.§8!=§ + 20 - (this.§8!=§ - this.§4R§));
         if(this.§;o§)
         {
            (§`k§.getItemByName("Container_MenuLeftButtons") as §'J§).setVisibility(true);
            if(this.§#v§ < 90)
            {
               this.§#v§ += 0.3 * param1;
            }
            if(this.§#v§ > 90)
            {
               this.§#v§ = 90;
            }
            if(this.§4a§ < this.§'!"§)
            {
               this.§4a§ += 0.5 * param1;
            }
            if(this.§4a§ > this.§'!"§)
            {
               this.§4a§ = this.§'!"§;
            }
         }
         else
         {
            if(this.§#v§ > 0)
            {
               this.§#v§ -= 0.3 * param1;
            }
            if(this.§#v§ < 0)
            {
               this.§#v§ = 0;
            }
            if(this.§4a§ > 0)
            {
               this.§4a§ -= 0.5 * param1;
            }
            if(this.§4a§ < 0)
            {
               (§`k§.getItemByName("Container_MenuLeftButtons") as §'J§).setVisibility(false);
               this.§4a§ = 0;
            }
         }
         if(this.§^T§)
         {
            (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).setVisibility(true);
            if(this.§?!§ < 180)
            {
               this.§?!§ += 0.5 * param1;
               (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).y = (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).y - 0.5 * param1;
            }
            if(this.§?!§ > 180)
            {
               this.§?!§ = 180;
            }
            if(this.§4R§ < this.§8!=§)
            {
               this.§4R§ += 0.5 * param1;
            }
            if(this.§4R§ > this.§8!=§)
            {
               this.§4R§ = this.§8!=§;
            }
         }
         else
         {
            if(this.§?!§ > 0)
            {
               this.§?!§ -= 0.5 * param1;
               (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).y = (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).y + 0.5 * param1;
            }
            if(this.§?!§ < 0)
            {
               this.§?!§ = 0;
            }
            if(this.§4R§ > 0)
            {
               this.§4R§ -= 0.5 * param1;
            }
            if(this.§4R§ < 0)
            {
               (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).setVisibility(false);
               this.§4R§ = 0;
            }
         }
         (§`k§.getItemByName("Button_LeftMenuOpen") as §%+§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§`k§.getItemByName("Button_RightMenuOpen") as §%+§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§`k§.getItemByName("Button_LeftMenuOpen") as §%+§).mClip.MovieClip_LeftMenuImage.rotation = this.§#v§;
         (§`k§.getItemByName("Button_RightMenuOpen") as §%+§).mClip.MovieClip_RightMenuImage.rotation = this.§?!§;
         (§`k§.getItemByName("Container_MenuLeftButtons") as §'J§).y = this.§4H§ - this.§4a§;
         (§`k§.getItemByName("Container_MenuRightButtons") as §'J§).y = this.final - this.§4R§;
      }
      
      override public function deActivate() : void
      {
         (§`k§.getItemByName("Button_Play") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#!3§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§;o§)
               {
                  this.§;o§ = false;
                  break;
               }
               this.§;o§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§^T§)
               {
                  this.§^T§ = false;
                  break;
               }
               this.§^T§ = true;
               break;
            case "PLAY_LEVEL":
               §7_§.§4!5§("Menu_Confirm");
               mNextState = §9d§.§5%§;
               break;
            case "OPEN_MENU":
               §`k§.setItemVisibility("Container_MenuButtons",!§`k§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§#!4§.§9!A§();
               §#!4§.§>R§(_loc4_);
               §`k§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §7_§.§4!5§("Menu_Confirm");
               AngryBirdsFP11.§?,§.§do§();
               break;
            case "OPEN_CREDITS":
               §7_§.§4!5§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §7_§.§4!5§("Menu_Confirm");
               mNextState = §6a§.§5%§;
               this.§;o§ = false;
               break;
            case "SOUNDS_BUTTON":
               §7_§.§4!5§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§>!6§();
               AngryBirdsFP11.§@d§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§7!0§();
               }
               §`k§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§^e§ == null)
               {
                  this.§^e§ = new §package§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§`k§.getItemByName("MovieClip_YouTubeArea") as §;g§).changeMovieClip(this.§^e§);
                  (§`k§.getItemByName("MovieClip_YouTubeArea") as §;g§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
