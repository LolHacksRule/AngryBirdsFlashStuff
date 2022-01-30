package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §2!N§.§#?§;
   import §2W§.§=d§;
   import §@!6§.§3!5§;
   import §[!F§.§3j§;
   import §[!F§.§>""§;
   import §[!F§.§^!g§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import flash.geom.Rectangle;
   
   public class §4q§ extends §3!3§
   {
      
      public static const §7w§:String = "LevelStartState";
       
      
      private var § set§:Boolean = false;
      
      private var § p§:Boolean = false;
      
      private var §;"1§:§#?§ = null;
      
      private var §?%§:Boolean = false;
      
      private var §82§:Boolean = false;
      
      private var §3!x§:Number = 0;
      
      private var §6![§:Number = 0;
      
      private var §+!@§:Number = 0;
      
      private var §=!k§:Number = 0;
      
      private var §>!;§:Number;
      
      private var get:Number;
      
      private var §#$§:Number;
      
      private var §#"2§:Number;
      
      private var §+l§:§=d§;
      
      public function §4q§(param1:§ q§, param2:§>u§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_LevelStart[0]);
         this.§;"1§ = new §#?§(§6!E§.§7I§,§="4§);
         this.§>!;§ = (§ !z§.getItemByName("Container_MenuLeftButtons") as §3j§).height;
         this.get = (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).height;
         this.§#$§ = § !z§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#"2§ = § !z§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!E§.§7I§.§'F§(true);
         §6!E§.setController(this.§;"1§);
         this.§;"1§.init();
         §-!I§.§[f§.§[g§();
         § !z§.getItemByName("MovieClip_SoundsOff").setVisibility(!§-!I§.§6!_§());
         § !z§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§6!E§.§^A§());
         § !z§.getItemByName("Button_MEBuy").setVisibility(!!§-!I§.§[f§.§?4§.userProgress.§"Y§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§#$§ = § !z§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#"2§ = § !z§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§"-§(param1);
         if(!this.§ p§)
         {
            §6!E§.controller.update(param1);
         }
      }
      
      private function §"-§(param1:Number) : void
      {
         (§ !z§.getItemByName("Container_MenuLeftButtons") as §3j§).mClip.scrollRect = new Rectangle(0,0,(§ !z§.getItemByName("Container_MenuLeftButtons") as §3j§).width,this.§>!;§ + 20 - (this.§>!;§ - this.§+!@§));
         (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).mClip.scrollRect = new Rectangle(0,0,(§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).width,this.get + 20 - (this.get - this.§=!k§));
         if(this.§?%§)
         {
            (§ !z§.getItemByName("Container_MenuLeftButtons") as §3j§).setVisibility(true);
            if(this.§3!x§ < 90)
            {
               this.§3!x§ += 0.3 * param1;
            }
            if(this.§3!x§ > 90)
            {
               this.§3!x§ = 90;
            }
            if(this.§+!@§ < this.§>!;§)
            {
               this.§+!@§ += 0.5 * param1;
            }
            if(this.§+!@§ > this.§>!;§)
            {
               this.§+!@§ = this.§>!;§;
            }
         }
         else
         {
            if(this.§3!x§ > 0)
            {
               this.§3!x§ -= 0.3 * param1;
            }
            if(this.§3!x§ < 0)
            {
               this.§3!x§ = 0;
            }
            if(this.§+!@§ > 0)
            {
               this.§+!@§ -= 0.5 * param1;
            }
            if(this.§+!@§ < 0)
            {
               (§ !z§.getItemByName("Container_MenuLeftButtons") as §3j§).setVisibility(false);
               this.§+!@§ = 0;
            }
         }
         if(this.§82§)
         {
            (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).setVisibility(true);
            if(this.§6![§ < 180)
            {
               this.§6![§ += 0.5 * param1;
               (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).y = (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).y - 0.5 * param1;
            }
            if(this.§6![§ > 180)
            {
               this.§6![§ = 180;
            }
            if(this.§=!k§ < this.get)
            {
               this.§=!k§ += 0.5 * param1;
            }
            if(this.§=!k§ > this.get)
            {
               this.§=!k§ = this.get;
            }
         }
         else
         {
            if(this.§6![§ > 0)
            {
               this.§6![§ -= 0.5 * param1;
               (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).y = (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).y + 0.5 * param1;
            }
            if(this.§6![§ < 0)
            {
               this.§6![§ = 0;
            }
            if(this.§=!k§ > 0)
            {
               this.§=!k§ -= 0.5 * param1;
            }
            if(this.§=!k§ < 0)
            {
               (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).setVisibility(false);
               this.§=!k§ = 0;
            }
         }
         (§ !z§.getItemByName("Button_LeftMenuOpen") as §^!g§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§ !z§.getItemByName("Button_RightMenuOpen") as §^!g§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§ !z§.getItemByName("Button_LeftMenuOpen") as §^!g§).mClip.MovieClip_LeftMenuImage.rotation = this.§3!x§;
         (§ !z§.getItemByName("Button_RightMenuOpen") as §^!g§).mClip.MovieClip_RightMenuImage.rotation = this.§6![§;
         (§ !z§.getItemByName("Container_MenuLeftButtons") as §3j§).y = this.§#$§ - this.§+!@§;
         (§ !z§.getItemByName("Container_MenuRightButtons") as §3j§).y = this.§#"2§ - this.§=!k§;
      }
      
      override public function deActivate() : void
      {
         (§ !z§.getItemByName("Button_Play") as §^!g§).setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§ set§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§?%§)
               {
                  this.§?%§ = false;
               }
               else
               {
                  this.§?%§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§82§)
               {
                  this.§82§ = false;
               }
               else
               {
                  this.§82§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §3!5§.§<!9§("Menu_Confirm");
               §?n§(StateEpisodeSelection.§7w§);
               break;
            case "OPEN_MENU":
               § !z§.setItemVisibility("Container_MenuButtons",!§ !z§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§6!E§.§^A§();
               §6!E§.§!!T§(_loc4_);
               § !z§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §3!5§.§<!9§("Menu_Confirm");
               §-!I§.§[f§.§?U§();
               break;
            case "OPEN_CREDITS":
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §3!5§.§<!9§("Menu_Confirm");
               §?n§(§ !S§.§7w§);
               this.§?%§ = false;
               break;
            case "SOUNDS_BUTTON":
               §3!5§.§<!9§("Menu_Confirm");
               _loc5_ = !§-!I§.§6!_§();
               §-!I§.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  §-!I§.§[f§.§[g§();
               }
               § !z§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§+l§ == null)
               {
                  this.§+l§ = new §=d§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§ !z§.getItemByName("MovieClip_YouTubeArea") as §>""§).changeMovieClip(this.§+l§);
                  (§ !z§.getItemByName("MovieClip_YouTubeArea") as §>""§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
