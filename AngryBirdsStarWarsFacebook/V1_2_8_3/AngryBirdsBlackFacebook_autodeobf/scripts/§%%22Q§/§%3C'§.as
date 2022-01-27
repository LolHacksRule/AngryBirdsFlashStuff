package §%"Q§
{
   import §&!j§.§5#+§;
   import §+d§.§;!m§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?"6§.§9X§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import flash.geom.Rectangle;
   import §null §.§5#§;
   
   public class §<'§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelStartState";
       
      
      private var §""z§:Boolean = false;
      
      private var §?"#§:Boolean = false;
      
      private var §8"Z§:§9X§ = null;
      
      private var §%#6§:Boolean = false;
      
      private var §#"K§:Boolean = false;
      
      private var §8#4§:Number = 0;
      
      private var §8"9§:Number = 0;
      
      private var §6">§:Number = 0;
      
      private var §6"K§:Number = 0;
      
      private var §>!N§:Number;
      
      private var §4w§:Number;
      
      private var §[#3§:Number;
      
      private var §5"n§:Number;
      
      private var §&r§:§;!m§;
      
      public function §<'§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelStart[0]);
         this.§8"Z§ = new §9X§(§<!J§.§=!%§,§'""§);
         this.§>!N§ = (§^!b§.getItemByName("Container_MenuLeftButtons") as §@!8§).height;
         this.§4w§ = (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).height;
         this.§[#3§ = §^!b§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§5"n§ = §^!b§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §<!J§.§=!%§.§`"V§(true);
         §<!J§.§-k§(this.§8"Z§);
         this.§8"Z§.init();
         §4"#§.singleton.playThemeMusic();
         §^!b§.getItemByName("MovieClip_SoundsOff").setVisibility(!§4"#§.§-!;§());
         §^!b§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§<!J§.§]""§());
         §^!b§.getItemByName("Button_MEBuy").setVisibility(!!§4"#§.singleton.dataModel.userProgress.§0#2§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§[#3§ = §^!b§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§5"n§ = §^!b§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§%!i§(param1);
         if(!this.§?"#§)
         {
            §<!J§.§]!D§.update(param1);
         }
      }
      
      private function §%!i§(param1:Number) : void
      {
         (§^!b§.getItemByName("Container_MenuLeftButtons") as §@!8§).mClip.scrollRect = new Rectangle(0,0,(§^!b§.getItemByName("Container_MenuLeftButtons") as §@!8§).width,this.§>!N§ + 20 - (this.§>!N§ - this.§6">§));
         (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).mClip.scrollRect = new Rectangle(0,0,(§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).width,this.§4w§ + 20 - (this.§4w§ - this.§6"K§));
         if(this.§%#6§)
         {
            (§^!b§.getItemByName("Container_MenuLeftButtons") as §@!8§).setVisibility(true);
            if(this.§8#4§ < 90)
            {
               this.§8#4§ += 0.3 * param1;
            }
            if(this.§8#4§ > 90)
            {
               this.§8#4§ = 90;
            }
            if(this.§6">§ < this.§>!N§)
            {
               this.§6">§ += 0.5 * param1;
            }
            if(this.§6">§ > this.§>!N§)
            {
               this.§6">§ = this.§>!N§;
            }
         }
         else
         {
            if(this.§8#4§ > 0)
            {
               this.§8#4§ -= 0.3 * param1;
            }
            if(this.§8#4§ < 0)
            {
               this.§8#4§ = 0;
            }
            if(this.§6">§ > 0)
            {
               this.§6">§ -= 0.5 * param1;
            }
            if(this.§6">§ < 0)
            {
               (§^!b§.getItemByName("Container_MenuLeftButtons") as §@!8§).setVisibility(false);
               this.§6">§ = 0;
            }
         }
         if(this.§#"K§)
         {
            (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).setVisibility(true);
            if(this.§8"9§ < 180)
            {
               this.§8"9§ += 0.5 * param1;
               (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).y = (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).y - 0.5 * param1;
            }
            if(this.§8"9§ > 180)
            {
               this.§8"9§ = 180;
            }
            if(this.§6"K§ < this.§4w§)
            {
               this.§6"K§ += 0.5 * param1;
            }
            if(this.§6"K§ > this.§4w§)
            {
               this.§6"K§ = this.§4w§;
            }
         }
         else
         {
            if(this.§8"9§ > 0)
            {
               this.§8"9§ -= 0.5 * param1;
               (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).y = (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).y + 0.5 * param1;
            }
            if(this.§8"9§ < 0)
            {
               this.§8"9§ = 0;
            }
            if(this.§6"K§ > 0)
            {
               this.§6"K§ -= 0.5 * param1;
            }
            if(this.§6"K§ < 0)
            {
               (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).setVisibility(false);
               this.§6"K§ = 0;
            }
         }
         (§^!b§.getItemByName("Button_LeftMenuOpen") as §;g§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§^!b§.getItemByName("Button_RightMenuOpen") as §;g§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§^!b§.getItemByName("Button_LeftMenuOpen") as §;g§).mClip.MovieClip_LeftMenuImage.rotation = this.§8#4§;
         (§^!b§.getItemByName("Button_RightMenuOpen") as §;g§).mClip.MovieClip_RightMenuImage.rotation = this.§8"9§;
         (§^!b§.getItemByName("Container_MenuLeftButtons") as §@!8§).y = this.§[#3§ - this.§6">§;
         (§^!b§.getItemByName("Container_MenuRightButtons") as §@!8§).y = this.§5"n§ - this.§6"K§;
      }
      
      override public function deActivate() : void
      {
         (§^!b§.getItemByName("Button_Play") as §;g§).setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§""z§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§%#6§)
               {
                  this.§%#6§ = false;
               }
               else
               {
                  this.§%#6§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§#"K§)
               {
                  this.§#"K§ = false;
               }
               else
               {
                  this.§#"K§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §=Q§.§`!A§("Menu_Confirm");
               §`0§(§'!V§.§-!U§);
               break;
            case "OPEN_MENU":
               §^!b§.setItemVisibility("Container_MenuButtons",!§^!b§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§<!J§.§]""§();
               §<!J§.§]c§(_loc4_);
               §^!b§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §=Q§.§`!A§("Menu_Confirm");
               §4"#§.singleton.§^L§();
               break;
            case "OPEN_CREDITS":
               §=Q§.§`!A§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §=Q§.§`!A§("Menu_Confirm");
               §`0§(§>"+§.§-!U§);
               this.§%#6§ = false;
               break;
            case "SOUNDS_BUTTON":
               §=Q§.§`!A§("Menu_Confirm");
               _loc5_ = !§4"#§.§-!;§();
               §4"#§.§"W§(_loc5_);
               if(_loc5_)
               {
                  §4"#§.singleton.playThemeMusic();
               }
               §^!b§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§&r§ == null)
               {
                  this.§&r§ = new §;!m§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§^!b§.getItemByName("MovieClip_YouTubeArea") as §9!c§).changeMovieClip(this.§&r§);
                  (§^!b§.getItemByName("MovieClip_YouTubeArea") as §9!c§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
