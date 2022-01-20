package §5!W§
{
   import § !J§.§[m§;
   import § !J§.§`+§;
   import §#!1§.§!!X§;
   import §#!1§.§6!<§;
   import §#!1§.§6!>§;
   import §%%§.§3P§;
   import §%e§.§4§;
   import §&6§.§`!T§;
   import §&6§.§`!q§;
   import §,!C§.§!!]§;
   import §,!C§.§-6§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §,E§.§"!K§;
   import §-h§.§ use§;
   import §0$§.§!t§;
   import §0$§.§;L§;
   import §2!G§.§!!5§;
   import §2!G§.§-!3§;
   import §2!G§.§[!M§;
   import §2S§.§37§;
   import §4!A§.§#b§;
   import §4!A§.§3!#§;
   import §4!A§.§7#§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §7p§.§>!m§;
   import §=f§.§#!A§;
   import §@!7§.§+!O§;
   import §@-§.§[y§;
   import §[!4§.§-#§;
   import §^!I§.§"r§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §;1§ implements §`!T§
   {
      
      public static const §>d§:String = "StatePlay";
      
      private static const §9!+§:Number = -10 * 1000;
      
      private static const §%!!§:Number = 15 * 1000;
      
      private static const § !>§:Number = 50;
      
      private static const §"G§:Number = 0.05;
      
      private static const §1!;§:Number = 15 * 1000;
       
      
      private var §4!C§:Number = 0;
      
      private var §9o§:Boolean = false;
      
      private var §"!d§:Number = -10000.0;
      
      private var §[D§:int = 0;
      
      private var §6!Z§:Boolean = true;
      
      private var §%![§:§"!K§ = null;
      
      private var §7!a§:Boolean = false;
      
      private var §5+§:§#b§;
      
      private var §3Y§:Number;
      
      private var §>]§:Number;
      
      private var §91§:Number;
      
      private var §8§:§37§;
      
      private var §]i§:Boolean = false;
      
      private var §@!o§:Number = 0;
      
      private var §6F§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §%g§(this);
         mUIView.init(§>!m§.§9c§.Views.View_LevelPlay[0]);
         this.§91§ = (mUIView.getItemByName("Container_PowerUpButtons") as §-6§).width - 25;
         this.§>]§ = (mUIView.getItemByName("Container_PowerUpButtons") as §-6§).x;
         this.§8§ = new §37§(mUIView);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§4!C§ <= 0)
         {
            §4§.§>A§("onLevelStart");
            this.§4!C§ = §1!;§;
         }
         this.§8§.activate();
         this.§8§.§=!?§ = false;
         this.§8§.§ !r§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         if(§37§.§=R§ && !§37§.§7!>§)
         {
            this.§8§.§[!G§();
         }
         mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§5+§)
         {
            this.§5+§.stop();
            this.§5+§ = null;
         }
         this.§]i§ = false;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
         §-#§.§4A§();
         §6!>§.§7!'§(§6!<§.ACTION_GAME_LEVEL_STARTED,§;_§.§2!Q§);
         §-#§.§4h§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§6!Z§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         mUIView.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§"q§();
         this.§0i§();
         §!!X§.§5!!§.updateTextFields(mUIView,"StatePlay");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §!!X§.§5!!§.updateTextFields(mUIView,"StatePlay");
      }
      
      protected function §;!,§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§?!G§(this.§5+§);
         this.§5+§ = §7#§.§5!!§.§30§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§5+§.delay = 2;
         this.§5+§.play();
      }
      
      protected function §+G§(param1:Boolean = true) : void
      {
         this.§]i§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§?!G§(this.§5+§);
         this.§5+§ = §7#§.§5!!§.§30§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§5+§.delay = 2;
         }
         else
         {
            this.§5+§.delay = 0.5;
         }
         this.§5+§.play();
         this.§5+§.onComplete = this.§<%§;
      }
      
      private function §<%§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§1K§();
         this.§0i§();
         if(this.§%![§)
         {
            this.§%![§.dispose();
            this.§%![§ = null;
         }
         this.§7!a§ = false;
         §3![§.§+w§.§]!>§.§3!7§();
      }
      
      private function §1K§() : void
      {
         var _loc1_:int = 0;
         if(!this.§9o§)
         {
            if(this.§"!d§ > §%!!§)
            {
               this.§9o§ = true;
               _loc1_ = Math.round(1000 / this.§"!d§ * this.§[D§);
               if(§3P§.§+!J§)
               {
                  §6!>§.§7!'§(§6!<§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §6!>§.§7!'§(§6!<§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §;e§(param1:Number) : void
      {
         this.§"!d§ += param1;
         if(this.§"!d§ > 0)
         {
            ++this.§[D§;
         }
      }
      
      private function §0i§() : void
      {
         this.§"!d§ = §9!+§;
         this.§[D§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§6!Z§)
         {
            §[!M§.§!!g§(mUIView,true);
            this.§6!Z§ = false;
         }
         if(§[!M§.§8!o§)
         {
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.enableLoginButton(false);
            sHighscoreSidebar.enableLogOutButton(false);
            return § for§.STATE_STATUS_RUNNING;
         }
         if(§-!3§.§&!T§())
         {
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.run(param1);
            return § for§.STATE_STATUS_RUNNING;
         }
         if(§2M§.§1?§.slingshot.§<!f§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         if(!§2M§.§1?§.objects.isPigsAlive())
         {
            _loc3_ = 1;
            while(_loc3_ < 5)
            {
               mUIView.getItemByName("Button_PowerUp" + _loc3_.toString()).setEnabled(false);
               _loc3_++;
            }
            this.§8§.§?d§();
            mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         }
         this.§8§.run(param1);
         §3!#§.§5!!§.update(param1);
         this.§-!U§(param1);
         if(mNextState == §9w§.§>d§ && this.§,1§())
         {
            return § for§.STATE_STATUS_COMPLETED;
         }
         if(mNextState.length > 0 && this.§,1§())
         {
            if(this.§%![§)
            {
               this.§%![§.dispose();
            }
            this.§7!a§ = true;
            return § for§.STATE_STATUS_COMPLETED;
         }
         if(mNextState == §#!X§.§>d§)
         {
            if(this.§%![§)
            {
               this.§%![§.dispose();
            }
            this.§7!a§ = true;
            return § for§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;e§(param1);
         this.§"q§();
         if(!this.§]i§ && !§2M§.§1?§.slingshot.birdsAvailable)
         {
            this.§8§.§#M§("POWERUP1",false);
            this.§8§.§#M§("POWERUP2",false);
            this.§8§.§#M§("POWERUP3",false);
         }
         if(!this.§]i§ && §2M§.§1?§.slingshot.mSlingShotState == §`+§.§0!I§)
         {
            this.§+G§(this.§8§.§=!?§);
            this.§8§.§?d§();
         }
         return § for§.STATE_STATUS_RUNNING;
      }
      
      protected function §,1§() : Boolean
      {
         return !(§2M§.§1?§ as §"r§).§36§.§[%§ && this.§7!a§;
      }
      
      private function §%4§(param1:Number) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §!!]§).§&!H§ == true)
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §!!]§).§1!N§(param1);
            }
            _loc2_++;
         }
         _loc2_ = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §!!]§).§@n§() == "End")
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §!!]§).§&!H§ = false;
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §!!]§).§+^§("End");
            }
            _loc2_++;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§!t§.§0P§(§;_§.§2!Q§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§"!n§);
         }
         else
         {
            sHighscoreSidebar.selectedLevelName = §;_§.§2!Q§;
            sHighscoreSidebar.changeState(HighscoreSidebar.§<! §);
         }
         mUIView.getItemByName("Container_HiscoreContainer").y = 0;
         if(§3![§.§5!6§.§%!%§)
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         if(§!t§.§0P§(§;_§.§2!Q§))
         {
            this.§7!a§ = true;
         }
         else if(!this.§%![§)
         {
            this.§7!a§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = §;_§.§2!Q§;
            _loc3_ = §!t§.§`!o§(§;_§.§2!Q§);
            _loc4_ = §=S§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §6!>§.§7!'§(§6!<§.§7M§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §[m§.§'E§();
            _loc3_.gamePlay = §2M§.§1?§.§'!<§().toString();
            _loc3_.userId = §!t§.§[B§.id;
            _loc3_.security = §"!K§.§@1§(_loc3_);
            (_loc6_ = new Object()).id = §!t§.§[B§.id;
            _loc6_.security = §!t§.§[B§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§%![§ = new §"!K§(_loc7_,§3![§.§=![§ + _loc1_,this,§"!K§.§<!4§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §9w§.§>d§;
      }
      
      override public function getLoserState() : String
      {
         return §#!X§.§>d§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§[!M§.§8!o§ && !§-!3§.§&!T§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §[Z§.§>-§();
                  mNextState = §[Z§.§>d§;
                  break;
               case Keyboard.D:
                  if(§3![§.§,x§)
                  {
                     if(§2M§.§1?§.mLevelEngine.§0!X§)
                     {
                        §2M§.§1?§.mLevelEngine.§"o§();
                     }
                     §2M§.§1?§.mLevelEngine.§0!X§ = !§2M§.§1?§.mLevelEngine.§0!X§;
                     break;
                  }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§2M§.§1?§.slingshot.mDragging)
            {
               §2M§.§1?§.slingshot.shoot();
               §=S§.changeGameState(§ use§.§>W§);
               return;
            }
            §2M§.§1?§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §[!M§.§!!-§();
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §!!5§.§!!-§();
               break;
            case "PAUSE":
               §-!3§.§]!S§(mUIView);
               break;
            case "RESTART_LEVEL":
               §[Z§.§>-§();
               mNextState = §[Z§.§>d§;
               if(this.§%![§)
               {
                  this.§%![§.dispose();
               }
               this.§7!a§ = true;
               break;
            case "ZOOM_IN":
               this.§@!o§ = §"G§;
               this.§6F§ = § !>§;
               break;
            case "ZOOM_OUT":
               this.§@!o§ = -§"G§;
               this.§6F§ = § !>§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§@!o§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§@!o§ = 0;
               break;
            case "POWERUP_OPEN":
               if(!this.§8§.§=!?§)
               {
                  mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§8§.§[!G§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
               this.§8§.§ !r§ = this.§8§.§[!c§(param2);
               if(!this.§8§.§ !r§)
               {
                  mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§;!,§();
                  break;
               }
         }
      }
      
      private function §-!U§(param1:Number) : void
      {
         if(this.§@!o§)
         {
            this.§6F§ += param1;
            if(this.§6F§ > § !>§)
            {
               §=S§.doUserZoom(true,this.§@!o§);
               this.§6F§ = 0;
            }
         }
      }
      
      override protected function loginButtonClicked() : void
      {
         §-!3§.static(mUIView);
      }
      
      private function §"q§() : void
      {
         var _loc1_:int = §=S§.getScore();
         mUIView.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §3![§.§5!6§.§#c§(§;_§.§2!Q§);
         mUIView.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§7!a§ = true;
         var _loc2_:Object = §`!q§.§-`§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §"!K§.§-!X§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §+!O§.§=!L§ = true;
            §3![§.§5!6§ = new §;L§("");
            §!t§.§<1§ = new §#!A§();
            §!t§.levelProfile = [];
            §-!3§.§@!X§(mUIView);
            §`X§.sHighscoreSidebar.reset();
            return;
         }
         §!t§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §3![§.§5!6§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §!t§.levelProfile = _loc2_.levelProfile;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§;_§.§2!Q§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§;_§.§2!Q§).clearReloadTimer();
            }
         }
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
         §-!3§.§@!X§(mUIView);
      }
      
      private function §?!G§(param1:§#b§) : void
      {
         if(param1)
         {
            param1.§'!§();
         }
      }
   }
}
