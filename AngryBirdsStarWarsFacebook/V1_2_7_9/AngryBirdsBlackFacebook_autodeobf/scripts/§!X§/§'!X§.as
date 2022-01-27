package §!X§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §7A§.§0"y§;
   import §]!=§.§<M§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.geom.Rectangle;
   
   public class §'!X§ extends §@!?§
   {
      
      public static const §'#2§:String = "LevelStartState";
       
      
      private var §`Q§:Boolean = false;
      
      private var §#"P§:Boolean = false;
      
      private var §`#%§:§<M§ = null;
      
      private var §^B§:Boolean = false;
      
      private var §^p§:Boolean = false;
      
      private var §7r§:Number = 0;
      
      private var §-H§:Number = 0;
      
      private var §&"B§:Number = 0;
      
      private var §8%§:Number = 0;
      
      private var §;!P§:Number;
      
      private var §,K§:Number;
      
      private var §!!^§:Number;
      
      private var §[!k§:Number;
      
      private var §5!p§:§0"y§;
      
      public function §'!X§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelStart[0]);
         this.§`#%§ = new §<M§(§;!e§.§<x§,§ !p§);
         this.§;!P§ = (§>I§.getItemByName("Container_MenuLeftButtons") as §,m§).height;
         this.§,K§ = (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).height;
         this.§!!^§ = §>I§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§[!k§ = §>I§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;!e§.§<x§.§5!y§(true);
         §;!e§.§%!L§(this.§`#%§);
         this.§`#%§.init();
         §;"@§.singleton.playThemeMusic();
         §>I§.getItemByName("MovieClip_SoundsOff").setVisibility(!§;"@§.§"8§());
         §>I§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§;!e§.§8!e§());
         §>I§.getItemByName("Button_MEBuy").setVisibility(!!§;"@§.singleton.dataModel.userProgress.§0!w§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§!!^§ = §>I§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§[!k§ = §>I§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§9!]§(param1);
         if(!this.§#"P§)
         {
            §;!e§.§%e§.update(param1);
         }
      }
      
      private function §9!]§(param1:Number) : void
      {
         (§>I§.getItemByName("Container_MenuLeftButtons") as §,m§).mClip.scrollRect = new Rectangle(0,0,(§>I§.getItemByName("Container_MenuLeftButtons") as §,m§).width,this.§;!P§ + 20 - (this.§;!P§ - this.§&"B§));
         (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).mClip.scrollRect = new Rectangle(0,0,(§>I§.getItemByName("Container_MenuRightButtons") as §,m§).width,this.§,K§ + 20 - (this.§,K§ - this.§8%§));
         if(this.§^B§)
         {
            (§>I§.getItemByName("Container_MenuLeftButtons") as §,m§).setVisibility(true);
            if(this.§7r§ < 90)
            {
               this.§7r§ += 0.3 * param1;
            }
            if(this.§7r§ > 90)
            {
               this.§7r§ = 90;
            }
            if(this.§&"B§ < this.§;!P§)
            {
               this.§&"B§ += 0.5 * param1;
            }
            if(this.§&"B§ > this.§;!P§)
            {
               this.§&"B§ = this.§;!P§;
            }
         }
         else
         {
            if(this.§7r§ > 0)
            {
               this.§7r§ -= 0.3 * param1;
            }
            if(this.§7r§ < 0)
            {
               this.§7r§ = 0;
            }
            if(this.§&"B§ > 0)
            {
               this.§&"B§ -= 0.5 * param1;
            }
            if(this.§&"B§ < 0)
            {
               (§>I§.getItemByName("Container_MenuLeftButtons") as §,m§).setVisibility(false);
               this.§&"B§ = 0;
            }
         }
         if(this.§^p§)
         {
            (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).setVisibility(true);
            if(this.§-H§ < 180)
            {
               this.§-H§ += 0.5 * param1;
               (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).y = (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).y - 0.5 * param1;
            }
            if(this.§-H§ > 180)
            {
               this.§-H§ = 180;
            }
            if(this.§8%§ < this.§,K§)
            {
               this.§8%§ += 0.5 * param1;
            }
            if(this.§8%§ > this.§,K§)
            {
               this.§8%§ = this.§,K§;
            }
         }
         else
         {
            if(this.§-H§ > 0)
            {
               this.§-H§ -= 0.5 * param1;
               (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).y = (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).y + 0.5 * param1;
            }
            if(this.§-H§ < 0)
            {
               this.§-H§ = 0;
            }
            if(this.§8%§ > 0)
            {
               this.§8%§ -= 0.5 * param1;
            }
            if(this.§8%§ < 0)
            {
               (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).setVisibility(false);
               this.§8%§ = 0;
            }
         }
         (§>I§.getItemByName("Button_LeftMenuOpen") as §2"8§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§>I§.getItemByName("Button_RightMenuOpen") as §2"8§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§>I§.getItemByName("Button_LeftMenuOpen") as §2"8§).mClip.MovieClip_LeftMenuImage.rotation = this.§7r§;
         (§>I§.getItemByName("Button_RightMenuOpen") as §2"8§).mClip.MovieClip_RightMenuImage.rotation = this.§-H§;
         (§>I§.getItemByName("Container_MenuLeftButtons") as §,m§).y = this.§!!^§ - this.§&"B§;
         (§>I§.getItemByName("Container_MenuRightButtons") as §,m§).y = this.§[!k§ - this.§8%§;
      }
      
      override public function deActivate() : void
      {
         (§>I§.getItemByName("Button_Play") as §2"8§).setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§`Q§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§^B§)
               {
                  this.§^B§ = false;
               }
               else
               {
                  this.§^B§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§^p§)
               {
                  this.§^p§ = false;
               }
               else
               {
                  this.§^p§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §@§.§=Y§("Menu_Confirm");
               §0"B§(§5+§.§'#2§);
               break;
            case "OPEN_MENU":
               §>I§.setItemVisibility("Container_MenuButtons",!§>I§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§;!e§.§8!e§();
               §;!e§.§&U§(_loc4_);
               §>I§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §@§.§=Y§("Menu_Confirm");
               §;"@§.singleton.§35§();
               break;
            case "OPEN_CREDITS":
               §@§.§=Y§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §@§.§=Y§("Menu_Confirm");
               §0"B§(§7"@§.§'#2§);
               this.§^B§ = false;
               break;
            case "SOUNDS_BUTTON":
               §@§.§=Y§("Menu_Confirm");
               _loc5_ = !§;"@§.§"8§();
               §;"@§.§+!5§(_loc5_);
               if(_loc5_)
               {
                  §;"@§.singleton.playThemeMusic();
               }
               §>I§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§5!p§ == null)
               {
                  this.§5!p§ = new §0"y§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§>I§.getItemByName("MovieClip_YouTubeArea") as §<`§).changeMovieClip(this.§5!p§);
                  (§>I§.getItemByName("MovieClip_YouTubeArea") as §<`§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
