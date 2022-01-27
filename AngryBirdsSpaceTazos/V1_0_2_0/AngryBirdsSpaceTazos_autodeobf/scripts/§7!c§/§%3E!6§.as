package §7!c§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §!i§.§^!d§;
   import §"!>§.§<!o§;
   import §'#§.§&!'§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §<"9§.§^"@§;
   import flash.geom.Rectangle;
   
   public class §>!6§ extends §%<§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §3"5§:Boolean = false;
      
      private var §6!%§:Boolean = false;
      
      private var §#!"§:§^"@§ = null;
      
      private var §,!w§:Boolean = false;
      
      private var §?E§:Boolean = false;
      
      private var §4!Y§:Number = 0;
      
      private var §5""§:Number = 0;
      
      private var §6"<§:Number = 0;
      
      private var §>$§:Number = 0;
      
      private var §0"'§:Number;
      
      private var §`N§:Number;
      
      private var §0K§:Number;
      
      private var §7!D§:Number;
      
      private var §3"C§:§&!'§;
      
      public function §>!6§(param1:§#2§, param2:§<!o§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_LevelStart[0]);
         this.§#!"§ = new §^"@§(§;0§.§@!^§,§,W§);
         this.§0"'§ = (§4§.getItemByName("Container_MenuLeftButtons") as §1s§).height;
         this.§`N§ = (§4§.getItemByName("Container_MenuRightButtons") as §1s§).height;
         this.§0K§ = §4§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§7!D§ = §4§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;0§.§@!^§.§'!z§(true);
         §;0§.§'"8§(this.§#!"§);
         this.§#!"§.init();
         §&!h§.§ u§.§`=§();
         §4§.getItemByName("MovieClip_SoundsOff").setVisibility(!§&!h§.§?3§());
         §4§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§;0§.§%!3§());
         §4§.getItemByName("Button_MEBuy").setVisibility(!!§&!h§.§ u§.§-!V§.userProgress.§0!6§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§0K§ = §4§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§7!D§ = §4§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§8s§(param1);
         if(!this.§6!%§)
         {
            §;0§.§%O§.update(param1);
         }
      }
      
      private function §8s§(param1:Number) : void
      {
         (§4§.getItemByName("Container_MenuLeftButtons") as §1s§).mClip.scrollRect = new Rectangle(0,0,(§4§.getItemByName("Container_MenuLeftButtons") as §1s§).width,this.§0"'§ + 20 - (this.§0"'§ - this.§6"<§));
         (§4§.getItemByName("Container_MenuRightButtons") as §1s§).mClip.scrollRect = new Rectangle(0,0,(§4§.getItemByName("Container_MenuRightButtons") as §1s§).width,this.§`N§ + 20 - (this.§`N§ - this.§>$§));
         if(this.§,!w§)
         {
            (§4§.getItemByName("Container_MenuLeftButtons") as §1s§).setVisibility(true);
            if(this.§4!Y§ < 90)
            {
               this.§4!Y§ += 0.3 * param1;
            }
            if(this.§4!Y§ > 90)
            {
               this.§4!Y§ = 90;
            }
            if(this.§6"<§ < this.§0"'§)
            {
               this.§6"<§ += 0.5 * param1;
            }
            if(this.§6"<§ > this.§0"'§)
            {
               this.§6"<§ = this.§0"'§;
            }
         }
         else
         {
            if(this.§4!Y§ > 0)
            {
               this.§4!Y§ -= 0.3 * param1;
            }
            if(this.§4!Y§ < 0)
            {
               this.§4!Y§ = 0;
            }
            if(this.§6"<§ > 0)
            {
               this.§6"<§ -= 0.5 * param1;
            }
            if(this.§6"<§ < 0)
            {
               (§4§.getItemByName("Container_MenuLeftButtons") as §1s§).setVisibility(false);
               this.§6"<§ = 0;
            }
         }
         if(this.§?E§)
         {
            (§4§.getItemByName("Container_MenuRightButtons") as §1s§).setVisibility(true);
            if(this.§5""§ < 180)
            {
               this.§5""§ += 0.5 * param1;
               (§4§.getItemByName("Container_MenuRightButtons") as §1s§).y = (§4§.getItemByName("Container_MenuRightButtons") as §1s§).y - 0.5 * param1;
            }
            if(this.§5""§ > 180)
            {
               this.§5""§ = 180;
            }
            if(this.§>$§ < this.§`N§)
            {
               this.§>$§ += 0.5 * param1;
            }
            if(this.§>$§ > this.§`N§)
            {
               this.§>$§ = this.§`N§;
            }
         }
         else
         {
            if(this.§5""§ > 0)
            {
               this.§5""§ -= 0.5 * param1;
               (§4§.getItemByName("Container_MenuRightButtons") as §1s§).y = (§4§.getItemByName("Container_MenuRightButtons") as §1s§).y + 0.5 * param1;
            }
            if(this.§5""§ < 0)
            {
               this.§5""§ = 0;
            }
            if(this.§>$§ > 0)
            {
               this.§>$§ -= 0.5 * param1;
            }
            if(this.§>$§ < 0)
            {
               (§4§.getItemByName("Container_MenuRightButtons") as §1s§).setVisibility(false);
               this.§>$§ = 0;
            }
         }
         (§4§.getItemByName("Button_LeftMenuOpen") as §3!A§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§4§.getItemByName("Button_RightMenuOpen") as §3!A§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§4§.getItemByName("Button_LeftMenuOpen") as §3!A§).mClip.MovieClip_LeftMenuImage.rotation = this.§4!Y§;
         (§4§.getItemByName("Button_RightMenuOpen") as §3!A§).mClip.MovieClip_RightMenuImage.rotation = this.§5""§;
         (§4§.getItemByName("Container_MenuLeftButtons") as §1s§).y = this.§0K§ - this.§6"<§;
         (§4§.getItemByName("Container_MenuRightButtons") as §1s§).y = this.§7!D§ - this.§>$§;
      }
      
      override public function deActivate() : void
      {
         (§4§.getItemByName("Button_Play") as §3!A§).setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3"5§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§,!w§)
               {
                  this.§,!w§ = false;
               }
               else
               {
                  this.§,!w§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§?E§)
               {
                  this.§?E§ = false;
               }
               else
               {
                  this.§?E§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §"!S§.playSound("Menu_Confirm");
               §2g§(StateEpisodeSelection.STATE_NAME);
               break;
            case "OPEN_MENU":
               §4§.setItemVisibility("Container_MenuButtons",!§4§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§;0§.§%!3§();
               §;0§.§<4§(_loc4_);
               §4§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.playSound("Menu_Confirm");
               §&!h§.§ u§.§+"4§();
               break;
            case "OPEN_CREDITS":
               §"!S§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §"!S§.playSound("Menu_Confirm");
               §2g§(§4'§.STATE_NAME);
               this.§,!w§ = false;
               break;
            case "SOUNDS_BUTTON":
               §"!S§.playSound("Menu_Confirm");
               _loc5_ = !§&!h§.§?3§();
               §&!h§.§@!a§(_loc5_);
               if(_loc5_)
               {
                  §&!h§.§ u§.§`=§();
               }
               §4§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§3"C§ == null)
               {
                  this.§3"C§ = new §&!'§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§4§.getItemByName("MovieClip_YouTubeArea") as §^!d§).changeMovieClip(this.§3"C§);
                  (§4§.getItemByName("MovieClip_YouTubeArea") as §^!d§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
