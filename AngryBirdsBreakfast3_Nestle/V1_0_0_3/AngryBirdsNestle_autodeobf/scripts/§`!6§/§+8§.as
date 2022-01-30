package §`!6§
{
   import §-!F§.§]V§;
   import §3!!§.§+!F§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §9![§.§1!i§;
   import §;f§.§%!G§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import flash.geom.Rectangle;
   
   public class §+8§ extends §-!c§
   {
      
      public static const §]O§:String = "LevelStartState";
       
      
      private var §=p§:Boolean = false;
      
      private var §#!#§:Boolean = false;
      
      private var § Z§:§%!G§ = null;
      
      private var §"!8§:Boolean = false;
      
      private var §'4§:Boolean = false;
      
      private var §?!E§:Number = 0;
      
      private var §6!I§:Number = 0;
      
      private var §]!I§:Number = 0;
      
      private var §<"+§:Number = 0;
      
      private var §#8§:Number;
      
      private var §"M§:Number;
      
      private var §2!U§:Number;
      
      private var §-K§:Number;
      
      private var §0!s§:§]V§;
      
      public function §+8§(param1:§5l§, param2:§-!<§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_LevelStart[0]);
         this.§ Z§ = new §%!G§(§4!l§.§,!8§,§^!§);
         this.§#8§ = (§!^§.getItemByName("Container_MenuLeftButtons") as §5" §).height;
         this.§"M§ = (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).height;
         this.§2!U§ = §!^§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§-K§ = §!^§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4!l§.§,!8§.§&!L§(true);
         §4!l§.setController(this.§ Z§);
         this.§ Z§.init();
         §&N§.§#Y§.§''§();
         §!^§.getItemByName("MovieClip_SoundsOff").setVisibility(!§&N§.§3!M§());
         §!^§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§4!l§.§0!J§());
         §!^§.getItemByName("Button_MEBuy").setVisibility(!!§&N§.§#Y§.§`"$§.userProgress.§8a§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§2!U§ = §!^§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§-K§ = §!^§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§&!t§(param1);
         if(!this.§#!#§)
         {
            §4!l§.controller.update(param1);
         }
      }
      
      private function §&!t§(param1:Number) : void
      {
         (§!^§.getItemByName("Container_MenuLeftButtons") as §5" §).mClip.scrollRect = new Rectangle(0,0,(§!^§.getItemByName("Container_MenuLeftButtons") as §5" §).width,this.§#8§ + 20 - (this.§#8§ - this.§]!I§));
         (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).mClip.scrollRect = new Rectangle(0,0,(§!^§.getItemByName("Container_MenuRightButtons") as §5" §).width,this.§"M§ + 20 - (this.§"M§ - this.§<"+§));
         if(this.§"!8§)
         {
            (§!^§.getItemByName("Container_MenuLeftButtons") as §5" §).setVisibility(true);
            if(this.§?!E§ < 90)
            {
               this.§?!E§ += 0.3 * param1;
            }
            if(this.§?!E§ > 90)
            {
               this.§?!E§ = 90;
            }
            if(this.§]!I§ < this.§#8§)
            {
               this.§]!I§ += 0.5 * param1;
            }
            if(this.§]!I§ > this.§#8§)
            {
               this.§]!I§ = this.§#8§;
            }
         }
         else
         {
            if(this.§?!E§ > 0)
            {
               this.§?!E§ -= 0.3 * param1;
            }
            if(this.§?!E§ < 0)
            {
               this.§?!E§ = 0;
            }
            if(this.§]!I§ > 0)
            {
               this.§]!I§ -= 0.5 * param1;
            }
            if(this.§]!I§ < 0)
            {
               (§!^§.getItemByName("Container_MenuLeftButtons") as §5" §).setVisibility(false);
               this.§]!I§ = 0;
            }
         }
         if(this.§'4§)
         {
            (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).setVisibility(true);
            if(this.§6!I§ < 180)
            {
               this.§6!I§ += 0.5 * param1;
               (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).y = (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).y - 0.5 * param1;
            }
            if(this.§6!I§ > 180)
            {
               this.§6!I§ = 180;
            }
            if(this.§<"+§ < this.§"M§)
            {
               this.§<"+§ += 0.5 * param1;
            }
            if(this.§<"+§ > this.§"M§)
            {
               this.§<"+§ = this.§"M§;
            }
         }
         else
         {
            if(this.§6!I§ > 0)
            {
               this.§6!I§ -= 0.5 * param1;
               (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).y = (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).y + 0.5 * param1;
            }
            if(this.§6!I§ < 0)
            {
               this.§6!I§ = 0;
            }
            if(this.§<"+§ > 0)
            {
               this.§<"+§ -= 0.5 * param1;
            }
            if(this.§<"+§ < 0)
            {
               (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).setVisibility(false);
               this.§<"+§ = 0;
            }
         }
         (§!^§.getItemByName("Button_LeftMenuOpen") as §?v§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§!^§.getItemByName("Button_RightMenuOpen") as §?v§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§!^§.getItemByName("Button_LeftMenuOpen") as §?v§).mClip.MovieClip_LeftMenuImage.rotation = this.§?!E§;
         (§!^§.getItemByName("Button_RightMenuOpen") as §?v§).mClip.MovieClip_RightMenuImage.rotation = this.§6!I§;
         (§!^§.getItemByName("Container_MenuLeftButtons") as §5" §).y = this.§2!U§ - this.§]!I§;
         (§!^§.getItemByName("Container_MenuRightButtons") as §5" §).y = this.§-K§ - this.§<"+§;
      }
      
      override public function deActivate() : void
      {
         (§!^§.getItemByName("Button_Play") as §?v§).setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§=p§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§"!8§)
               {
                  this.§"!8§ = false;
               }
               else
               {
                  this.§"!8§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§'4§)
               {
                  this.§'4§ = false;
               }
               else
               {
                  this.§'4§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §1!i§.§+!Y§("Menu_Confirm");
               §8=§(StateEpisodeSelection.§]O§);
               break;
            case "OPEN_MENU":
               §!^§.setItemVisibility("Container_MenuButtons",!§!^§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§4!l§.§0!J§();
               §4!l§.§>"§(_loc4_);
               §!^§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §1!i§.§+!Y§("Menu_Confirm");
               §&N§.§#Y§.§&<§();
               break;
            case "OPEN_CREDITS":
               §1!i§.§+!Y§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §1!i§.§+!Y§("Menu_Confirm");
               §8=§(§3B§.§]O§);
               this.§"!8§ = false;
               break;
            case "SOUNDS_BUTTON":
               §1!i§.§+!Y§("Menu_Confirm");
               _loc5_ = !§&N§.§3!M§();
               §&N§.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  §&N§.§#Y§.§''§();
               }
               §!^§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§0!s§ == null)
               {
                  this.§0!s§ = new §]V§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§!^§.getItemByName("MovieClip_YouTubeArea") as §+!F§).changeMovieClip(this.§0!s§);
                  (§!^§.getItemByName("MovieClip_YouTubeArea") as §+!F§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
