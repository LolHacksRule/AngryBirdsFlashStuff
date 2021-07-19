package §1!c§
{
   import §#!`§.§&!`§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §4!i§.§'!a§;
   import §[!Z§.§>D§;
   import flash.geom.Rectangle;
   
   public class §`!z§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelStartState";
       
      
      private var §%?§:Boolean = false;
      
      private var §]!t§:Boolean = false;
      
      private var §9!m§:§&!`§ = null;
      
      private var §68§:Boolean = false;
      
      private var §;!J§:Boolean = false;
      
      private var §6!Q§:Number = 0;
      
      private var §[C§:Number = 0;
      
      private var §[=§:Number = 0;
      
      private var §<!_§:Number = 0;
      
      private var §8!f§:Number;
      
      private var §0"7§:Number;
      
      private var §+!^§:Number;
      
      private var §1b§:Number;
      
      private var §5!1§:§'!a§;
      
      public function §`!z§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_LevelStart[0]);
         this.§9!m§ = new §&!`§(§@!S§.§2A§,§4a§);
         this.§8!f§ = (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).height;
         this.§0"7§ = (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).height;
         this.§+!^§ = §^!T§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§1b§ = §^!T§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@!S§.§2A§.§`!V§(true);
         §@!S§.setController(this.§9!m§);
         this.§9!m§.init();
         § !4§.§%"7§.§get §();
         §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(!§ !4§.§4E§());
         §^!T§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§@!S§.§^"&§());
         §^!T§.getItemByName("Button_MEBuy").setVisibility(!!§ !4§.§%"7§.§@D§.userProgress.§"W§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§+!^§ = §^!T§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§1b§ = §^!T§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§7!§(param1);
         if(!this.§]!t§)
         {
            §@!S§.controller.update(param1);
         }
      }
      
      private function §7!§(param1:Number) : void
      {
         (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).mClip.scrollRect = new Rectangle(0,0,(§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).width,this.§8!f§ + 20 - (this.§8!f§ - this.§[=§));
         (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).mClip.scrollRect = new Rectangle(0,0,(§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).width,this.§0"7§ + 20 - (this.§0"7§ - this.§<!_§));
         if(this.§68§)
         {
            (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).setVisibility(true);
            if(this.§6!Q§ < 90)
            {
               this.§6!Q§ += 0.3 * param1;
            }
            if(this.§6!Q§ > 90)
            {
               this.§6!Q§ = 90;
            }
            if(this.§[=§ < this.§8!f§)
            {
               this.§[=§ += 0.5 * param1;
            }
            if(this.§[=§ > this.§8!f§)
            {
               this.§[=§ = this.§8!f§;
            }
         }
         else
         {
            if(this.§6!Q§ > 0)
            {
               this.§6!Q§ -= 0.3 * param1;
            }
            if(this.§6!Q§ < 0)
            {
               this.§6!Q§ = 0;
            }
            if(this.§[=§ > 0)
            {
               this.§[=§ -= 0.5 * param1;
            }
            if(this.§[=§ < 0)
            {
               (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).setVisibility(false);
               this.§[=§ = 0;
            }
         }
         if(this.§;!J§)
         {
            (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).setVisibility(true);
            if(this.§[C§ < 180)
            {
               this.§[C§ += 0.5 * param1;
               (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y = (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y - 0.5 * param1;
            }
            if(this.§[C§ > 180)
            {
               this.§[C§ = 180;
            }
            if(this.§<!_§ < this.§0"7§)
            {
               this.§<!_§ += 0.5 * param1;
            }
            if(this.§<!_§ > this.§0"7§)
            {
               this.§<!_§ = this.§0"7§;
            }
         }
         else
         {
            if(this.§[C§ > 0)
            {
               this.§[C§ -= 0.5 * param1;
               (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y = (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y + 0.5 * param1;
            }
            if(this.§[C§ < 0)
            {
               this.§[C§ = 0;
            }
            if(this.§<!_§ > 0)
            {
               this.§<!_§ -= 0.5 * param1;
            }
            if(this.§<!_§ < 0)
            {
               (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).setVisibility(false);
               this.§<!_§ = 0;
            }
         }
         (§^!T§.getItemByName("Button_LeftMenuOpen") as §]"%§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§^!T§.getItemByName("Button_RightMenuOpen") as §]"%§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§^!T§.getItemByName("Button_LeftMenuOpen") as §]"%§).mClip.MovieClip_LeftMenuImage.rotation = this.§6!Q§;
         (§^!T§.getItemByName("Button_RightMenuOpen") as §]"%§).mClip.MovieClip_RightMenuImage.rotation = this.§[C§;
         (§^!T§.getItemByName("Container_MenuLeftButtons") as §,6§).y = this.§+!^§ - this.§[=§;
         (§^!T§.getItemByName("Container_MenuRightButtons") as §,6§).y = this.§1b§ - this.§<!_§;
      }
      
      override public function deActivate() : void
      {
         (§^!T§.getItemByName("Button_Play") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%?§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§68§)
               {
                  this.§68§ = false;
               }
               else
               {
                  this.§68§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§;!J§)
               {
                  this.§;!J§ = false;
               }
               else
               {
                  this.§;!J§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §>D§.§9!q§("Menu_Confirm");
               §7"6§(StateEpisodeSelection.§8"%§);
               break;
            case "OPEN_MENU":
               §^!T§.setItemVisibility("Container_MenuButtons",!§^!T§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§@!S§.§^"&§();
               §@!S§.§'"%§(_loc4_);
               §^!T§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §>D§.§9!q§("Menu_Confirm");
               § !4§.§%"7§.§]!;§();
               break;
            case "OPEN_CREDITS":
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §>D§.§9!q§("Menu_Confirm");
               §7"6§(§1!Z§.§8"%§);
               this.§68§ = false;
               break;
            case "SOUNDS_BUTTON":
               §>D§.§9!q§("Menu_Confirm");
               _loc5_ = !§ !4§.§4E§();
               § !4§.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  § !4§.§%"7§.§get §();
               }
               §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§5!1§ == null)
               {
                  this.§5!1§ = new §'!a§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§^!T§.getItemByName("MovieClip_YouTubeArea") as §7!m§).changeMovieClip(this.§5!1§);
                  (§^!T§.getItemByName("MovieClip_YouTubeArea") as §7!m§).setVisibility(true);
               }
         }
      }
   }
}
