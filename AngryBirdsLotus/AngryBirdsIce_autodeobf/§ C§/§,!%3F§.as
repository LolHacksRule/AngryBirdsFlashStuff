package § C§
{
   import §!F§.§>J§;
   import §!Y§.§[o§;
   import §0!!§.§;!&§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3O§.§@6§;
   import §[v§.§&F§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §,!?§ extends §-§
   {
      
      public static const §?B§:String = "LevelStartState";
      
      private static var §1!&§:BitmapData = null;
       
      
      private var §%+§:Boolean = false;
      
      private var §?!$§:Boolean = false;
      
      private var §6!6§:§>J§ = null;
      
      private var §=!!§:Boolean = false;
      
      private var §0w§:Boolean = false;
      
      private var §%$§:Number = 0;
      
      private var §5T§:Number = 0;
      
      private var §6c§:Number = 0;
      
      private var §2#§:Number = 0;
      
      private var §&!8§:Number;
      
      private var §,,§:Number;
      
      private var §!!,§:Number;
      
      private var §3X§:Number;
      
      private var §15§:§;!&§;
      
      public function §,!?§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §<J§() : BitmapData
      {
         return §1!&§;
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_LevelStart[0]);
         this.§6!6§ = new §>J§(§[o§.§='§);
         this.§&!8§ = (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).height;
         this.§,,§ = (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).height;
         this.§!!,§ = §,R§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§3X§ = §,R§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[o§.§='§.§"3§(true);
         §[o§.§%!<§(this.§6!6§);
         this.§6!6§.init();
         AngryBirdsFP11.§]!"§();
         §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;9§());
         §,R§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§[o§.§%!!§());
         §,R§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§64§.§7!@§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§!!,§ = §,R§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§3X§ = §,R§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§,f§(param1);
         if(!this.§?!$§)
         {
            §[o§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      private function §,f§(param1:Number) : void
      {
         (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).mClip.scrollRect = new Rectangle(0,0,(§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).width,this.§&!8§ + 20 - (this.§&!8§ - this.§6c§));
         (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).mClip.scrollRect = new Rectangle(0,0,(§,R§.getItemByName("Container_MenuRightButtons") as §&F§).width,this.§,,§ + 20 - (this.§,,§ - this.§2#§));
         if(this.§=!!§)
         {
            (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).setVisibility(true);
            if(this.§%$§ < 90)
            {
               this.§%$§ += 0.3 * param1;
            }
            if(this.§%$§ > 90)
            {
               this.§%$§ = 90;
            }
            if(this.§6c§ < this.§&!8§)
            {
               this.§6c§ += 0.5 * param1;
            }
            if(this.§6c§ > this.§&!8§)
            {
               this.§6c§ = this.§&!8§;
            }
         }
         else
         {
            if(this.§%$§ > 0)
            {
               this.§%$§ -= 0.3 * param1;
            }
            if(this.§%$§ < 0)
            {
               this.§%$§ = 0;
            }
            if(this.§6c§ > 0)
            {
               this.§6c§ -= 0.5 * param1;
            }
            if(this.§6c§ < 0)
            {
               (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).setVisibility(false);
               this.§6c§ = 0;
            }
         }
         if(this.§0w§)
         {
            (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).setVisibility(true);
            if(this.§5T§ < 180)
            {
               this.§5T§ += 0.5 * param1;
               (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y = (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y - 0.5 * param1;
            }
            if(this.§5T§ > 180)
            {
               this.§5T§ = 180;
            }
            if(this.§2#§ < this.§,,§)
            {
               this.§2#§ += 0.5 * param1;
            }
            if(this.§2#§ > this.§,,§)
            {
               this.§2#§ = this.§,,§;
            }
         }
         else
         {
            if(this.§5T§ > 0)
            {
               this.§5T§ -= 0.5 * param1;
               (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y = (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y + 0.5 * param1;
            }
            if(this.§5T§ < 0)
            {
               this.§5T§ = 0;
            }
            if(this.§2#§ > 0)
            {
               this.§2#§ -= 0.5 * param1;
            }
            if(this.§2#§ < 0)
            {
               (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).setVisibility(false);
               this.§2#§ = 0;
            }
         }
         (§,R§.getItemByName("Button_LeftMenuOpen") as §^P§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§,R§.getItemByName("Button_RightMenuOpen") as §^P§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§,R§.getItemByName("Button_LeftMenuOpen") as §^P§).mClip.MovieClip_LeftMenuImage.rotation = this.§%$§;
         (§,R§.getItemByName("Button_RightMenuOpen") as §^P§).mClip.MovieClip_RightMenuImage.rotation = this.§5T§;
         (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).y = this.§!!,§ - this.§6c§;
         (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y = this.§3X§ - this.§2#§;
      }
      
      override public function deActivate() : void
      {
         (§,R§.getItemByName("Button_Play") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%+§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§=!!§)
               {
                  this.§=!!§ = false;
               }
               else
               {
                  this.§=!!§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§0w§)
               {
                  this.§0w§ = false;
               }
               else
               {
                  this.§0w§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §@6§.playSound("Menu_Confirm");
               mNextState = §9,§.§?B§;
               break;
            case "OPEN_MENU":
               §,R§.setItemVisibility("Container_MenuButtons",!§,R§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§[o§.§%!!§();
               §[o§.§#i§(_loc4_);
               §,R§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §@6§.playSound("Menu_Confirm");
               AngryBirdsFP11.§?L§.§,!!§();
               break;
            case "OPEN_CREDITS":
               §@6§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §@6§.playSound("Menu_Confirm");
               mNextState = §%H§.§?B§;
               this.§=!!§ = false;
               break;
            case "SOUNDS_BUTTON":
               §@6§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§;9§();
               AngryBirdsFP11.§-!9§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§]!"§();
               }
               §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§15§ == null)
               {
                  this.§15§ = new §;!&§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§,R§.getItemByName("MovieClip_YouTubeArea") as §=!=§).changeMovieClip(this.§15§);
                  (§,R§.getItemByName("MovieClip_YouTubeArea") as §=!=§).setVisibility(true);
               }
         }
      }
   }
}
