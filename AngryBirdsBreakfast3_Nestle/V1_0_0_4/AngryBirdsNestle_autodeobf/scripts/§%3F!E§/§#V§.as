package §?!E§
{
   import §&!>§.§3!k§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §9!o§.§=!-§;
   import §;!b§.§%>§;
   import §@#§.§4!O§;
   import §@#§.§5!"§;
   import §@#§.§9!'§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import §`6§.§!!R§;
   import com.angrybirds.§6U§;
   import flash.geom.Rectangle;
   
   public class §#V§ extends §5"#§
   {
      
      public static const §+B§:String = "LevelStartState";
       
      
      private var §'H§:Boolean = false;
      
      private var §<! §:Boolean = false;
      
      private var §23§:§=!-§ = null;
      
      private var §6!I§:Boolean = false;
      
      private var §0!y§:Boolean = false;
      
      private var §%!z§:Number = 0;
      
      private var §`D§:Number = 0;
      
      private var §["-§:Number = 0;
      
      private var §#N§:Number = 0;
      
      private var §]"3§:Number;
      
      private var §;! §:Number;
      
      private var §7!w§:Number;
      
      private var §9J§:Number;
      
      private var §`!R§:§!!R§;
      
      public function §#V§(param1:§=!o§, param2:§%>§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_LevelStart[0]);
         this.§23§ = new §=!-§(§6U§.§+_§,§+o§);
         this.§]"3§ = (§#2§.getItemByName("Container_MenuLeftButtons") as §9!'§).height;
         this.§;! § = (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).height;
         this.§7!w§ = §#2§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§9J§ = §#2§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6U§.§+_§.§ W§(true);
         §6U§.setController(this.§23§);
         this.§23§.init();
         §-!l§.§"x§.§"H§();
         §#2§.getItemByName("MovieClip_SoundsOff").setVisibility(!§-!l§.§&!<§());
         §#2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§6U§.§2!,§());
         §#2§.getItemByName("Button_MEBuy").setVisibility(!!§-!l§.§"x§.§?"&§.userProgress.§3r§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§7!w§ = §#2§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§9J§ = §#2§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§4!%§(param1);
         if(!this.§<! §)
         {
            §6U§.controller.update(param1);
         }
      }
      
      private function §4!%§(param1:Number) : void
      {
         (§#2§.getItemByName("Container_MenuLeftButtons") as §9!'§).mClip.scrollRect = new Rectangle(0,0,(§#2§.getItemByName("Container_MenuLeftButtons") as §9!'§).width,this.§]"3§ + 20 - (this.§]"3§ - this.§["-§));
         (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).mClip.scrollRect = new Rectangle(0,0,(§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).width,this.§;! § + 20 - (this.§;! § - this.§#N§));
         if(this.§6!I§)
         {
            (§#2§.getItemByName("Container_MenuLeftButtons") as §9!'§).setVisibility(true);
            if(this.§%!z§ < 90)
            {
               this.§%!z§ += 0.3 * param1;
            }
            if(this.§%!z§ > 90)
            {
               this.§%!z§ = 90;
            }
            if(this.§["-§ < this.§]"3§)
            {
               this.§["-§ += 0.5 * param1;
            }
            if(this.§["-§ > this.§]"3§)
            {
               this.§["-§ = this.§]"3§;
            }
         }
         else
         {
            if(this.§%!z§ > 0)
            {
               this.§%!z§ -= 0.3 * param1;
            }
            if(this.§%!z§ < 0)
            {
               this.§%!z§ = 0;
            }
            if(this.§["-§ > 0)
            {
               this.§["-§ -= 0.5 * param1;
            }
            if(this.§["-§ < 0)
            {
               (§#2§.getItemByName("Container_MenuLeftButtons") as §9!'§).setVisibility(false);
               this.§["-§ = 0;
            }
         }
         if(this.§0!y§)
         {
            (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).setVisibility(true);
            if(this.§`D§ < 180)
            {
               this.§`D§ += 0.5 * param1;
               (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).y = (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).y - 0.5 * param1;
            }
            if(this.§`D§ > 180)
            {
               this.§`D§ = 180;
            }
            if(this.§#N§ < this.§;! §)
            {
               this.§#N§ += 0.5 * param1;
            }
            if(this.§#N§ > this.§;! §)
            {
               this.§#N§ = this.§;! §;
            }
         }
         else
         {
            if(this.§`D§ > 0)
            {
               this.§`D§ -= 0.5 * param1;
               (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).y = (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).y + 0.5 * param1;
            }
            if(this.§`D§ < 0)
            {
               this.§`D§ = 0;
            }
            if(this.§#N§ > 0)
            {
               this.§#N§ -= 0.5 * param1;
            }
            if(this.§#N§ < 0)
            {
               (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).setVisibility(false);
               this.§#N§ = 0;
            }
         }
         (§#2§.getItemByName("Button_LeftMenuOpen") as §4!O§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§#2§.getItemByName("Button_RightMenuOpen") as §4!O§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§#2§.getItemByName("Button_LeftMenuOpen") as §4!O§).mClip.MovieClip_LeftMenuImage.rotation = this.§%!z§;
         (§#2§.getItemByName("Button_RightMenuOpen") as §4!O§).mClip.MovieClip_RightMenuImage.rotation = this.§`D§;
         (§#2§.getItemByName("Container_MenuLeftButtons") as §9!'§).y = this.§7!w§ - this.§["-§;
         (§#2§.getItemByName("Container_MenuRightButtons") as §9!'§).y = this.§9J§ - this.§#N§;
      }
      
      override public function deActivate() : void
      {
         (§#2§.getItemByName("Button_Play") as §4!O§).setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§'H§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§6!I§)
               {
                  this.§6!I§ = false;
               }
               else
               {
                  this.§6!I§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§0!y§)
               {
                  this.§0!y§ = false;
               }
               else
               {
                  this.§0!y§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §3!k§.§]"4§("Menu_Confirm");
               §0!w§(StateEpisodeSelection.§+B§);
               break;
            case "OPEN_MENU":
               §#2§.setItemVisibility("Container_MenuButtons",!§#2§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§6U§.§2!,§();
               §6U§.§^!9§(_loc4_);
               §#2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §3!k§.§]"4§("Menu_Confirm");
               §-!l§.§"x§.§3l§();
               break;
            case "OPEN_CREDITS":
               §3!k§.§]"4§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §3!k§.§]"4§("Menu_Confirm");
               §0!w§(§2S§.§+B§);
               this.§6!I§ = false;
               break;
            case "SOUNDS_BUTTON":
               §3!k§.§]"4§("Menu_Confirm");
               _loc5_ = !§-!l§.§&!<§();
               §-!l§.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  §-!l§.§"x§.§"H§();
               }
               §#2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§`!R§ == null)
               {
                  this.§`!R§ = new §!!R§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§#2§.getItemByName("MovieClip_YouTubeArea") as §5!"§).changeMovieClip(this.§`!R§);
                  (§#2§.getItemByName("MovieClip_YouTubeArea") as §5!"§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
