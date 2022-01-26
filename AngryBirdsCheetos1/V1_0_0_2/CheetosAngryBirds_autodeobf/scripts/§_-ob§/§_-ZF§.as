package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-A§.§_-KQ§;
   import §_-A§.§_-YT§;
   import §_-Kz§.§_-FY§;
   import §_-M6§.§_-Qg§;
   import §_-MP§.§_-N5§;
   import §_-Ye§.§_-cP§;
   import §_-ab§.§_-1E§;
   import §_-ab§.§_-5q§;
   import §_-ab§.§_-IP§;
   import §_-ab§.§_-q4§;
   import §_-fp§.§_-W9§;
   import §_-hJ§.§_-5j§;
   import §_-hJ§.§_-mm§;
   import §_-jV§.§_-GL§;
   import §_-jV§.§_-mI§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   
   public class §_-ZF§ extends §_-xw§
   {
      
      private static const §_-23§:Number = -250;
      
      public static const §_-jn§:String = "PauseState";
       
      
      private var §_-By§:§_-GL§ = null;
      
      public function §_-ZF§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.start();
         }
         this.§_-p3§();
         this.§_-BO§();
         §_-x2§.getItemByName("Button_Help").setEnabled(§_-mm§.§_-rw§());
         §_-x2§.getItemByName("Button_Help").setVisibility(§_-mm§.§_-rw§());
      }
      
      private function §_-p3§() : void
      {
         var _loc1_:String = §_-N5§.§_-sI§;
         if(_loc1_.indexOf("1-") == 0)
         {
            try
            {
               switch(parseInt(_loc1_.substring(2)))
               {
                  case 4:
                     _loc1_ = "2-1";
                     break;
                  case 5:
                     _loc1_ = "2-2";
                     break;
                  case 6:
                     _loc1_ = "2-3";
                     break;
                  case 7:
                     _loc1_ = "2-4";
                     break;
                  case 8:
                     _loc1_ = "2-5";
               }
            }
            catch(error:Error)
            {
            }
         }
         (§_-x2§.getItemByName("TextField_LevelName") as §_-5q§).§_-xA§.text = _loc1_;
         (§_-x2§.getItemByName("Container_PauseMenu") as §_-IP§).x = §_-23§;
         this.§_-1I§(false);
         §_-cP§.§_-Nz§.§_-Zn§ = true;
         §_-x2§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-rs§.§_-rQ§());
         if(this.§_-By§ != null)
         {
            this.§_-By§.stop();
         }
         this.§_-By§ = §_-mI§.§_-0H§.§_-5d§(§_-mI§.§_-0H§.§_-cb§(§_-x2§.getItemByName("Container_PauseMenu") as §_-IP§,{"x":0},null,0.25),§_-mI§.§_-0H§.§_-cb§((§_-x2§.getItemByName("MovieClip_DarkBG") as §_-1E§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-By§.onComplete = this.§_-6C§;
         this.§_-By§.play();
      }
      
      private function §_-6C§() : void
      {
         this.§_-1I§(true);
      }
      
      private function §_-1I§(param1:Boolean) : void
      {
         (§_-x2§.getItemByName("Button_Resume") as §_-q4§).setEnabled(param1);
         (§_-x2§.getItemByName("Button_Replay") as §_-q4§).setEnabled(param1);
         (§_-x2§.getItemByName("Button_Menu") as §_-q4§).setEnabled(param1);
         (§_-x2§.getItemByName("Button_Help") as §_-q4§).setEnabled(param1);
         (§_-x2§.getItemByName("Button_Sound") as §_-q4§).setEnabled(param1);
         §_-x2§.getItemByName("Button_Help").setEnabled(§_-mm§.§_-rw§());
      }
      
      private function §_-4m§() : void
      {
         if(this.§_-By§ != null)
         {
            this.§_-By§.stop();
         }
         this.§_-By§ = §_-mI§.§_-0H§.§_-5d§(§_-mI§.§_-0H§.§_-cb§(§_-x2§.getItemByName("Container_PauseMenu") as §_-IP§,{"x":§_-23§},null,0.25),§_-mI§.§_-0H§.§_-cb§((§_-x2§.getItemByName("MovieClip_DarkBG") as §_-1E§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-By§.onComplete = this.§_-Zy§;
         this.§_-By§.play();
      }
      
      private function §_-Zy§() : void
      {
         mNextState = StatePlay.§_-jn§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-cP§.§_-Nz§.§_-Zn§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-YT§ = null;
         var _loc7_:§_-FY§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-4m§();
               for each(_loc7_ in §_-si§.§_-HI§.slingshot.§_-Mg§)
               {
                  §_-rs§.§_-Nr§.§_-5R§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
               {
                  if(!§_-xw§.sCheetosPopups.showPopup(§_-5j§.RESTART_LEVEL))
                  {
                     this.§_-MH§();
                     break;
                  }
                  break;
               }
               this.§_-MH§();
               break;
            case "RESUME_LEVEL":
               this.§_-4m§();
               §_-si§.§_-DM§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
               {
                  if(!§_-xw§.sCheetosPopups.showPopup(§_-5j§.§_-rJ§))
                  {
                     this.§_-Tz§();
                     break;
                  }
                  break;
               }
               this.§_-Tz§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-rs§.§_-rQ§();
               §_-rs§.§_-xt§(_loc4_);
               §_-x2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-si§.§_-fJ§();
               §_-si§.§_-uY§(_loc5_);
               §_-x2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-rJ§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.RESTART_LEVEL)
               {
                  this.§_-MH§();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-rJ§)
               {
                  this.§_-Tz§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §_-YT§;
               §_-rs§.§_-hd§.§_-2D§ = !§_-rs§.§_-hd§.§_-2D§;
               if(§_-rs§.§_-hd§.§_-2D§)
               {
                  _loc6_.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§_-YT§.§_-c7§);
               break;
         }
      }
      
      private function §_-MH§() : void
      {
         §_-0-n§.§_-5P§();
         mNextState = §_-0-n§.§_-jn§;
      }
      
      private function §_-Tz§() : void
      {
         try
         {
            §_-Qg§.§_-No§("levelComplete",§_-N5§.§_-sI§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §_-qP§.§_-jn§;
      }
      
      private function §_-BO§() : void
      {
         var _loc1_:§_-q4§ = §_-x2§.getItemByName("Button_Replay") as §_-q4§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
   }
}
