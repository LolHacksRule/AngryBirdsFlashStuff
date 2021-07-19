package §;!§
{
   import §"n§.§&!o§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §^!3§.§9R§;
   import com.angrybirds.§&!"§;
   import flash.geom.Rectangle;
   
   public class §8^§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelStartState";
       
      
      private var § u§:Boolean = false;
      
      private var §2x§:Boolean = false;
      
      private var §#!7§:§9R§ = null;
      
      private var §4!1§:Boolean = false;
      
      private var §[T§:Boolean = false;
      
      private var §7!Q§:Number = 0;
      
      private var §"6§:Number = 0;
      
      private var §,>§:Number = 0;
      
      private var §3"&§:Number = 0;
      
      private var §+"%§:Number;
      
      private var §85§:Number;
      
      private var §^=§:Number;
      
      private var §3I§:Number;
      
      private var §&!U§:§&!o§;
      
      public function §8^§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_LevelStart[0]);
         this.§#!7§ = new §9R§(§&!"§.§1!D§,§&" §);
         this.§+"%§ = (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).height;
         this.§85§ = (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).height;
         this.§^=§ = §?P§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§3I§ = §?P§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!"§.§1!D§.§"!Q§(true);
         §&!"§.setController(this.§#!7§);
         this.§#!7§.init();
         §6!!§.singleton.§"!<§();
         §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(!§6!!§.§2!c§());
         §?P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§&!"§.§?!v§());
         §?P§.getItemByName("Button_MEBuy").setVisibility(!!§6!!§.singleton.§<!S§.userProgress.§,!>§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§^=§ = §?P§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§3I§ = §?P§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§=w§(param1);
         if(!this.§2x§)
         {
            §&!"§.controller.update(param1);
         }
      }
      
      private function §=w§(param1:Number) : void
      {
         (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).mClip.scrollRect = new Rectangle(0,0,(§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).width,this.§+"%§ + 20 - (this.§+"%§ - this.§,>§));
         (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).mClip.scrollRect = new Rectangle(0,0,(§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).width,this.§85§ + 20 - (this.§85§ - this.§3"&§));
         if(this.§4!1§)
         {
            (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).setVisibility(true);
            if(this.§7!Q§ < 90)
            {
               this.§7!Q§ += 0.3 * param1;
            }
            if(this.§7!Q§ > 90)
            {
               this.§7!Q§ = 90;
            }
            if(this.§,>§ < this.§+"%§)
            {
               this.§,>§ += 0.5 * param1;
            }
            if(this.§,>§ > this.§+"%§)
            {
               this.§,>§ = this.§+"%§;
            }
         }
         else
         {
            if(this.§7!Q§ > 0)
            {
               this.§7!Q§ -= 0.3 * param1;
            }
            if(this.§7!Q§ < 0)
            {
               this.§7!Q§ = 0;
            }
            if(this.§,>§ > 0)
            {
               this.§,>§ -= 0.5 * param1;
            }
            if(this.§,>§ < 0)
            {
               (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).setVisibility(false);
               this.§,>§ = 0;
            }
         }
         if(this.§[T§)
         {
            (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).setVisibility(true);
            if(this.§"6§ < 180)
            {
               this.§"6§ += 0.5 * param1;
               (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y = (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y - 0.5 * param1;
            }
            if(this.§"6§ > 180)
            {
               this.§"6§ = 180;
            }
            if(this.§3"&§ < this.§85§)
            {
               this.§3"&§ += 0.5 * param1;
            }
            if(this.§3"&§ > this.§85§)
            {
               this.§3"&§ = this.§85§;
            }
         }
         else
         {
            if(this.§"6§ > 0)
            {
               this.§"6§ -= 0.5 * param1;
               (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y = (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y + 0.5 * param1;
            }
            if(this.§"6§ < 0)
            {
               this.§"6§ = 0;
            }
            if(this.§3"&§ > 0)
            {
               this.§3"&§ -= 0.5 * param1;
            }
            if(this.§3"&§ < 0)
            {
               (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).setVisibility(false);
               this.§3"&§ = 0;
            }
         }
         (§?P§.getItemByName("Button_LeftMenuOpen") as §;§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§?P§.getItemByName("Button_RightMenuOpen") as §;§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§?P§.getItemByName("Button_LeftMenuOpen") as §;§).mClip.MovieClip_LeftMenuImage.rotation = this.§7!Q§;
         (§?P§.getItemByName("Button_RightMenuOpen") as §;§).mClip.MovieClip_RightMenuImage.rotation = this.§"6§;
         (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).y = this.§^=§ - this.§,>§;
         (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y = this.§3I§ - this.§3"&§;
      }
      
      override public function deActivate() : void
      {
         (§?P§.getItemByName("Button_Play") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§ u§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§4!1§)
               {
                  this.§4!1§ = false;
               }
               else
               {
                  this.§4!1§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§[T§)
               {
                  this.§[T§ = false;
               }
               else
               {
                  this.§[T§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §'!c§.§3!f§("Menu_Confirm");
               §<f§(StateEpisodeSelection.§-!q§);
               break;
            case "OPEN_MENU":
               §?P§.setItemVisibility("Container_MenuButtons",!§?P§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§&!"§.§?!v§();
               §&!"§.§<8§(_loc4_);
               §?P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §'!c§.§3!f§("Menu_Confirm");
               §6!!§.singleton.§%!O§();
               break;
            case "OPEN_CREDITS":
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §'!c§.§3!f§("Menu_Confirm");
               §<f§(§&4§.§-!q§);
               this.§4!1§ = false;
               break;
            case "SOUNDS_BUTTON":
               §'!c§.§3!f§("Menu_Confirm");
               _loc5_ = !§6!!§.§2!c§();
               §6!!§.§<=§(_loc5_);
               if(_loc5_)
               {
                  §6!!§.singleton.§"!<§();
               }
               §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§&!U§ == null)
               {
                  this.§&!U§ = new §&!o§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§?P§.getItemByName("MovieClip_YouTubeArea") as §6n§).changeMovieClip(this.§&!U§);
                  (§?P§.getItemByName("MovieClip_YouTubeArea") as §6n§).setVisibility(true);
               }
         }
      }
   }
}
