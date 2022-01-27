package §##§
{
   import §"!J§.§'!%§;
   import §"I§.§2P§;
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §=8§.§'^§;
   import §=8§.§,!%§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §,r§ extends §6!M§
   {
      
      public static const §=,§:String = "LevelStartState";
      
      private static var §2!2§:BitmapData = null;
       
      
      private var §<!'§:Boolean = false;
      
      private var §^p§:Boolean = false;
      
      private var §^!#§:§'!%§ = null;
      
      private var §6!J§:Boolean = false;
      
      private var §+X§:Boolean = false;
      
      private var §^!8§:Number = 0;
      
      private var §-T§:Number = 0;
      
      private var §,<§:Number = 0;
      
      private var §!N§:Number = 0;
      
      private var §"q§:Number;
      
      private var §`!N§:Number;
      
      private var §2D§:Number;
      
      private var §[n§:Number;
      
      private var §5;§:§2P§;
      
      public function §,r§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §?!D§() : BitmapData
      {
         return §2!2§;
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_LevelStart[0]);
         this.§^!#§ = new §'!%§(§2G§.§7!,§);
         this.§"q§ = (§ §.getItemByName("Container_MenuLeftButtons") as §'^§).height;
         this.§`!N§ = (§ §.getItemByName("Container_MenuRightButtons") as §'^§).height;
         this.§2D§ = § §.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§[n§ = § §.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §2G§.§7!,§.§`!>§(true);
         §2G§.§4!<§(this.§^!#§);
         this.§^!#§.init();
         this.§+Q§();
         § §.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"7§());
         § §.getItemByName("MovieClip_ParticlesOff").setVisibility(!§2G§.§6y§());
         § §.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§ ;§.§"§ ? false : true);
      }
      
      protected function §+Q§() : void
      {
         AngryBirdsFP11.§+Q§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§2D§ = § §.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§[n§ = § §.getItemByName("Button_RightMenuOpen").y - 50;
         this.§2!&§(param1);
         if(!this.§^p§)
         {
            §2G§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      private function §2!&§(param1:Number) : void
      {
         (§ §.getItemByName("Container_MenuLeftButtons") as §'^§).mClip.scrollRect = new Rectangle(0,0,(§ §.getItemByName("Container_MenuLeftButtons") as §'^§).width,this.§"q§ + 20 - (this.§"q§ - this.§,<§));
         (§ §.getItemByName("Container_MenuRightButtons") as §'^§).mClip.scrollRect = new Rectangle(0,0,(§ §.getItemByName("Container_MenuRightButtons") as §'^§).width,this.§`!N§ + 20 - (this.§`!N§ - this.§!N§));
         if(this.§6!J§)
         {
            (§ §.getItemByName("Container_MenuLeftButtons") as §'^§).setVisibility(true);
            if(this.§^!8§ < 90)
            {
               this.§^!8§ += 0.3 * param1;
            }
            if(this.§^!8§ > 90)
            {
               this.§^!8§ = 90;
            }
            if(this.§,<§ < this.§"q§)
            {
               this.§,<§ += 0.5 * param1;
            }
            if(this.§,<§ > this.§"q§)
            {
               this.§,<§ = this.§"q§;
            }
         }
         else
         {
            if(this.§^!8§ > 0)
            {
               this.§^!8§ -= 0.3 * param1;
            }
            if(this.§^!8§ < 0)
            {
               this.§^!8§ = 0;
            }
            if(this.§,<§ > 0)
            {
               this.§,<§ -= 0.5 * param1;
            }
            if(this.§,<§ < 0)
            {
               (§ §.getItemByName("Container_MenuLeftButtons") as §'^§).setVisibility(false);
               this.§,<§ = 0;
            }
         }
         if(this.§+X§)
         {
            (§ §.getItemByName("Container_MenuRightButtons") as §'^§).setVisibility(true);
            if(this.§-T§ < 180)
            {
               this.§-T§ += 0.5 * param1;
               (§ §.getItemByName("Container_MenuRightButtons") as §'^§).y = (§ §.getItemByName("Container_MenuRightButtons") as §'^§).y - 0.5 * param1;
            }
            if(this.§-T§ > 180)
            {
               this.§-T§ = 180;
            }
            if(this.§!N§ < this.§`!N§)
            {
               this.§!N§ += 0.5 * param1;
            }
            if(this.§!N§ > this.§`!N§)
            {
               this.§!N§ = this.§`!N§;
            }
         }
         else
         {
            if(this.§-T§ > 0)
            {
               this.§-T§ -= 0.5 * param1;
               (§ §.getItemByName("Container_MenuRightButtons") as §'^§).y = (§ §.getItemByName("Container_MenuRightButtons") as §'^§).y + 0.5 * param1;
            }
            if(this.§-T§ < 0)
            {
               this.§-T§ = 0;
            }
            if(this.§!N§ > 0)
            {
               this.§!N§ -= 0.5 * param1;
            }
            if(this.§!N§ < 0)
            {
               (§ §.getItemByName("Container_MenuRightButtons") as §'^§).setVisibility(false);
               this.§!N§ = 0;
            }
         }
         (§ §.getItemByName("Button_LeftMenuOpen") as dynamic).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§ §.getItemByName("Button_RightMenuOpen") as dynamic).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§ §.getItemByName("Button_LeftMenuOpen") as dynamic).mClip.MovieClip_LeftMenuImage.rotation = this.§^!8§;
         (§ §.getItemByName("Button_RightMenuOpen") as dynamic).mClip.MovieClip_RightMenuImage.rotation = this.§-T§;
         (§ §.getItemByName("Container_MenuLeftButtons") as §'^§).y = this.§2D§ - this.§,<§;
         (§ §.getItemByName("Container_MenuRightButtons") as §'^§).y = this.§[n§ - this.§!N§;
      }
      
      override public function deActivate() : void
      {
         (§ §.getItemByName("Button_Play") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§<!'§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§6!J§)
               {
                  this.§6!J§ = false;
               }
               else
               {
                  this.§6!J§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§+X§)
               {
                  this.§+X§ = false;
               }
               else
               {
                  this.§+X§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §9k§.playSound("Menu_Confirm");
               mNextState = §!S§.§=,§;
               break;
            case "OPEN_MENU":
               § §.setItemVisibility("Container_MenuButtons",!§ §.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§2G§.§6y§();
               §2G§.§38§(_loc4_);
               § §.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §9k§.playSound("Menu_Confirm");
               AngryBirdsFP11.§<2§.§ !J§();
               break;
            case "OPEN_CREDITS":
               §9k§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §9k§.playSound("Menu_Confirm");
               mNextState = §2!5§.§=,§;
               this.§6!J§ = false;
               break;
            case "SOUNDS_BUTTON":
               §9k§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§"7§();
               AngryBirdsFP11.§<!H§(_loc5_);
               if(_loc5_)
               {
                  this.§+Q§();
               }
               § §.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§5;§ == null)
               {
                  this.§5;§ = new §2P§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§ §.getItemByName("MovieClip_YouTubeArea") as §,!%§).changeMovieClip(this.§5;§);
                  (§ §.getItemByName("MovieClip_YouTubeArea") as §,!%§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
