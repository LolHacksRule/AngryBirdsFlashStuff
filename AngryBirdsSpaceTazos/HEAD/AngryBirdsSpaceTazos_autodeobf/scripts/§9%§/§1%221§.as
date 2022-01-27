package §9%§
{
   import §%"%§.§2Z§;
   import §&f§.§`"-§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §4u§.§%"+§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§'!j§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   import flash.geom.Rectangle;
   
   public class §1"1§ extends §>!s§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §=!C§:Boolean = false;
      
      private var §?y§:Boolean = false;
      
      private var §^!'§:§`"-§ = null;
      
      private var §#p§:Boolean = false;
      
      private var §,t§:Boolean = false;
      
      private var §"!'§:Number = 0;
      
      private var §2Q§:Number = 0;
      
      private var §7"B§:Number = 0;
      
      private var §@!7§:Number = 0;
      
      private var §79§:Number;
      
      private var §2"8§:Number;
      
      private var §6!-§:Number;
      
      private var §`"?§:Number;
      
      private var §#P§:§%"+§;
      
      public function §1"1§(param1:§^!@§, param2:§2Z§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_LevelStart[0]);
         this.§^!'§ = new §`"-§(§8k§.§;!]§,§#"=§);
         this.§79§ = (§%!A§.getItemByName("Container_MenuLeftButtons") as §,"$§).height;
         this.§2"8§ = (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).height;
         this.§6!-§ = §%!A§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`"?§ = §%!A§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8k§.§;!]§.§#5§(true);
         §8k§.§&x§(this.§^!'§);
         this.§^!'§.init();
         §2&§.§6o§.§,k§();
         §%!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!§2&§.§6"#§());
         §%!A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§8k§.§-D§());
         §%!A§.getItemByName("Button_MEBuy").setVisibility(!!§2&§.§6o§.§2c§.userProgress.§-!0§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§6!-§ = §%!A§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`"?§ = §%!A§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§?R§(param1);
         if(!this.§?y§)
         {
            §8k§.§0!Q§.update(param1);
         }
      }
      
      private function §?R§(param1:Number) : void
      {
         (§%!A§.getItemByName("Container_MenuLeftButtons") as §,"$§).mClip.scrollRect = new Rectangle(0,0,(§%!A§.getItemByName("Container_MenuLeftButtons") as §,"$§).width,this.§79§ + 20 - (this.§79§ - this.§7"B§));
         (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).mClip.scrollRect = new Rectangle(0,0,(§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).width,this.§2"8§ + 20 - (this.§2"8§ - this.§@!7§));
         if(this.§#p§)
         {
            (§%!A§.getItemByName("Container_MenuLeftButtons") as §,"$§).setVisibility(true);
            if(this.§"!'§ < 90)
            {
               this.§"!'§ += 0.3 * param1;
            }
            if(this.§"!'§ > 90)
            {
               this.§"!'§ = 90;
            }
            if(this.§7"B§ < this.§79§)
            {
               this.§7"B§ += 0.5 * param1;
            }
            if(this.§7"B§ > this.§79§)
            {
               this.§7"B§ = this.§79§;
            }
         }
         else
         {
            if(this.§"!'§ > 0)
            {
               this.§"!'§ -= 0.3 * param1;
            }
            if(this.§"!'§ < 0)
            {
               this.§"!'§ = 0;
            }
            if(this.§7"B§ > 0)
            {
               this.§7"B§ -= 0.5 * param1;
            }
            if(this.§7"B§ < 0)
            {
               (§%!A§.getItemByName("Container_MenuLeftButtons") as §,"$§).setVisibility(false);
               this.§7"B§ = 0;
            }
         }
         if(this.§,t§)
         {
            (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).setVisibility(true);
            if(this.§2Q§ < 180)
            {
               this.§2Q§ += 0.5 * param1;
               (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).y = (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).y - 0.5 * param1;
            }
            if(this.§2Q§ > 180)
            {
               this.§2Q§ = 180;
            }
            if(this.§@!7§ < this.§2"8§)
            {
               this.§@!7§ += 0.5 * param1;
            }
            if(this.§@!7§ > this.§2"8§)
            {
               this.§@!7§ = this.§2"8§;
            }
         }
         else
         {
            if(this.§2Q§ > 0)
            {
               this.§2Q§ -= 0.5 * param1;
               (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).y = (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).y + 0.5 * param1;
            }
            if(this.§2Q§ < 0)
            {
               this.§2Q§ = 0;
            }
            if(this.§@!7§ > 0)
            {
               this.§@!7§ -= 0.5 * param1;
            }
            if(this.§@!7§ < 0)
            {
               (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).setVisibility(false);
               this.§@!7§ = 0;
            }
         }
         (§%!A§.getItemByName("Button_LeftMenuOpen") as §87§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§%!A§.getItemByName("Button_RightMenuOpen") as §87§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§%!A§.getItemByName("Button_LeftMenuOpen") as §87§).mClip.MovieClip_LeftMenuImage.rotation = this.§"!'§;
         (§%!A§.getItemByName("Button_RightMenuOpen") as §87§).mClip.MovieClip_RightMenuImage.rotation = this.§2Q§;
         (§%!A§.getItemByName("Container_MenuLeftButtons") as §,"$§).y = this.§6!-§ - this.§7"B§;
         (§%!A§.getItemByName("Container_MenuRightButtons") as §,"$§).y = this.§`"?§ - this.§@!7§;
      }
      
      override public function deActivate() : void
      {
         (§%!A§.getItemByName("Button_Play") as §87§).setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§=!C§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§#p§)
               {
                  this.§#p§ = false;
               }
               else
               {
                  this.§#p§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§,t§)
               {
                  this.§,t§ = false;
               }
               else
               {
                  this.§,t§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §<5§.playSound("Menu_Confirm");
               § !I§(StateEpisodeSelection.STATE_NAME);
               break;
            case "OPEN_MENU":
               §%!A§.setItemVisibility("Container_MenuButtons",!§%!A§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§8k§.§-D§();
               §8k§.§7!+§(_loc4_);
               §%!A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §<5§.playSound("Menu_Confirm");
               §2&§.§6o§.§>!9§();
               break;
            case "OPEN_CREDITS":
               §<5§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §<5§.playSound("Menu_Confirm");
               § !I§(§2w§.STATE_NAME);
               this.§#p§ = false;
               break;
            case "SOUNDS_BUTTON":
               §<5§.playSound("Menu_Confirm");
               _loc5_ = !§2&§.§6"#§();
               §2&§.§3!J§(_loc5_);
               if(_loc5_)
               {
                  §2&§.§6o§.§,k§();
               }
               §%!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§#P§ == null)
               {
                  this.§#P§ = new §%"+§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§%!A§.getItemByName("MovieClip_YouTubeArea") as §'!j§).changeMovieClip(this.§#P§);
                  (§%!A§.getItemByName("MovieClip_YouTubeArea") as §'!j§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
