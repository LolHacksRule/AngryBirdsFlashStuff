package §9!#§
{
   import §!!A§.§7!$§;
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §3!S§.§%s§;
   import §6p§.§'!B§;
   import §<!I§.§&5§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §]"&§.§,!G§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §+e§ extends §<"+§
   {
      
      public static const §8G§:String = "LevelStartState";
      
      private static var §'!0§:BitmapData = null;
       
      
      private var §^!]§:Boolean = false;
      
      private var §%!9§:Boolean = false;
      
      private var §4!H§:§,!G§ = null;
      
      private var §[!?§:Boolean = false;
      
      private var §!!^§:Boolean = false;
      
      private var §,r§:Number = 0;
      
      private var §6K§:Number = 0;
      
      private var §9d§:Number = 0;
      
      private var §-!!§:Number = 0;
      
      private var §,!3§:Number;
      
      private var § v§:Number;
      
      private var §break§:Number;
      
      private var §'^§:Number;
      
      private var §7r§:§7!$§;
      
      public function §+e§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §=!i§() : BitmapData
      {
         return §'!0§;
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelStart[0]);
         this.§4!H§ = new §,!G§(§%s§.§`!f§);
         this.§,!3§ = (§;i§.getItemByName("Container_MenuLeftButtons") as §>"-§).height;
         this.§ v§ = (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).height;
         this.§break§ = §;i§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§'^§ = §;i§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §%s§.§`!f§.§6M§(true);
         §%s§.§4!-§(this.§4!H§);
         this.§4!H§.init();
         this.§4g§();
         §;i§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         §;i§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§%s§.§!!6§());
         §;i§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§5!c§.§&!;§ ? false : true);
      }
      
      protected function §4g§() : void
      {
         AngryBirdsFP11.§4g§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§break§ = §;i§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§'^§ = §;i§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§?Z§(param1);
         if(!this.§%!9§)
         {
            §%s§.§]x§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      private function §?Z§(param1:Number) : void
      {
         (§;i§.getItemByName("Container_MenuLeftButtons") as §>"-§).mClip.scrollRect = new Rectangle(0,0,(§;i§.getItemByName("Container_MenuLeftButtons") as §>"-§).width,this.§,!3§ + 20 - (this.§,!3§ - this.§9d§));
         (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).mClip.scrollRect = new Rectangle(0,0,(§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).width,this.§ v§ + 20 - (this.§ v§ - this.§-!!§));
         if(this.§[!?§)
         {
            (§;i§.getItemByName("Container_MenuLeftButtons") as §>"-§).setVisibility(true);
            if(this.§,r§ < 90)
            {
               this.§,r§ += 0.3 * param1;
            }
            if(this.§,r§ > 90)
            {
               this.§,r§ = 90;
            }
            if(this.§9d§ < this.§,!3§)
            {
               this.§9d§ += 0.5 * param1;
            }
            if(this.§9d§ > this.§,!3§)
            {
               this.§9d§ = this.§,!3§;
            }
         }
         else
         {
            if(this.§,r§ > 0)
            {
               this.§,r§ -= 0.3 * param1;
            }
            if(this.§,r§ < 0)
            {
               this.§,r§ = 0;
            }
            if(this.§9d§ > 0)
            {
               this.§9d§ -= 0.5 * param1;
            }
            if(this.§9d§ < 0)
            {
               (§;i§.getItemByName("Container_MenuLeftButtons") as §>"-§).setVisibility(false);
               this.§9d§ = 0;
            }
         }
         if(this.§!!^§)
         {
            (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).setVisibility(true);
            if(this.§6K§ < 180)
            {
               this.§6K§ += 0.5 * param1;
               (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).y = (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).y - 0.5 * param1;
            }
            if(this.§6K§ > 180)
            {
               this.§6K§ = 180;
            }
            if(this.§-!!§ < this.§ v§)
            {
               this.§-!!§ += 0.5 * param1;
            }
            if(this.§-!!§ > this.§ v§)
            {
               this.§-!!§ = this.§ v§;
            }
         }
         else
         {
            if(this.§6K§ > 0)
            {
               this.§6K§ -= 0.5 * param1;
               (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).y = (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).y + 0.5 * param1;
            }
            if(this.§6K§ < 0)
            {
               this.§6K§ = 0;
            }
            if(this.§-!!§ > 0)
            {
               this.§-!!§ -= 0.5 * param1;
            }
            if(this.§-!!§ < 0)
            {
               (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).setVisibility(false);
               this.§-!!§ = 0;
            }
         }
         (§;i§.getItemByName("Button_LeftMenuOpen") as §="5§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§;i§.getItemByName("Button_RightMenuOpen") as §="5§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§;i§.getItemByName("Button_LeftMenuOpen") as §="5§).mClip.MovieClip_LeftMenuImage.rotation = this.§,r§;
         (§;i§.getItemByName("Button_RightMenuOpen") as §="5§).mClip.MovieClip_RightMenuImage.rotation = this.§6K§;
         (§;i§.getItemByName("Container_MenuLeftButtons") as §>"-§).y = this.§break§ - this.§9d§;
         (§;i§.getItemByName("Container_MenuRightButtons") as §>"-§).y = this.§'^§ - this.§-!!§;
      }
      
      override public function deActivate() : void
      {
         (§;i§.getItemByName("Button_Play") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§^!]§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§[!?§)
               {
                  this.§[!?§ = false;
               }
               else
               {
                  this.§[!?§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§!!^§)
               {
                  this.§!!^§ = false;
               }
               else
               {
                  this.§!!^§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §'!B§.playSound("Menu_Confirm");
               mNextState = §7!_§.§8G§;
               break;
            case "OPEN_MENU":
               §;i§.setItemVisibility("Container_MenuButtons",!§;i§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§%s§.§!!6§();
               §%s§.§"l§(_loc4_);
               §;i§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §'!B§.playSound("Menu_Confirm");
               AngryBirdsFP11.§?!-§.§>=§();
               break;
            case "OPEN_CREDITS":
               §'!B§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §'!B§.playSound("Menu_Confirm");
               mNextState = §>!o§.§8G§;
               this.§[!?§ = false;
               break;
            case "SOUNDS_BUTTON":
               §'!B§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  this.§4g§();
               }
               §;i§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§7r§ == null)
               {
                  this.§7r§ = new §7!$§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§;i§.getItemByName("MovieClip_YouTubeArea") as §&5§).changeMovieClip(this.§7r§);
                  (§;i§.getItemByName("MovieClip_YouTubeArea") as §&5§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
