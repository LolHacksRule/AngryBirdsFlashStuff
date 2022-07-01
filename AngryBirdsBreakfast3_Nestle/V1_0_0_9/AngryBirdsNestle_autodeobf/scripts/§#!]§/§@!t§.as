package §#!]§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §4Y§.§7`§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §>T§.§3!V§;
   import §`!s§.§+!7§;
   import flash.geom.Rectangle;
   
   public class §@!t§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelStartState";
       
      
      private var §'l§:Boolean = false;
      
      private var § >§:Boolean = false;
      
      private var §^!b§:§3!V§ = null;
      
      private var §,!C§:Boolean = false;
      
      private var §42§:Boolean = false;
      
      private var §@!,§:Number = 0;
      
      private var §=!Y§:Number = 0;
      
      private var §'4§:Number = 0;
      
      private var §<c§:Number = 0;
      
      private var §>!;§:Number;
      
      private var §="§:Number;
      
      private var §7!F§:Number;
      
      private var §>_§:Number;
      
      private var §#K§:§+!7§;
      
      public function §@!t§(param1:§-g§, param2:§^!_§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_LevelStart[0]);
         this.§^!b§ = new §3!V§(§`i§.§&!L§,§#n§);
         this.§>!;§ = (§4!q§.getItemByName("Container_MenuLeftButtons") as §%n§).height;
         this.§="§ = (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).height;
         this.§7!F§ = §4!q§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§>_§ = §4!q§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`i§.§&!L§.§2!J§(true);
         §`i§.setController(this.§^!b§);
         this.§^!b§.init();
         §-!2§.§7O§.§>q§();
         §4!q§.getItemByName("MovieClip_SoundsOff").setVisibility(!§-!2§.§[!A§());
         §4!q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§`i§.§-!v§());
         §4!q§.getItemByName("Button_MEBuy").setVisibility(!!§-!2§.§7O§.§ !n§.userProgress.§+6§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§7!F§ = §4!q§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§>_§ = §4!q§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§9!T§(param1);
         if(!this.§ >§)
         {
            §`i§.controller.update(param1);
         }
      }
      
      private function §9!T§(param1:Number) : void
      {
         (§4!q§.getItemByName("Container_MenuLeftButtons") as §%n§).mClip.scrollRect = new Rectangle(0,0,(§4!q§.getItemByName("Container_MenuLeftButtons") as §%n§).width,this.§>!;§ + 20 - (this.§>!;§ - this.§'4§));
         (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).mClip.scrollRect = new Rectangle(0,0,(§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).width,this.§="§ + 20 - (this.§="§ - this.§<c§));
         if(this.§,!C§)
         {
            (§4!q§.getItemByName("Container_MenuLeftButtons") as §%n§).setVisibility(true);
            if(this.§@!,§ < 90)
            {
               this.§@!,§ += 0.3 * param1;
            }
            if(this.§@!,§ > 90)
            {
               this.§@!,§ = 90;
            }
            if(this.§'4§ < this.§>!;§)
            {
               this.§'4§ += 0.5 * param1;
            }
            if(this.§'4§ > this.§>!;§)
            {
               this.§'4§ = this.§>!;§;
            }
         }
         else
         {
            if(this.§@!,§ > 0)
            {
               this.§@!,§ -= 0.3 * param1;
            }
            if(this.§@!,§ < 0)
            {
               this.§@!,§ = 0;
            }
            if(this.§'4§ > 0)
            {
               this.§'4§ -= 0.5 * param1;
            }
            if(this.§'4§ < 0)
            {
               (§4!q§.getItemByName("Container_MenuLeftButtons") as §%n§).setVisibility(false);
               this.§'4§ = 0;
            }
         }
         if(this.§42§)
         {
            (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).setVisibility(true);
            if(this.§=!Y§ < 180)
            {
               this.§=!Y§ += 0.5 * param1;
               (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).y = (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).y - 0.5 * param1;
            }
            if(this.§=!Y§ > 180)
            {
               this.§=!Y§ = 180;
            }
            if(this.§<c§ < this.§="§)
            {
               this.§<c§ += 0.5 * param1;
            }
            if(this.§<c§ > this.§="§)
            {
               this.§<c§ = this.§="§;
            }
         }
         else
         {
            if(this.§=!Y§ > 0)
            {
               this.§=!Y§ -= 0.5 * param1;
               (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).y = (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).y + 0.5 * param1;
            }
            if(this.§=!Y§ < 0)
            {
               this.§=!Y§ = 0;
            }
            if(this.§<c§ > 0)
            {
               this.§<c§ -= 0.5 * param1;
            }
            if(this.§<c§ < 0)
            {
               (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).setVisibility(false);
               this.§<c§ = 0;
            }
         }
         (§4!q§.getItemByName("Button_LeftMenuOpen") as § `§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§4!q§.getItemByName("Button_RightMenuOpen") as § `§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§4!q§.getItemByName("Button_LeftMenuOpen") as § `§).mClip.MovieClip_LeftMenuImage.rotation = this.§@!,§;
         (§4!q§.getItemByName("Button_RightMenuOpen") as § `§).mClip.MovieClip_RightMenuImage.rotation = this.§=!Y§;
         (§4!q§.getItemByName("Container_MenuLeftButtons") as §%n§).y = this.§7!F§ - this.§'4§;
         (§4!q§.getItemByName("Container_MenuRightButtons") as §%n§).y = this.§>_§ - this.§<c§;
      }
      
      override public function deActivate() : void
      {
         (§4!q§.getItemByName("Button_Play") as § `§).setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§'l§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§,!C§)
               {
                  this.§,!C§ = false;
               }
               else
               {
                  this.§,!C§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§42§)
               {
                  this.§42§ = false;
               }
               else
               {
                  this.§42§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §4!@§.§`!w§("Menu_Confirm");
               §]a§(StateEpisodeSelection.§]!y§);
               break;
            case "OPEN_MENU":
               §4!q§.setItemVisibility("Container_MenuButtons",!§4!q§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§`i§.§-!v§();
               §`i§.§;![§(_loc4_);
               §4!q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §4!@§.§`!w§("Menu_Confirm");
               §-!2§.§7O§.§#!p§();
               break;
            case "OPEN_CREDITS":
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §4!@§.§`!w§("Menu_Confirm");
               §]a§(§'"$§.§]!y§);
               this.§,!C§ = false;
               break;
            case "SOUNDS_BUTTON":
               §4!@§.§`!w§("Menu_Confirm");
               _loc5_ = !§-!2§.§[!A§();
               §-!2§.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  §-!2§.§7O§.§>q§();
               }
               §4!q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§#K§ == null)
               {
                  this.§#K§ = new §+!7§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§4!q§.getItemByName("MovieClip_YouTubeArea") as §7`§).changeMovieClip(this.§#K§);
                  (§4!q§.getItemByName("MovieClip_YouTubeArea") as §7`§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
