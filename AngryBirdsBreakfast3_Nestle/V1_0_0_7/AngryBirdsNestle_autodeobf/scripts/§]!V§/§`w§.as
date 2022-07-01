package §]!V§
{
   import §!!&§.§'b§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§4!]§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import §^x§.§!b§;
   import com.angrybirds.§#Z§;
   import flash.geom.Rectangle;
   
   public class §`w§ extends §>!9§
   {
      
      public static const §+a§:String = "LevelStartState";
       
      
      private var §9a§:Boolean = false;
      
      private var §4!5§:Boolean = false;
      
      private var §6!L§:§!b§ = null;
      
      private var §&V§:Boolean = false;
      
      private var §'q§:Boolean = false;
      
      private var §+!n§:Number = 0;
      
      private var § !H§:Number = 0;
      
      private var §+!J§:Number = 0;
      
      private var §,7§:Number = 0;
      
      private var §=!z§:Number;
      
      private var §0! §:Number;
      
      private var §'"2§:Number;
      
      private var §#g§:Number;
      
      private var §<!1§:§'b§;
      
      public function §`w§(param1:§5!1§, param2:§&S§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_LevelStart[0]);
         this.§6!L§ = new §!b§(§#Z§.§'0§,§97§);
         this.§=!z§ = (§5+§.getItemByName("Container_MenuLeftButtons") as §]"4§).height;
         this.§0! § = (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).height;
         this.§'"2§ = §5+§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#g§ = §5+§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#Z§.§'0§.§#o§(true);
         §#Z§.setController(this.§6!L§);
         this.§6!L§.init();
         §,!X§.§>!G§.§ " §();
         §5+§.getItemByName("MovieClip_SoundsOff").setVisibility(!§,!X§.§>m§());
         §5+§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§#Z§.§-"5§());
         §5+§.getItemByName("Button_MEBuy").setVisibility(!!§,!X§.§>!G§.§>!I§.userProgress.§"-§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§'"2§ = §5+§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#g§ = §5+§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§5!#§(param1);
         if(!this.§4!5§)
         {
            §#Z§.controller.update(param1);
         }
      }
      
      private function §5!#§(param1:Number) : void
      {
         (§5+§.getItemByName("Container_MenuLeftButtons") as §]"4§).mClip.scrollRect = new Rectangle(0,0,(§5+§.getItemByName("Container_MenuLeftButtons") as §]"4§).width,this.§=!z§ + 20 - (this.§=!z§ - this.§+!J§));
         (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).mClip.scrollRect = new Rectangle(0,0,(§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).width,this.§0! § + 20 - (this.§0! § - this.§,7§));
         if(this.§&V§)
         {
            (§5+§.getItemByName("Container_MenuLeftButtons") as §]"4§).setVisibility(true);
            if(this.§+!n§ < 90)
            {
               this.§+!n§ += 0.3 * param1;
            }
            if(this.§+!n§ > 90)
            {
               this.§+!n§ = 90;
            }
            if(this.§+!J§ < this.§=!z§)
            {
               this.§+!J§ += 0.5 * param1;
            }
            if(this.§+!J§ > this.§=!z§)
            {
               this.§+!J§ = this.§=!z§;
            }
         }
         else
         {
            if(this.§+!n§ > 0)
            {
               this.§+!n§ -= 0.3 * param1;
            }
            if(this.§+!n§ < 0)
            {
               this.§+!n§ = 0;
            }
            if(this.§+!J§ > 0)
            {
               this.§+!J§ -= 0.5 * param1;
            }
            if(this.§+!J§ < 0)
            {
               (§5+§.getItemByName("Container_MenuLeftButtons") as §]"4§).setVisibility(false);
               this.§+!J§ = 0;
            }
         }
         if(this.§'q§)
         {
            (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).setVisibility(true);
            if(this.§ !H§ < 180)
            {
               this.§ !H§ += 0.5 * param1;
               (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).y = (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).y - 0.5 * param1;
            }
            if(this.§ !H§ > 180)
            {
               this.§ !H§ = 180;
            }
            if(this.§,7§ < this.§0! §)
            {
               this.§,7§ += 0.5 * param1;
            }
            if(this.§,7§ > this.§0! §)
            {
               this.§,7§ = this.§0! §;
            }
         }
         else
         {
            if(this.§ !H§ > 0)
            {
               this.§ !H§ -= 0.5 * param1;
               (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).y = (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).y + 0.5 * param1;
            }
            if(this.§ !H§ < 0)
            {
               this.§ !H§ = 0;
            }
            if(this.§,7§ > 0)
            {
               this.§,7§ -= 0.5 * param1;
            }
            if(this.§,7§ < 0)
            {
               (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).setVisibility(false);
               this.§,7§ = 0;
            }
         }
         (§5+§.getItemByName("Button_LeftMenuOpen") as §73§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§5+§.getItemByName("Button_RightMenuOpen") as §73§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§5+§.getItemByName("Button_LeftMenuOpen") as §73§).mClip.MovieClip_LeftMenuImage.rotation = this.§+!n§;
         (§5+§.getItemByName("Button_RightMenuOpen") as §73§).mClip.MovieClip_RightMenuImage.rotation = this.§ !H§;
         (§5+§.getItemByName("Container_MenuLeftButtons") as §]"4§).y = this.§'"2§ - this.§+!J§;
         (§5+§.getItemByName("Container_MenuRightButtons") as §]"4§).y = this.§#g§ - this.§,7§;
      }
      
      override public function deActivate() : void
      {
         (§5+§.getItemByName("Button_Play") as §73§).setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§9a§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§&V§)
               {
                  this.§&V§ = false;
               }
               else
               {
                  this.§&V§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§'q§)
               {
                  this.§'q§ = false;
               }
               else
               {
                  this.§'q§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §%!c§.§8" §("Menu_Confirm");
               §8!`§(StateEpisodeSelection.§+a§);
               break;
            case "OPEN_MENU":
               §5+§.setItemVisibility("Container_MenuButtons",!§5+§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§#Z§.§-"5§();
               §#Z§.§?!m§(_loc4_);
               §5+§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §%!c§.§8" §("Menu_Confirm");
               §,!X§.§>!G§.§4I§();
               break;
            case "OPEN_CREDITS":
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §%!c§.§8" §("Menu_Confirm");
               §8!`§(§5"'§.§+a§);
               this.§&V§ = false;
               break;
            case "SOUNDS_BUTTON":
               §%!c§.§8" §("Menu_Confirm");
               _loc5_ = !§,!X§.§>m§();
               §,!X§.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  §,!X§.§>!G§.§ " §();
               }
               §5+§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§<!1§ == null)
               {
                  this.§<!1§ = new §'b§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§5+§.getItemByName("MovieClip_YouTubeArea") as §4!]§).changeMovieClip(this.§<!1§);
                  (§5+§.getItemByName("MovieClip_YouTubeArea") as §4!]§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
