package §<"c§
{
   import §"a§.§`!,§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §1!i§.§5!L§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.geom.Rectangle;
   
   public class §+!n§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelStartState";
       
      
      private var §@!U§:Boolean = false;
      
      private var §6# §:Boolean = false;
      
      private var §2#$§:§`!,§ = null;
      
      private var §"#P§:Boolean = false;
      
      private var §2!k§:Boolean = false;
      
      private var §?"P§:Number = 0;
      
      private var §?!9§:Number = 0;
      
      private var §6#,§:Number = 0;
      
      private var §1#Z§:Number = 0;
      
      private var §"i§:Number;
      
      private var §&4§:Number;
      
      private var § get§:Number;
      
      private var §with§:Number;
      
      private var §<!l§:§5!L§;
      
      public function §+!n§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelStart[0]);
         this.§2#$§ = new §`!,§(§,!q§.§9!,§,§+!b§);
         this.§"i§ = (§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).height;
         this.§&4§ = (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).height;
         this.§ get§ = §@;§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§with§ = §@;§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!q§.§9!,§.§]"J§(true);
         §,!q§.§3!Q§(this.§2#$§);
         this.§2#$§.init();
         §4#;§.singleton.playThemeMusic();
         §@;§.getItemByName("MovieClip_SoundsOff").setVisibility(!§4#;§.§]q§());
         §@;§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§,!q§.§0@§());
         §@;§.getItemByName("Button_MEBuy").setVisibility(!!§4#;§.singleton.dataModel.userProgress.§0#9§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§ get§ = §@;§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§with§ = §@;§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§6§(param1);
         if(!this.§6# §)
         {
            §,!q§.§>k§.update(param1);
         }
      }
      
      private function §6§(param1:Number) : void
      {
         (§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).mClip.scrollRect = new Rectangle(0,0,(§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).width,this.§"i§ + 20 - (this.§"i§ - this.§6#,§));
         (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).mClip.scrollRect = new Rectangle(0,0,(§@;§.getItemByName("Container_MenuRightButtons") as § #^§).width,this.§&4§ + 20 - (this.§&4§ - this.§1#Z§));
         if(this.§"#P§)
         {
            (§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).setVisibility(true);
            if(this.§?"P§ < 90)
            {
               this.§?"P§ += 0.3 * param1;
            }
            if(this.§?"P§ > 90)
            {
               this.§?"P§ = 90;
            }
            if(this.§6#,§ < this.§"i§)
            {
               this.§6#,§ += 0.5 * param1;
            }
            if(this.§6#,§ > this.§"i§)
            {
               this.§6#,§ = this.§"i§;
            }
         }
         else
         {
            if(this.§?"P§ > 0)
            {
               this.§?"P§ -= 0.3 * param1;
            }
            if(this.§?"P§ < 0)
            {
               this.§?"P§ = 0;
            }
            if(this.§6#,§ > 0)
            {
               this.§6#,§ -= 0.5 * param1;
            }
            if(this.§6#,§ < 0)
            {
               (§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).setVisibility(false);
               this.§6#,§ = 0;
            }
         }
         if(this.§2!k§)
         {
            (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).setVisibility(true);
            if(this.§?!9§ < 180)
            {
               this.§?!9§ += 0.5 * param1;
               (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y = (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y - 0.5 * param1;
            }
            if(this.§?!9§ > 180)
            {
               this.§?!9§ = 180;
            }
            if(this.§1#Z§ < this.§&4§)
            {
               this.§1#Z§ += 0.5 * param1;
            }
            if(this.§1#Z§ > this.§&4§)
            {
               this.§1#Z§ = this.§&4§;
            }
         }
         else
         {
            if(this.§?!9§ > 0)
            {
               this.§?!9§ -= 0.5 * param1;
               (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y = (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y + 0.5 * param1;
            }
            if(this.§?!9§ < 0)
            {
               this.§?!9§ = 0;
            }
            if(this.§1#Z§ > 0)
            {
               this.§1#Z§ -= 0.5 * param1;
            }
            if(this.§1#Z§ < 0)
            {
               (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).setVisibility(false);
               this.§1#Z§ = 0;
            }
         }
         (§@;§.getItemByName("Button_LeftMenuOpen") as §^"m§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§@;§.getItemByName("Button_RightMenuOpen") as §^"m§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§@;§.getItemByName("Button_LeftMenuOpen") as §^"m§).mClip.MovieClip_LeftMenuImage.rotation = this.§?"P§;
         (§@;§.getItemByName("Button_RightMenuOpen") as §^"m§).mClip.MovieClip_RightMenuImage.rotation = this.§?!9§;
         (§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).y = this.§ get§ - this.§6#,§;
         (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y = this.§with§ - this.§1#Z§;
      }
      
      override public function deActivate() : void
      {
         (§@;§.getItemByName("Button_Play") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§@!U§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§"#P§)
               {
                  this.§"#P§ = false;
               }
               else
               {
                  this.§"#P§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§2!k§)
               {
                  this.§2!k§ = false;
               }
               else
               {
                  this.§2!k§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §?!r§.§"#_§("Menu_Confirm");
               § g§(§"C§.§^!7§);
               break;
            case "OPEN_MENU":
               §@;§.setItemVisibility("Container_MenuButtons",!§@;§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§,!q§.§0@§();
               §,!q§.§%Q§(_loc4_);
               §@;§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §?!r§.§"#_§("Menu_Confirm");
               §4#;§.singleton.§5"q§();
               break;
            case "OPEN_CREDITS":
               §?!r§.§"#_§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §?!r§.§"#_§("Menu_Confirm");
               § g§(§`!O§.§^!7§);
               this.§"#P§ = false;
               break;
            case "SOUNDS_BUTTON":
               §?!r§.§"#_§("Menu_Confirm");
               _loc5_ = !§4#;§.§]q§();
               §4#;§.§2!>§(_loc5_);
               if(_loc5_)
               {
                  §4#;§.singleton.playThemeMusic();
               }
               §@;§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§<!l§ == null)
               {
                  this.§<!l§ = new §5!L§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§@;§.getItemByName("MovieClip_YouTubeArea") as §0"$§).changeMovieClip(this.§<!l§);
                  (§@;§.getItemByName("MovieClip_YouTubeArea") as §0"$§).setVisibility(true);
               }
         }
      }
   }
}
