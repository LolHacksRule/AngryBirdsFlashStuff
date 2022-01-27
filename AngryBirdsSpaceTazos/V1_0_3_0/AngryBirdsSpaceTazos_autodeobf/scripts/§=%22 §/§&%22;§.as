package §=" §
{
   import §'!n§.§5+§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§%!J§;
   import §,!7§.§5!k§;
   import §,!7§.§8,§;
   import §4",§.§,!j§;
   import §5s§.§]s§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §>"!§.§@!9§;
   import flash.geom.Rectangle;
   
   public class §&";§ extends §[!B§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §`8§:Boolean = false;
      
      private var §"U§:Boolean = false;
      
      private var § case§:§]s§ = null;
      
      private var §2>§:Boolean = false;
      
      private var §;!K§:Boolean = false;
      
      private var §3!V§:Number = 0;
      
      private var §4R§:Number = 0;
      
      private var §^f§:Number = 0;
      
      private var §[f§:Number = 0;
      
      private var §]S§:Number;
      
      private var §%!D§:Number;
      
      private var §=",§:Number;
      
      private var §7K§:Number;
      
      private var §#!S§:§5+§;
      
      public function §&";§(param1:§,!j§, param2:§;l§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_LevelStart[0]);
         this.§ case§ = new §]s§(§8!w§.§5!V§,§]m§);
         this.§]S§ = (§6!J§.getItemByName("Container_MenuLeftButtons") as §5!k§).height;
         this.§%!D§ = (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).height;
         this.§=",§ = §6!J§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§7K§ = §6!J§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8!w§.§5!V§.§3r§(true);
         §8!w§.§?<§(this.§ case§);
         this.§ case§.init();
         §&"<§.§<!7§.§>X§();
         §6!J§.getItemByName("MovieClip_SoundsOff").setVisibility(!§&"<§.§8O§());
         §6!J§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§8!w§.§7!#§());
         §6!J§.getItemByName("Button_MEBuy").setVisibility(!!§&"<§.§<!7§.§,!9§.userProgress.§;"!§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§=",§ = §6!J§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§7K§ = §6!J§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§%"#§(param1);
         if(!this.§"U§)
         {
            §8!w§.§79§.update(param1);
         }
      }
      
      private function §%"#§(param1:Number) : void
      {
         (§6!J§.getItemByName("Container_MenuLeftButtons") as §5!k§).mClip.scrollRect = new Rectangle(0,0,(§6!J§.getItemByName("Container_MenuLeftButtons") as §5!k§).width,this.§]S§ + 20 - (this.§]S§ - this.§^f§));
         (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).mClip.scrollRect = new Rectangle(0,0,(§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).width,this.§%!D§ + 20 - (this.§%!D§ - this.§[f§));
         if(this.§2>§)
         {
            (§6!J§.getItemByName("Container_MenuLeftButtons") as §5!k§).setVisibility(true);
            if(this.§3!V§ < 90)
            {
               this.§3!V§ += 0.3 * param1;
            }
            if(this.§3!V§ > 90)
            {
               this.§3!V§ = 90;
            }
            if(this.§^f§ < this.§]S§)
            {
               this.§^f§ += 0.5 * param1;
            }
            if(this.§^f§ > this.§]S§)
            {
               this.§^f§ = this.§]S§;
            }
         }
         else
         {
            if(this.§3!V§ > 0)
            {
               this.§3!V§ -= 0.3 * param1;
            }
            if(this.§3!V§ < 0)
            {
               this.§3!V§ = 0;
            }
            if(this.§^f§ > 0)
            {
               this.§^f§ -= 0.5 * param1;
            }
            if(this.§^f§ < 0)
            {
               (§6!J§.getItemByName("Container_MenuLeftButtons") as §5!k§).setVisibility(false);
               this.§^f§ = 0;
            }
         }
         if(this.§;!K§)
         {
            (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).setVisibility(true);
            if(this.§4R§ < 180)
            {
               this.§4R§ += 0.5 * param1;
               (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).y = (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).y - 0.5 * param1;
            }
            if(this.§4R§ > 180)
            {
               this.§4R§ = 180;
            }
            if(this.§[f§ < this.§%!D§)
            {
               this.§[f§ += 0.5 * param1;
            }
            if(this.§[f§ > this.§%!D§)
            {
               this.§[f§ = this.§%!D§;
            }
         }
         else
         {
            if(this.§4R§ > 0)
            {
               this.§4R§ -= 0.5 * param1;
               (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).y = (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).y + 0.5 * param1;
            }
            if(this.§4R§ < 0)
            {
               this.§4R§ = 0;
            }
            if(this.§[f§ > 0)
            {
               this.§[f§ -= 0.5 * param1;
            }
            if(this.§[f§ < 0)
            {
               (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).setVisibility(false);
               this.§[f§ = 0;
            }
         }
         (§6!J§.getItemByName("Button_LeftMenuOpen") as §%!J§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§6!J§.getItemByName("Button_RightMenuOpen") as §%!J§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§6!J§.getItemByName("Button_LeftMenuOpen") as §%!J§).mClip.MovieClip_LeftMenuImage.rotation = this.§3!V§;
         (§6!J§.getItemByName("Button_RightMenuOpen") as §%!J§).mClip.MovieClip_RightMenuImage.rotation = this.§4R§;
         (§6!J§.getItemByName("Container_MenuLeftButtons") as §5!k§).y = this.§=",§ - this.§^f§;
         (§6!J§.getItemByName("Container_MenuRightButtons") as §5!k§).y = this.§7K§ - this.§[f§;
      }
      
      override public function deActivate() : void
      {
         (§6!J§.getItemByName("Button_Play") as §%!J§).setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§`8§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§2>§)
               {
                  this.§2>§ = false;
               }
               else
               {
                  this.§2>§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§;!K§)
               {
                  this.§;!K§ = false;
               }
               else
               {
                  this.§;!K§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §@!9§.playSound("Menu_Confirm");
               §'Q§(StateEpisodeSelection.STATE_NAME);
               break;
            case "OPEN_MENU":
               §6!J§.setItemVisibility("Container_MenuButtons",!§6!J§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§8!w§.§7!#§();
               §8!w§.§%!6§(_loc4_);
               §6!J§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §@!9§.playSound("Menu_Confirm");
               §&"<§.§<!7§.§7!H§();
               break;
            case "OPEN_CREDITS":
               §@!9§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §@!9§.playSound("Menu_Confirm");
               §'Q§(§?-§.STATE_NAME);
               this.§2>§ = false;
               break;
            case "SOUNDS_BUTTON":
               §@!9§.playSound("Menu_Confirm");
               _loc5_ = !§&"<§.§8O§();
               §&"<§.§0!p§(_loc5_);
               if(_loc5_)
               {
                  §&"<§.§<!7§.§>X§();
               }
               §6!J§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§#!S§ == null)
               {
                  this.§#!S§ = new §5+§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§6!J§.getItemByName("MovieClip_YouTubeArea") as §8,§).changeMovieClip(this.§#!S§);
                  (§6!J§.getItemByName("MovieClip_YouTubeArea") as §8,§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
