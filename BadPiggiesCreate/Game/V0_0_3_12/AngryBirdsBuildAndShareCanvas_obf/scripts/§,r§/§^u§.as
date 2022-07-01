package §,r§
{
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §&=§.§"!z§;
   import §-!^§.§1"-§;
   import §5!8§.§+!?§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^u§ extends §,v§
   {
      
      public static const §8n§:String = "LevelStartState";
      
      private static var § !E§:BitmapData = null;
       
      
      private var § q§:Boolean = false;
      
      private var §?"2§:Boolean = false;
      
      private var §?!4§:§"!z§ = null;
      
      private var §8!W§:Boolean = false;
      
      private var §`d§:Boolean = false;
      
      private var §,!?§:Number = 0;
      
      private var §6x§:Number = 0;
      
      private var §7"6§:Number = 0;
      
      private var §4>§:Number = 0;
      
      private var §;;§:Number;
      
      private var § !z§:Number;
      
      private var §&"+§:Number;
      
      private var §!"#§:Number;
      
      private var §@?§:§1"-§;
      
      public function §^u§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §>R§() : BitmapData
      {
         return § !E§;
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelStart[0]);
         this.§?!4§ = new §"!z§(§%W§.§5"8§);
         this.§;;§ = (§?F§.getItemByName("Container_MenuLeftButtons") as §+!?§).height;
         this.§ !z§ = (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).height;
         this.§&"+§ = §?F§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§!"#§ = §?F§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §%W§.§5"8§.§'N§(true);
         §%W§.§92§(this.§?!4§);
         this.§?!4§.init();
         this.§9!u§();
         §?F§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         §?F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§%W§.§,4§());
         §?F§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§`!j§.§!!D§ ? false : true);
      }
      
      protected function §9!u§() : void
      {
         AngryBirdsFP11.§9!u§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§&"+§ = §?F§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§!"#§ = §?F§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§9!D§(param1);
         if(!this.§?"2§)
         {
            §%W§.§6h§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      private function §9!D§(param1:Number) : void
      {
         (§?F§.getItemByName("Container_MenuLeftButtons") as §+!?§).mClip.scrollRect = new Rectangle(0,0,(§?F§.getItemByName("Container_MenuLeftButtons") as §+!?§).width,this.§;;§ + 20 - (this.§;;§ - this.§7"6§));
         (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).mClip.scrollRect = new Rectangle(0,0,(§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).width,this.§ !z§ + 20 - (this.§ !z§ - this.§4>§));
         if(this.§8!W§)
         {
            (§?F§.getItemByName("Container_MenuLeftButtons") as §+!?§).setVisibility(true);
            if(this.§,!?§ < 90)
            {
               this.§,!?§ += 0.3 * param1;
            }
            if(this.§,!?§ > 90)
            {
               this.§,!?§ = 90;
            }
            if(this.§7"6§ < this.§;;§)
            {
               this.§7"6§ += 0.5 * param1;
            }
            if(this.§7"6§ > this.§;;§)
            {
               this.§7"6§ = this.§;;§;
            }
         }
         else
         {
            if(this.§,!?§ > 0)
            {
               this.§,!?§ -= 0.3 * param1;
            }
            if(this.§,!?§ < 0)
            {
               this.§,!?§ = 0;
            }
            if(this.§7"6§ > 0)
            {
               this.§7"6§ -= 0.5 * param1;
            }
            if(this.§7"6§ < 0)
            {
               (§?F§.getItemByName("Container_MenuLeftButtons") as §+!?§).setVisibility(false);
               this.§7"6§ = 0;
            }
         }
         if(this.§`d§)
         {
            (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).setVisibility(true);
            if(this.§6x§ < 180)
            {
               this.§6x§ += 0.5 * param1;
               (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).y = (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).y - 0.5 * param1;
            }
            if(this.§6x§ > 180)
            {
               this.§6x§ = 180;
            }
            if(this.§4>§ < this.§ !z§)
            {
               this.§4>§ += 0.5 * param1;
            }
            if(this.§4>§ > this.§ !z§)
            {
               this.§4>§ = this.§ !z§;
            }
         }
         else
         {
            if(this.§6x§ > 0)
            {
               this.§6x§ -= 0.5 * param1;
               (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).y = (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).y + 0.5 * param1;
            }
            if(this.§6x§ < 0)
            {
               this.§6x§ = 0;
            }
            if(this.§4>§ > 0)
            {
               this.§4>§ -= 0.5 * param1;
            }
            if(this.§4>§ < 0)
            {
               (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).setVisibility(false);
               this.§4>§ = 0;
            }
         }
         (§?F§.getItemByName("Button_LeftMenuOpen") as §;!Z§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§?F§.getItemByName("Button_RightMenuOpen") as §;!Z§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§?F§.getItemByName("Button_LeftMenuOpen") as §;!Z§).mClip.MovieClip_LeftMenuImage.rotation = this.§,!?§;
         (§?F§.getItemByName("Button_RightMenuOpen") as §;!Z§).mClip.MovieClip_RightMenuImage.rotation = this.§6x§;
         (§?F§.getItemByName("Container_MenuLeftButtons") as §+!?§).y = this.§&"+§ - this.§7"6§;
         (§?F§.getItemByName("Container_MenuRightButtons") as §+!?§).y = this.§!"#§ - this.§4>§;
      }
      
      override public function deActivate() : void
      {
         (§?F§.getItemByName("Button_Play") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§ q§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§8!W§)
               {
                  this.§8!W§ = false;
               }
               else
               {
                  this.§8!W§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§`d§)
               {
                  this.§`d§ = false;
               }
               else
               {
                  this.§`d§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §^k§.playSound("Menu_Confirm");
               mNextState = §3=§.§8n§;
               break;
            case "OPEN_MENU":
               §?F§.setItemVisibility("Container_MenuButtons",!§?F§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§%W§.§,4§();
               §%W§.§;!v§(_loc4_);
               §?F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §^k§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"!V§.§=!C§();
               break;
            case "OPEN_CREDITS":
               §^k§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §^k§.playSound("Menu_Confirm");
               mNextState = §`!X§.§8n§;
               this.§8!W§ = false;
               break;
            case "SOUNDS_BUTTON":
               §^k§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  this.§9!u§();
               }
               §?F§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§@?§ == null)
               {
                  this.§@?§ = new §1"-§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§?F§.getItemByName("MovieClip_YouTubeArea") as §;!P§).changeMovieClip(this.§@?§);
                  (§?F§.getItemByName("MovieClip_YouTubeArea") as §;!P§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
