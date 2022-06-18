package §94§
{
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6V§.§""e§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §@#§.§^#Q§;
   import §["-§.§##J§;
   import flash.geom.Rectangle;
   
   public class §+$,§ extends §`"z§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §6&§:Boolean = false;
      
      private var §5%§:Boolean = false;
      
      private var §6m§:§##J§ = null;
      
      private var §>4§:Boolean = false;
      
      private var §8"@§:Boolean = false;
      
      private var §<!$§:Number = 0;
      
      private var §1!F§:Number = 0;
      
      private var § #+§:Number = 0;
      
      private var §!!F§:Number = 0;
      
      private var §##3§:Number;
      
      private var §0#e§:Number;
      
      private var §,"Y§:Number;
      
      private var §`!3§:Number;
      
      private var video:§""e§;
      
      public function §+$,§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_LevelStart[0]);
         this.§6m§ = new §##J§(§!#A§.§#F§,mLevelManager);
         this.§##3§ = (§?Q§.getItemByName("Container_MenuLeftButtons") as §]!_§).height;
         this.§0#e§ = (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).height;
         this.§,"Y§ = §?Q§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`!3§ = §?Q§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §!#A§.§#F§.§8"d§(true);
         §!#A§.setController(this.§6m§);
         this.§6m§.init();
         AngryBirdsBase.singleton.playThemeMusic();
         §?Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§""$§());
         §?Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§!#A§.§-#?§());
         §?Q§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsBase.singleton.dataModel.userProgress.§<"L§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§,"Y§ = §?Q§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`!3§ = §?Q§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§-#h§(param1);
         if(!this.§5%§)
         {
            §!#A§.§=![§.update(param1);
         }
      }
      
      private function §-#h§(param1:Number) : void
      {
         (§?Q§.getItemByName("Container_MenuLeftButtons") as §]!_§).mClip.scrollRect = new Rectangle(0,0,(§?Q§.getItemByName("Container_MenuLeftButtons") as §]!_§).width,this.§##3§ + 20 - (this.§##3§ - this.§ #+§));
         (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).mClip.scrollRect = new Rectangle(0,0,(§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).width,this.§0#e§ + 20 - (this.§0#e§ - this.§!!F§));
         if(this.§>4§)
         {
            (§?Q§.getItemByName("Container_MenuLeftButtons") as §]!_§).setVisibility(true);
            if(this.§<!$§ < 90)
            {
               this.§<!$§ += 0.3 * param1;
            }
            if(this.§<!$§ > 90)
            {
               this.§<!$§ = 90;
            }
            if(this.§ #+§ < this.§##3§)
            {
               this.§ #+§ += 0.5 * param1;
            }
            if(this.§ #+§ > this.§##3§)
            {
               this.§ #+§ = this.§##3§;
            }
         }
         else
         {
            if(this.§<!$§ > 0)
            {
               this.§<!$§ -= 0.3 * param1;
            }
            if(this.§<!$§ < 0)
            {
               this.§<!$§ = 0;
            }
            if(this.§ #+§ > 0)
            {
               this.§ #+§ -= 0.5 * param1;
            }
            if(this.§ #+§ < 0)
            {
               (§?Q§.getItemByName("Container_MenuLeftButtons") as §]!_§).setVisibility(false);
               this.§ #+§ = 0;
            }
         }
         if(this.§8"@§)
         {
            (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).setVisibility(true);
            if(this.§1!F§ < 180)
            {
               this.§1!F§ += 0.5 * param1;
               (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).y = (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).y - 0.5 * param1;
            }
            if(this.§1!F§ > 180)
            {
               this.§1!F§ = 180;
            }
            if(this.§!!F§ < this.§0#e§)
            {
               this.§!!F§ += 0.5 * param1;
            }
            if(this.§!!F§ > this.§0#e§)
            {
               this.§!!F§ = this.§0#e§;
            }
         }
         else
         {
            if(this.§1!F§ > 0)
            {
               this.§1!F§ -= 0.5 * param1;
               (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).y = (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).y + 0.5 * param1;
            }
            if(this.§1!F§ < 0)
            {
               this.§1!F§ = 0;
            }
            if(this.§!!F§ > 0)
            {
               this.§!!F§ -= 0.5 * param1;
            }
            if(this.§!!F§ < 0)
            {
               (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).setVisibility(false);
               this.§!!F§ = 0;
            }
         }
         (§?Q§.getItemByName("Button_LeftMenuOpen") as §,#w§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§?Q§.getItemByName("Button_RightMenuOpen") as §,#w§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§?Q§.getItemByName("Button_LeftMenuOpen") as §,#w§).mClip.MovieClip_LeftMenuImage.rotation = this.§<!$§;
         (§?Q§.getItemByName("Button_RightMenuOpen") as §,#w§).mClip.MovieClip_RightMenuImage.rotation = this.§1!F§;
         (§?Q§.getItemByName("Container_MenuLeftButtons") as §]!_§).y = this.§,"Y§ - this.§ #+§;
         (§?Q§.getItemByName("Container_MenuRightButtons") as §]!_§).y = this.§`!3§ - this.§!!F§;
      }
      
      override public function deActivate() : void
      {
         (§?Q§.getItemByName("Button_Play") as §,#w§).setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§6&§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§>4§)
               {
                  this.§>4§ = false;
               }
               else
               {
                  this.§>4§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§8"@§)
               {
                  this.§8"@§ = false;
               }
               else
               {
                  this.§8"@§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(§4#M§.STATE_NAME);
               break;
            case "OPEN_MENU":
               §?Q§.setItemVisibility("Container_MenuButtons",!§?Q§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§!#A§.§-#?§();
               §!#A§.§-$>§(_loc4_);
               §?Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.§6"0§();
               break;
            case "OPEN_CREDITS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               break;
            case "CREDITS_BUTTON":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(§@"X§.STATE_NAME);
               this.§>4§ = false;
               break;
            case "SOUNDS_BUTTON":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               _loc5_ = !AngryBirdsBase.§""$§();
               AngryBirdsBase.§;l§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsBase.singleton.playThemeMusic();
               }
               §?Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.video == null)
               {
                  this.video = new §""e§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§?Q§.getItemByName("MovieClip_YouTubeArea") as §'=§).changeMovieClip(this.video);
                  (§?Q§.getItemByName("MovieClip_YouTubeArea") as §'=§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
