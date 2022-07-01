package §,#§
{
   import §"!G§.§3!f§;
   import §%f§.§>a§;
   import §1Q§.§%!Y§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;"+§.§0?§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import com.angrybirds.§4"6§;
   import flash.geom.Rectangle;
   
   public class §&3§ extends §@!4§
   {
      
      public static const §'u§:String = "LevelStartState";
       
      
      private var §#L§:Boolean = false;
      
      private var §5J§:Boolean = false;
      
      private var §5!Y§:§%!Y§ = null;
      
      private var §8S§:Boolean = false;
      
      private var §;9§:Boolean = false;
      
      private var §1c§:Number = 0;
      
      private var §-!?§:Number = 0;
      
      private var §?!&§:Number = 0;
      
      private var §07§:Number = 0;
      
      private var §'"1§:Number;
      
      private var §3!]§:Number;
      
      private var §"! §:Number;
      
      private var §?"0§:Number;
      
      private var §=!w§:§>a§;
      
      public function §&3§(param1:§3"&§, param2:§3!f§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_LevelStart[0]);
         this.§5!Y§ = new §%!Y§(§4"6§.§;!k§,§!3§);
         this.§'"1§ = (§^!6§.getItemByName("Container_MenuLeftButtons") as §^!i§).height;
         this.§3!]§ = (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).height;
         this.§"! § = §^!6§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§?"0§ = §^!6§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"6§.§;!k§.§7!X§(true);
         §4"6§.setController(this.§5!Y§);
         this.§5!Y§.init();
         §-O§.§5!1§.§"-§();
         §^!6§.getItemByName("MovieClip_SoundsOff").setVisibility(!§-O§.§^j§());
         §^!6§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§4"6§.§4!f§());
         §^!6§.getItemByName("Button_MEBuy").setVisibility(!!§-O§.§5!1§.§]u§.userProgress.§>!l§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§"! § = §^!6§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§?"0§ = §^!6§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§^!j§(param1);
         if(!this.§5J§)
         {
            §4"6§.controller.update(param1);
         }
      }
      
      private function §^!j§(param1:Number) : void
      {
         (§^!6§.getItemByName("Container_MenuLeftButtons") as §^!i§).mClip.scrollRect = new Rectangle(0,0,(§^!6§.getItemByName("Container_MenuLeftButtons") as §^!i§).width,this.§'"1§ + 20 - (this.§'"1§ - this.§?!&§));
         (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).mClip.scrollRect = new Rectangle(0,0,(§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).width,this.§3!]§ + 20 - (this.§3!]§ - this.§07§));
         if(this.§8S§)
         {
            (§^!6§.getItemByName("Container_MenuLeftButtons") as §^!i§).setVisibility(true);
            if(this.§1c§ < 90)
            {
               this.§1c§ += 0.3 * param1;
            }
            if(this.§1c§ > 90)
            {
               this.§1c§ = 90;
            }
            if(this.§?!&§ < this.§'"1§)
            {
               this.§?!&§ += 0.5 * param1;
            }
            if(this.§?!&§ > this.§'"1§)
            {
               this.§?!&§ = this.§'"1§;
            }
         }
         else
         {
            if(this.§1c§ > 0)
            {
               this.§1c§ -= 0.3 * param1;
            }
            if(this.§1c§ < 0)
            {
               this.§1c§ = 0;
            }
            if(this.§?!&§ > 0)
            {
               this.§?!&§ -= 0.5 * param1;
            }
            if(this.§?!&§ < 0)
            {
               (§^!6§.getItemByName("Container_MenuLeftButtons") as §^!i§).setVisibility(false);
               this.§?!&§ = 0;
            }
         }
         if(this.§;9§)
         {
            (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).setVisibility(true);
            if(this.§-!?§ < 180)
            {
               this.§-!?§ += 0.5 * param1;
               (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).y = (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).y - 0.5 * param1;
            }
            if(this.§-!?§ > 180)
            {
               this.§-!?§ = 180;
            }
            if(this.§07§ < this.§3!]§)
            {
               this.§07§ += 0.5 * param1;
            }
            if(this.§07§ > this.§3!]§)
            {
               this.§07§ = this.§3!]§;
            }
         }
         else
         {
            if(this.§-!?§ > 0)
            {
               this.§-!?§ -= 0.5 * param1;
               (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).y = (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).y + 0.5 * param1;
            }
            if(this.§-!?§ < 0)
            {
               this.§-!?§ = 0;
            }
            if(this.§07§ > 0)
            {
               this.§07§ -= 0.5 * param1;
            }
            if(this.§07§ < 0)
            {
               (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).setVisibility(false);
               this.§07§ = 0;
            }
         }
         (§^!6§.getItemByName("Button_LeftMenuOpen") as §9!M§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§^!6§.getItemByName("Button_RightMenuOpen") as §9!M§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§^!6§.getItemByName("Button_LeftMenuOpen") as §9!M§).mClip.MovieClip_LeftMenuImage.rotation = this.§1c§;
         (§^!6§.getItemByName("Button_RightMenuOpen") as §9!M§).mClip.MovieClip_RightMenuImage.rotation = this.§-!?§;
         (§^!6§.getItemByName("Container_MenuLeftButtons") as §^!i§).y = this.§"! § - this.§?!&§;
         (§^!6§.getItemByName("Container_MenuRightButtons") as §^!i§).y = this.§?"0§ - this.§07§;
      }
      
      override public function deActivate() : void
      {
         (§^!6§.getItemByName("Button_Play") as §9!M§).setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#L§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§8S§)
               {
                  this.§8S§ = false;
               }
               else
               {
                  this.§8S§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§;9§)
               {
                  this.§;9§ = false;
               }
               else
               {
                  this.§;9§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §]d§.§^!J§("Menu_Confirm");
               §'"6§(StateEpisodeSelection.§'u§);
               break;
            case "OPEN_MENU":
               §^!6§.setItemVisibility("Container_MenuButtons",!§^!6§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§4"6§.§4!f§();
               §4"6§.§;!7§(_loc4_);
               §^!6§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §]d§.§^!J§("Menu_Confirm");
               §-O§.§5!1§.§0`§();
               break;
            case "OPEN_CREDITS":
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §]d§.§^!J§("Menu_Confirm");
               §'"6§(§6L§.§'u§);
               this.§8S§ = false;
               break;
            case "SOUNDS_BUTTON":
               §]d§.§^!J§("Menu_Confirm");
               _loc5_ = !§-O§.§^j§();
               §-O§.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  §-O§.§5!1§.§"-§();
               }
               §^!6§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§=!w§ == null)
               {
                  this.§=!w§ = new §>a§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§^!6§.getItemByName("MovieClip_YouTubeArea") as §0?§).changeMovieClip(this.§=!w§);
                  (§^!6§.getItemByName("MovieClip_YouTubeArea") as §0?§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
