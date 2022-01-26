package §_-fg§
{
   import §_-2r§.§_-9j§;
   import §_-3N§.§_-Dp§;
   import §_-9J§.§_-DA§;
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-L8§;
   import §_-ES§.§_-Ng§;
   import §_-ES§.§_-To§;
   import §_-ES§.§_-ue§;
   import §_-Py§.§_-eK§;
   import §_-T8§.§_-Sa§;
   import §_-gC§.§_-XR§;
   import §_-hx§.§_-Z0§;
   import §_-hx§.§_-lq§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-uG§.§_-Eu§;
   import §_-vB§.§_-Kk§;
   import §_-zM§.§_-1v§;
   import §_-zM§.§_-kL§;
   import flash.display.MovieClip;
   
   public class §_-Xa§ extends §_-cN§
   {
      
      private static const §_-7S§:Number = -250;
      
      public static const §_-bg§:String = "PauseState";
       
      
      private var §_-8I§:§_-Z0§ = null;
      
      public function §_-Xa§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.start();
         }
         this.§_-wI§();
         this.§_-NI§();
         §_-Lb§.getItemByName("Button_Help").setEnabled(§_-kL§.§_-G1§());
         §_-Lb§.getItemByName("Button_Help").setVisibility(§_-kL§.§_-G1§());
      }
      
      private function §_-wI§() : void
      {
         var _loc1_:String = §_-Sa§.§_-LZ§;
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
         (§_-Lb§.getItemByName("TextField_LevelName") as §_-To§).§_-pU§.text = _loc1_;
         (§_-Lb§.getItemByName("Container_PauseMenu") as §_-L8§).x = §_-7S§;
         this.§_-ln§(false);
         §_-Kk§.§_-qh§.§_-xg§ = true;
         §_-Lb§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-Vc§.§_-0K§());
         if(this.§_-8I§ != null)
         {
            this.§_-8I§.stop();
         }
         this.§_-8I§ = §_-lq§.§var §.§_-0I§(§_-lq§.§var §.§_-OC§(§_-Lb§.getItemByName("Container_PauseMenu") as §_-L8§,{"x":0},null,0.25),§_-lq§.§var §.§_-OC§((§_-Lb§.getItemByName("MovieClip_DarkBG") as §_-ue§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-8I§.onComplete = this.§_-2j§;
         this.§_-8I§.play();
      }
      
      private function §_-2j§() : void
      {
         this.§_-ln§(true);
      }
      
      private function §_-ln§(param1:Boolean) : void
      {
         (§_-Lb§.getItemByName("Button_Resume") as §_-Ng§).setEnabled(param1);
         (§_-Lb§.getItemByName("Button_Replay") as §_-Ng§).setEnabled(param1);
         (§_-Lb§.getItemByName("Button_Menu") as §_-Ng§).setEnabled(param1);
         (§_-Lb§.getItemByName("Button_Help") as §_-Ng§).setEnabled(param1);
         (§_-Lb§.getItemByName("Button_Sound") as §_-Ng§).setEnabled(param1);
         §_-Lb§.getItemByName("Button_Help").setEnabled(§_-kL§.§_-G1§());
      }
      
      private function §_-Oz§() : void
      {
         if(this.§_-8I§ != null)
         {
            this.§_-8I§.stop();
         }
         this.§_-8I§ = §_-lq§.§var §.§_-0I§(§_-lq§.§var §.§_-OC§(§_-Lb§.getItemByName("Container_PauseMenu") as §_-L8§,{"x":§_-7S§},null,0.25),§_-lq§.§var §.§_-OC§((§_-Lb§.getItemByName("MovieClip_DarkBG") as §_-ue§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-8I§.onComplete = this.§_-3d§;
         this.§_-8I§.play();
      }
      
      private function §_-3d§() : void
      {
         mNextState = StatePlay.§_-bg§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-Kk§.§_-qh§.§_-xg§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-DA§ = null;
         var _loc7_:§_-9j§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-Oz§();
               for each(_loc7_ in §_-XR§.§_-Xv§.slingshot.§_-a6§)
               {
                  §_-Vc§.§_-3K§.§_-pz§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
               {
                  if(!§_-cN§.sCheetosPopups.showPopup(§_-1v§.RESTART_LEVEL))
                  {
                     this.§_-9M§();
                     break;
                  }
                  break;
               }
               this.§_-9M§();
               break;
            case "RESUME_LEVEL":
               this.§_-Oz§();
               §_-XR§.§_-5x§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
               {
                  if(!§_-cN§.sCheetosPopups.showPopup(§_-1v§.§_-KF§))
                  {
                     this.§_-es§();
                     break;
                  }
                  break;
               }
               this.§_-es§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-Vc§.§_-0K§();
               §_-Vc§.§_-sT§(_loc4_);
               §_-Lb§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-XR§.§_-s§();
               §_-XR§.§_-ww§(_loc5_);
               §_-Lb§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-KF§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.RESTART_LEVEL)
               {
                  this.§_-9M§();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-KF§)
               {
                  this.§_-es§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §_-DA§;
               §_-Vc§.§_-qI§.§_-rL§ = !§_-Vc§.§_-qI§.§_-rL§;
               if(§_-Vc§.§_-qI§.§_-rL§)
               {
                  _loc6_.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§_-DA§.§_-MR§);
               break;
         }
      }
      
      private function §_-9M§() : void
      {
         §_-V0§.§_-70§();
         mNextState = §_-V0§.§_-bg§;
      }
      
      private function §_-es§() : void
      {
         try
         {
            §_-Dp§.§_-JB§("levelComplete",§_-Sa§.§_-LZ§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §_-Pw§.§_-bg§;
      }
      
      private function §_-NI§() : void
      {
         var _loc1_:§_-Ng§ = §_-Lb§.getItemByName("Button_Replay") as §_-Ng§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
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
