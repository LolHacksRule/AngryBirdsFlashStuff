package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§"Z§;
   import §"",§.§<+§;
   import §"",§.§<?§;
   import §+I§.§9!%§;
   import §-I§.§-"§;
   import §1"2§.§ F§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §<!<§.§+!0§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §&!x§ extends §,-§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var §2!T§:BitmapData = null;
       
      
      private var §5z§:Boolean = false;
      
      private var §!"7§:Boolean = false;
      
      private var §3!g§:§-"§ = null;
      
      private var §?!W§:Boolean = false;
      
      private var §=V§:Boolean = false;
      
      private var §`!<§:Number = 0;
      
      private var §-Z§:Number = 0;
      
      private var §[L§:Number = 0;
      
      private var §4!z§:Number = 0;
      
      private var §5Y§:Number;
      
      private var §;!,§:Number;
      
      private var §&m§:Number;
      
      private var §1=§:Number;
      
      private var §1!r§:§+!0§;
      
      public function §&!x§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §8!O§() : BitmapData
      {
         return §2!T§;
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LevelStart[0]);
         this.§3!g§ = new §-"§(§9!%§.§!!M§);
         this.§5Y§ = (§2"-§.getItemByName("Container_MenuLeftButtons") as §<+§).height;
         this.§;!,§ = (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).height;
         this.§&m§ = §2"-§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§1=§ = §2"-§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §9!%§.§!!M§.§5"!§(true);
         §9!%§.setController(this.§3!g§);
         this.§3!g§.init();
         this.playThemeMusic();
         §2"-§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§0!+§());
         §2"-§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§9!%§.§3"%§());
         §2"-§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§8!l§ ? false : true);
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§&m§ = §2"-§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§1=§ = §2"-§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§]!P§(param1);
         if(!this.§!"7§)
         {
            §9!%§.§&N§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      private function §]!P§(param1:Number) : void
      {
         (§2"-§.getItemByName("Container_MenuLeftButtons") as §<+§).mClip.scrollRect = new Rectangle(0,0,(§2"-§.getItemByName("Container_MenuLeftButtons") as §<+§).width,this.§5Y§ + 20 - (this.§5Y§ - this.§[L§));
         (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).mClip.scrollRect = new Rectangle(0,0,(§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).width,this.§;!,§ + 20 - (this.§;!,§ - this.§4!z§));
         if(this.§?!W§)
         {
            (§2"-§.getItemByName("Container_MenuLeftButtons") as §<+§).setVisibility(true);
            if(this.§`!<§ < 90)
            {
               this.§`!<§ += 0.3 * param1;
            }
            if(this.§`!<§ > 90)
            {
               this.§`!<§ = 90;
            }
            if(this.§[L§ < this.§5Y§)
            {
               this.§[L§ += 0.5 * param1;
            }
            if(this.§[L§ > this.§5Y§)
            {
               this.§[L§ = this.§5Y§;
            }
         }
         else
         {
            if(this.§`!<§ > 0)
            {
               this.§`!<§ -= 0.3 * param1;
            }
            if(this.§`!<§ < 0)
            {
               this.§`!<§ = 0;
            }
            if(this.§[L§ > 0)
            {
               this.§[L§ -= 0.5 * param1;
            }
            if(this.§[L§ < 0)
            {
               (§2"-§.getItemByName("Container_MenuLeftButtons") as §<+§).setVisibility(false);
               this.§[L§ = 0;
            }
         }
         if(this.§=V§)
         {
            (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).setVisibility(true);
            if(this.§-Z§ < 180)
            {
               this.§-Z§ += 0.5 * param1;
               (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).y = (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).y - 0.5 * param1;
            }
            if(this.§-Z§ > 180)
            {
               this.§-Z§ = 180;
            }
            if(this.§4!z§ < this.§;!,§)
            {
               this.§4!z§ += 0.5 * param1;
            }
            if(this.§4!z§ > this.§;!,§)
            {
               this.§4!z§ = this.§;!,§;
            }
         }
         else
         {
            if(this.§-Z§ > 0)
            {
               this.§-Z§ -= 0.5 * param1;
               (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).y = (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).y + 0.5 * param1;
            }
            if(this.§-Z§ < 0)
            {
               this.§-Z§ = 0;
            }
            if(this.§4!z§ > 0)
            {
               this.§4!z§ -= 0.5 * param1;
            }
            if(this.§4!z§ < 0)
            {
               (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).setVisibility(false);
               this.§4!z§ = 0;
            }
         }
         (§2"-§.getItemByName("Button_LeftMenuOpen") as §<?§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§2"-§.getItemByName("Button_RightMenuOpen") as §<?§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§2"-§.getItemByName("Button_LeftMenuOpen") as §<?§).mClip.MovieClip_LeftMenuImage.rotation = this.§`!<§;
         (§2"-§.getItemByName("Button_RightMenuOpen") as §<?§).mClip.MovieClip_RightMenuImage.rotation = this.§-Z§;
         (§2"-§.getItemByName("Container_MenuLeftButtons") as §<+§).y = this.§&m§ - this.§[L§;
         (§2"-§.getItemByName("Container_MenuRightButtons") as §<+§).y = this.§1=§ - this.§4!z§;
      }
      
      override public function deActivate() : void
      {
         (§2"-§.getItemByName("Button_Play") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§5z§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§?!W§)
               {
                  this.§?!W§ = false;
               }
               else
               {
                  this.§?!W§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§=V§)
               {
                  this.§=V§ = false;
               }
               else
               {
                  this.§=V§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §%4§.§>f§("Menu_Confirm");
               mNextState = §=!e§.STATE_NAME;
               break;
            case "OPEN_MENU":
               §2"-§.setItemVisibility("Container_MenuButtons",!§2"-§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§9!%§.§3"%§();
               §9!%§.§!`§(_loc4_);
               §2"-§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §%4§.§>f§("Menu_Confirm");
               AngryBirdsFP11.§`"B§.§>!-§();
               break;
            case "OPEN_CREDITS":
               §%4§.§>f§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §%4§.§>f§("Menu_Confirm");
               mNextState = §2&§.STATE_NAME;
               this.§?!W§ = false;
               break;
            case "SOUNDS_BUTTON":
               §%4§.§>f§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§0!+§();
               AngryBirdsFP11.§#u§(_loc5_);
               if(_loc5_)
               {
                  this.playThemeMusic();
               }
               §2"-§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§1!r§ == null)
               {
                  this.§1!r§ = new §+!0§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§2"-§.getItemByName("MovieClip_YouTubeArea") as §"Z§).changeMovieClip(this.§1!r§);
                  (§2"-§.getItemByName("MovieClip_YouTubeArea") as §"Z§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
