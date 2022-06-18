package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §+!n§.§+!p§;
   import §0!>§.§2"5§;
   import §2$;§.§!"e§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §2E§.§ $9§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import flash.geom.Rectangle;
   
   public class §=!w§ extends §';§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §1"9§:Boolean = false;
      
      private var §+G§:Boolean = false;
      
      private var §+#1§:§2"5§ = null;
      
      private var §+e§:Boolean = false;
      
      private var §[!!§:Boolean = false;
      
      private var §-#q§:Number = 0;
      
      private var §7!1§:Number = 0;
      
      private var §1#j§:Number = 0;
      
      private var §="]§:Number = 0;
      
      private var §,"m§:Number;
      
      private var §'!^§:Number;
      
      private var §-!i§:Number;
      
      private var § #7§:Number;
      
      private var video:§ $9§;
      
      public function §=!w§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_LevelStart[0]);
         this.§+#1§ = new §2"5§(§+!p§.§`?§,mLevelManager);
         this.§,"m§ = (§@!D§.getItemByName("Container_MenuLeftButtons") as §!"e§).height;
         this.§'!^§ = (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).height;
         this.§-!i§ = §@!D§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§ #7§ = §@!D§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+!p§.§`?§.setVisible(true);
         §+!p§.setController(this.§+#1§);
         this.§+#1§.init();
         AngryBirdsBase.singleton.playThemeMusic();
         §@!D§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§]!K§());
         §@!D§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§+!p§.§'$,§());
         §@!D§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsBase.singleton.dataModel.userProgress.§<!0§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§-!i§ = §@!D§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§ #7§ = §@!D§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§0"o§(param1);
         if(!this.§+G§)
         {
            §+!p§.§-#W§.update(param1);
         }
      }
      
      private function §0"o§(param1:Number) : void
      {
         (§@!D§.getItemByName("Container_MenuLeftButtons") as §!"e§).mClip.scrollRect = new Rectangle(0,0,(§@!D§.getItemByName("Container_MenuLeftButtons") as §!"e§).width,this.§,"m§ + 20 - (this.§,"m§ - this.§1#j§));
         (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).mClip.scrollRect = new Rectangle(0,0,(§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).width,this.§'!^§ + 20 - (this.§'!^§ - this.§="]§));
         if(this.§+e§)
         {
            (§@!D§.getItemByName("Container_MenuLeftButtons") as §!"e§).setVisibility(true);
            if(this.§-#q§ < 90)
            {
               this.§-#q§ += 0.3 * param1;
            }
            if(this.§-#q§ > 90)
            {
               this.§-#q§ = 90;
            }
            if(this.§1#j§ < this.§,"m§)
            {
               this.§1#j§ += 0.5 * param1;
            }
            if(this.§1#j§ > this.§,"m§)
            {
               this.§1#j§ = this.§,"m§;
            }
         }
         else
         {
            if(this.§-#q§ > 0)
            {
               this.§-#q§ -= 0.3 * param1;
            }
            if(this.§-#q§ < 0)
            {
               this.§-#q§ = 0;
            }
            if(this.§1#j§ > 0)
            {
               this.§1#j§ -= 0.5 * param1;
            }
            if(this.§1#j§ < 0)
            {
               (§@!D§.getItemByName("Container_MenuLeftButtons") as §!"e§).setVisibility(false);
               this.§1#j§ = 0;
            }
         }
         if(this.§[!!§)
         {
            (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).setVisibility(true);
            if(this.§7!1§ < 180)
            {
               this.§7!1§ += 0.5 * param1;
               (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).y = (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).y - 0.5 * param1;
            }
            if(this.§7!1§ > 180)
            {
               this.§7!1§ = 180;
            }
            if(this.§="]§ < this.§'!^§)
            {
               this.§="]§ += 0.5 * param1;
            }
            if(this.§="]§ > this.§'!^§)
            {
               this.§="]§ = this.§'!^§;
            }
         }
         else
         {
            if(this.§7!1§ > 0)
            {
               this.§7!1§ -= 0.5 * param1;
               (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).y = (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).y + 0.5 * param1;
            }
            if(this.§7!1§ < 0)
            {
               this.§7!1§ = 0;
            }
            if(this.§="]§ > 0)
            {
               this.§="]§ -= 0.5 * param1;
            }
            if(this.§="]§ < 0)
            {
               (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).setVisibility(false);
               this.§="]§ = 0;
            }
         }
         (§@!D§.getItemByName("Button_LeftMenuOpen") as §;!b§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§@!D§.getItemByName("Button_RightMenuOpen") as §;!b§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§@!D§.getItemByName("Button_LeftMenuOpen") as §;!b§).mClip.MovieClip_LeftMenuImage.rotation = this.§-#q§;
         (§@!D§.getItemByName("Button_RightMenuOpen") as §;!b§).mClip.MovieClip_RightMenuImage.rotation = this.§7!1§;
         (§@!D§.getItemByName("Container_MenuLeftButtons") as §!"e§).y = this.§-!i§ - this.§1#j§;
         (§@!D§.getItemByName("Container_MenuRightButtons") as §!"e§).y = this.§ #7§ - this.§="]§;
      }
      
      override public function deActivate() : void
      {
         (§@!D§.getItemByName("Button_Play") as §;!b§).setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§1"9§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§+e§)
               {
                  this.§+e§ = false;
               }
               else
               {
                  this.§+e§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§[!!§)
               {
                  this.§[!!§ = false;
               }
               else
               {
                  this.§[!!§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(§4#p§.STATE_NAME);
               break;
            case "OPEN_MENU":
               §@!D§.setItemVisibility("Container_MenuButtons",!§@!D§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§+!p§.§'$,§();
               §+!p§.§1#5§(_loc4_);
               §@!D§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.§=!Y§();
               break;
            case "OPEN_CREDITS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               break;
            case "CREDITS_BUTTON":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(§+!Y§.STATE_NAME);
               this.§+e§ = false;
               break;
            case "SOUNDS_BUTTON":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               _loc5_ = !AngryBirdsBase.§]!K§();
               AngryBirdsBase.§4!T§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsBase.singleton.playThemeMusic();
               }
               §@!D§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.video == null)
               {
                  this.video = new § $9§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§@!D§.getItemByName("MovieClip_YouTubeArea") as §=!Z§).changeMovieClip(this.video);
                  (§@!D§.getItemByName("MovieClip_YouTubeArea") as §=!Z§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
