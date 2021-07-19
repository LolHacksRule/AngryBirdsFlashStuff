package §8!_§
{
   import § !Y§.§2q§;
   import § M§.§`"2§;
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.geom.Rectangle;
   
   public class §0!q§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §8!i§:Boolean = false;
      
      private var §6q§:Boolean = false;
      
      private var §'!v§:§`"2§ = null;
      
      private var §%R§:Boolean = false;
      
      private var §&!^§:Boolean = false;
      
      private var §@!P§:Number = 0;
      
      private var §74§:Number = 0;
      
      private var § if§:Number = 0;
      
      private var § i§:Number = 0;
      
      private var §,x§:Number;
      
      private var §[s§:Number;
      
      private var §1!,§:Number;
      
      private var §-![§:Number;
      
      private var §]B§:§2q§;
      
      public function §0!q§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_LevelStart[0]);
         this.§'!v§ = new §`"2§(§9q§.§>!L§,§6u§);
         this.§,x§ = (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).height;
         this.§[s§ = (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).height;
         this.§1!,§ = §8!A§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§-![§ = §8!A§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §9q§.§>!L§.§0!M§(true);
         §9q§.§15§(this.§'!v§);
         this.§'!v§.init();
         § !g§.§;!'§.§2!M§();
         §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!§ !g§.§<!c§());
         §8!A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§9q§.§&T§());
         §8!A§.getItemByName("Button_MEBuy").setVisibility(!!§ !g§.§;!'§.§&!`§.userProgress.§3s§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§1!,§ = §8!A§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§-![§ = §8!A§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§-i§(param1);
         if(!this.§6q§)
         {
            §9q§.§&!$§.update(param1);
         }
      }
      
      private function §-i§(param1:Number) : void
      {
         (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).mClip.scrollRect = new Rectangle(0,0,(§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).width,this.§,x§ + 20 - (this.§,x§ - this.§ if§));
         (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).mClip.scrollRect = new Rectangle(0,0,(§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).width,this.§[s§ + 20 - (this.§[s§ - this.§ i§));
         if(this.§%R§)
         {
            (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).setVisibility(true);
            if(this.§@!P§ < 90)
            {
               this.§@!P§ += 0.3 * param1;
            }
            if(this.§@!P§ > 90)
            {
               this.§@!P§ = 90;
            }
            if(this.§ if§ < this.§,x§)
            {
               this.§ if§ += 0.5 * param1;
            }
            if(this.§ if§ > this.§,x§)
            {
               this.§ if§ = this.§,x§;
            }
         }
         else
         {
            if(this.§@!P§ > 0)
            {
               this.§@!P§ -= 0.3 * param1;
            }
            if(this.§@!P§ < 0)
            {
               this.§@!P§ = 0;
            }
            if(this.§ if§ > 0)
            {
               this.§ if§ -= 0.5 * param1;
            }
            if(this.§ if§ < 0)
            {
               (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).setVisibility(false);
               this.§ if§ = 0;
            }
         }
         if(this.§&!^§)
         {
            (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).setVisibility(true);
            if(this.§74§ < 180)
            {
               this.§74§ += 0.5 * param1;
               (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y = (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y - 0.5 * param1;
            }
            if(this.§74§ > 180)
            {
               this.§74§ = 180;
            }
            if(this.§ i§ < this.§[s§)
            {
               this.§ i§ += 0.5 * param1;
            }
            if(this.§ i§ > this.§[s§)
            {
               this.§ i§ = this.§[s§;
            }
         }
         else
         {
            if(this.§74§ > 0)
            {
               this.§74§ -= 0.5 * param1;
               (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y = (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y + 0.5 * param1;
            }
            if(this.§74§ < 0)
            {
               this.§74§ = 0;
            }
            if(this.§ i§ > 0)
            {
               this.§ i§ -= 0.5 * param1;
            }
            if(this.§ i§ < 0)
            {
               (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).setVisibility(false);
               this.§ i§ = 0;
            }
         }
         (§8!A§.getItemByName("Button_LeftMenuOpen") as §@_§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§8!A§.getItemByName("Button_RightMenuOpen") as §@_§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§8!A§.getItemByName("Button_LeftMenuOpen") as §@_§).mClip.MovieClip_LeftMenuImage.rotation = this.§@!P§;
         (§8!A§.getItemByName("Button_RightMenuOpen") as §@_§).mClip.MovieClip_RightMenuImage.rotation = this.§74§;
         (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).y = this.§1!,§ - this.§ if§;
         (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y = this.§-![§ - this.§ i§;
      }
      
      override public function deActivate() : void
      {
         (§8!A§.getItemByName("Button_Play") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§8!i§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§%R§)
               {
                  this.§%R§ = false;
               }
               else
               {
                  this.§%R§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§&!^§)
               {
                  this.§&!^§ = false;
               }
               else
               {
                  this.§&!^§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §<!O§.playSound("Menu_Confirm");
               §8!^§(StateEpisodeSelection.STATE_NAME);
               break;
            case "OPEN_MENU":
               §8!A§.setItemVisibility("Container_MenuButtons",!§8!A§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§9q§.§&T§();
               §9q§.§]i§(_loc4_);
               §8!A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §<!O§.playSound("Menu_Confirm");
               § !g§.§;!'§.§%!N§();
               break;
            case "OPEN_CREDITS":
               §<!O§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §<!O§.playSound("Menu_Confirm");
               §8!^§(§4!U§.STATE_NAME);
               this.§%R§ = false;
               break;
            case "SOUNDS_BUTTON":
               §<!O§.playSound("Menu_Confirm");
               _loc5_ = !§ !g§.§<!c§();
               § !g§.§@p§(_loc5_);
               if(_loc5_)
               {
                  § !g§.§;!'§.§2!M§();
               }
               §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§]B§ == null)
               {
                  this.§]B§ = new §2q§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§8!A§.getItemByName("MovieClip_YouTubeArea") as §,y§).changeMovieClip(this.§]B§);
                  (§8!A§.getItemByName("MovieClip_YouTubeArea") as §,y§).setVisibility(true);
               }
         }
      }
   }
}
