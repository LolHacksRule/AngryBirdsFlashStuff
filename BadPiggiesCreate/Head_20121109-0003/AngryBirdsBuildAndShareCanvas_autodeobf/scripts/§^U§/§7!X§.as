package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!1§.§>3§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import §]§.§[!m§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §7!X§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelStartState";
      
      private static var §;_§:BitmapData = null;
       
      
      private var §%?§:Boolean = false;
      
      private var §2"!§:Boolean = false;
      
      private var §6"=§:§[!m§ = null;
      
      private var §&!Q§:Boolean = false;
      
      private var §,C§:Boolean = false;
      
      private var §[!`§:Number = 0;
      
      private var §>!y§:Number = 0;
      
      private var §>z§:Number = 0;
      
      private var §@!9§:Number = 0;
      
      private var §5!8§:Number;
      
      private var §2"5§:Number;
      
      private var §'!h§:Number;
      
      private var §8Y§:Number;
      
      private var §`]§:§>3§;
      
      public function §7!X§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §[p§() : BitmapData
      {
         return §;_§;
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelStart[0]);
         this.§6"=§ = new §[!m§(§'_§.§=M§);
         this.§5!8§ = (§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).height;
         this.§2"5§ = (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).height;
         this.§'!h§ = §`!v§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§8Y§ = §`!v§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'_§.§=M§.§'"@§(true);
         §'_§.§^`§(this.§6"=§);
         this.§6"=§.init();
         this.§do §();
         §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         §`!v§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§'_§.§&R§());
         §`!v§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§>!7§.§3!I§ ? false : true);
      }
      
      protected function §do §() : void
      {
         AngryBirdsFP11.§do §();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§'!h§ = §`!v§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§8Y§ = §`!v§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§9" §(param1);
         if(!this.§2"!§)
         {
            §'_§.§=R§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      private function §9" §(param1:Number) : void
      {
         (§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).mClip.scrollRect = new Rectangle(0,0,(§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).width,this.§5!8§ + 20 - (this.§5!8§ - this.§>z§));
         (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).mClip.scrollRect = new Rectangle(0,0,(§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).width,this.§2"5§ + 20 - (this.§2"5§ - this.§@!9§));
         if(this.§&!Q§)
         {
            (§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).setVisibility(true);
            if(this.§[!`§ < 90)
            {
               this.§[!`§ += 0.3 * param1;
            }
            if(this.§[!`§ > 90)
            {
               this.§[!`§ = 90;
            }
            if(this.§>z§ < this.§5!8§)
            {
               this.§>z§ += 0.5 * param1;
            }
            if(this.§>z§ > this.§5!8§)
            {
               this.§>z§ = this.§5!8§;
            }
         }
         else
         {
            if(this.§[!`§ > 0)
            {
               this.§[!`§ -= 0.3 * param1;
            }
            if(this.§[!`§ < 0)
            {
               this.§[!`§ = 0;
            }
            if(this.§>z§ > 0)
            {
               this.§>z§ -= 0.5 * param1;
            }
            if(this.§>z§ < 0)
            {
               (§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).setVisibility(false);
               this.§>z§ = 0;
            }
         }
         if(this.§,C§)
         {
            (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).setVisibility(true);
            if(this.§>!y§ < 180)
            {
               this.§>!y§ += 0.5 * param1;
               (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).y = (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).y - 0.5 * param1;
            }
            if(this.§>!y§ > 180)
            {
               this.§>!y§ = 180;
            }
            if(this.§@!9§ < this.§2"5§)
            {
               this.§@!9§ += 0.5 * param1;
            }
            if(this.§@!9§ > this.§2"5§)
            {
               this.§@!9§ = this.§2"5§;
            }
         }
         else
         {
            if(this.§>!y§ > 0)
            {
               this.§>!y§ -= 0.5 * param1;
               (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).y = (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).y + 0.5 * param1;
            }
            if(this.§>!y§ < 0)
            {
               this.§>!y§ = 0;
            }
            if(this.§@!9§ > 0)
            {
               this.§@!9§ -= 0.5 * param1;
            }
            if(this.§@!9§ < 0)
            {
               (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).setVisibility(false);
               this.§@!9§ = 0;
            }
         }
         (§`!v§.getItemByName("Button_LeftMenuOpen") as §9"8§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§`!v§.getItemByName("Button_RightMenuOpen") as §9"8§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§`!v§.getItemByName("Button_LeftMenuOpen") as §9"8§).mClip.MovieClip_LeftMenuImage.rotation = this.§[!`§;
         (§`!v§.getItemByName("Button_RightMenuOpen") as §9"8§).mClip.MovieClip_RightMenuImage.rotation = this.§>!y§;
         (§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).y = this.§'!h§ - this.§>z§;
         (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).y = this.§8Y§ - this.§@!9§;
      }
      
      override public function deActivate() : void
      {
         (§`!v§.getItemByName("Button_Play") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%?§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§&!Q§)
               {
                  this.§&!Q§ = false;
               }
               else
               {
                  this.§&!Q§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§,C§)
               {
                  this.§,C§ = false;
               }
               else
               {
                  this.§,C§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §0"#§.§9"2§("Menu_Confirm");
               mNextState = §2u§.§%!Q§;
               break;
            case "OPEN_MENU":
               §`!v§.setItemVisibility("Container_MenuButtons",!§`!v§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§'_§.§&R§();
               §'_§.§?R§(_loc4_);
               §`!v§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §0"#§.§9"2§("Menu_Confirm");
               AngryBirdsFP11.§@"7§.§>!5§();
               break;
            case "OPEN_CREDITS":
               §0"#§.§9"2§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §0"#§.§9"2§("Menu_Confirm");
               mNextState = §<K§.§%!Q§;
               this.§&!Q§ = false;
               break;
            case "SOUNDS_BUTTON":
               §0"#§.§9"2§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  this.§do §();
               }
               §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§`]§ == null)
               {
                  this.§`]§ = new §>3§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§`!v§.getItemByName("MovieClip_YouTubeArea") as §@u§).changeMovieClip(this.§`]§);
                  (§`!v§.getItemByName("MovieClip_YouTubeArea") as §@u§).setVisibility(true);
               }
         }
      }
   }
}
