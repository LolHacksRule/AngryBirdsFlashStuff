package §_-Xz§
{
   import §_-0-K§.§_-ZK§;
   import §_-16§.§_-8n§;
   import §_-16§.§_-VR§;
   import §_-5b§.§_-Mm§;
   import §_-9s§.§_-Vc§;
   import §_-9s§.§_-db§;
   import §_-Aq§.§_-TN§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-AG§;
   import §_-Eg§.§_-MT§;
   import §_-Eg§.§_-Up§;
   import §_-Eg§.§_-hf§;
   import §_-Is§.§_-3Q§;
   import §_-KM§.§_-0A§;
   import §_-Q2§.§_-Zr§;
   import §_-Q2§.§_-nx§;
   import §_-TX§.§_-0X§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   import flash.display.MovieClip;
   
   public class §_-Jx§ extends §_-SW§
   {
      
      private static const §_-WO§:Number = -250;
      
      public static const §_-3o§:String = "PauseState";
       
      
      private var §_-KN§:§_-Vc§ = null;
      
      public function §_-Jx§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.start();
         }
         this.§_-eC§();
         this.§_-00Q§();
         §_-nq§.getItemByName("Button_Help").setEnabled(§_-nx§.§_-cq§());
         §_-nq§.getItemByName("Button_Help").setVisibility(§_-nx§.§_-cq§());
      }
      
      private function §_-eC§() : void
      {
         var _loc1_:String = §_-Mm§.§_-Kw§;
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
         (§_-nq§.getItemByName("TextField_LevelName") as §_-MT§).§_-Pb§.text = _loc1_;
         (§_-nq§.getItemByName("Container_PauseMenu") as §_-Up§).x = §_-WO§;
         this.§_-ry§(false);
         §_-0A§.§with§.§_-QF§ = true;
         §_-nq§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-WX§.§_-L6§());
         if(this.§_-KN§ != null)
         {
            this.§_-KN§.stop();
         }
         this.§_-KN§ = §_-db§.§_-yU§.§_-5r§(§_-db§.§_-yU§.§_-mZ§(§_-nq§.getItemByName("Container_PauseMenu") as §_-Up§,{"x":0},null,0.25),§_-db§.§_-yU§.§_-mZ§((§_-nq§.getItemByName("MovieClip_DarkBG") as §_-AG§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-KN§.onComplete = this.§_-ak§;
         this.§_-KN§.play();
      }
      
      private function §_-ak§() : void
      {
         this.§_-ry§(true);
      }
      
      private function §_-ry§(param1:Boolean) : void
      {
         (§_-nq§.getItemByName("Button_Resume") as §_-hf§).setEnabled(param1);
         (§_-nq§.getItemByName("Button_Replay") as §_-hf§).setEnabled(param1);
         (§_-nq§.getItemByName("Button_Menu") as §_-hf§).setEnabled(param1);
         (§_-nq§.getItemByName("Button_Help") as §_-hf§).setEnabled(param1);
         (§_-nq§.getItemByName("Button_Sound") as §_-hf§).setEnabled(param1);
         §_-nq§.getItemByName("Button_Help").setEnabled(§_-nx§.§_-cq§());
      }
      
      private function §_-UT§() : void
      {
         if(this.§_-KN§ != null)
         {
            this.§_-KN§.stop();
         }
         this.§_-KN§ = §_-db§.§_-yU§.§_-5r§(§_-db§.§_-yU§.§_-mZ§(§_-nq§.getItemByName("Container_PauseMenu") as §_-Up§,{"x":§_-WO§},null,0.25),§_-db§.§_-yU§.§_-mZ§((§_-nq§.getItemByName("MovieClip_DarkBG") as §_-AG§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-KN§.onComplete = this.§_-G8§;
         this.§_-KN§.play();
      }
      
      private function §_-G8§() : void
      {
         mNextState = StatePlay.§_-3o§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-0A§.§with§.§_-QF§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-8n§ = null;
         var _loc7_:§_-ZK§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-UT§();
               for each(_loc7_ in §_-0X§.§_-O2§.slingshot.§_-00M§)
               {
                  §_-WX§.§_-ZR§.§_-y1§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
               {
                  if(!§_-SW§.sCheetosPopups.showPopup(§_-Zr§.RESTART_LEVEL))
                  {
                     this.§_-s1§();
                     break;
                  }
                  break;
               }
               this.§_-s1§();
               break;
            case "RESUME_LEVEL":
               this.§_-UT§();
               §_-0X§.§_-UD§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
               {
                  if(!§_-SW§.sCheetosPopups.showPopup(§_-Zr§.§_-el§))
                  {
                     this.§_-qU§();
                     break;
                  }
                  break;
               }
               this.§_-qU§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-WX§.§_-L6§();
               §_-WX§.§_-tJ§(_loc4_);
               §_-nq§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-0X§.§_-U§();
               §_-0X§.§_-ci§(_loc5_);
               §_-nq§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-el§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.RESTART_LEVEL)
               {
                  this.§_-s1§();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-el§)
               {
                  this.§_-qU§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §_-8n§;
               §_-WX§.§_-nw§.§_-gf§ = !§_-WX§.§_-nw§.§_-gf§;
               if(§_-WX§.§_-nw§.§_-gf§)
               {
                  _loc6_.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§_-8n§.§_-qC§);
               break;
         }
      }
      
      private function §_-s1§() : void
      {
         §_-SA§.§_-FK§();
         mNextState = §_-SA§.§_-3o§;
      }
      
      private function §_-qU§() : void
      {
         try
         {
            §_-3Q§.§_-st§("levelComplete",§_-Mm§.§_-Kw§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §_-0N§.§_-3o§;
      }
      
      private function §_-00Q§() : void
      {
         var _loc1_:§_-hf§ = §_-nq§.getItemByName("Button_Replay") as §_-hf§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
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
