package §%<§
{
   import § !1§.§8!Y§;
   import § !1§.§[n§;
   import §"!§.§`!A§;
   import §"v§.§5!T§;
   import §'Y§.§6Q§;
   import §,![§.§7'§;
   import §,![§.§[!S§;
   import §-!#§.§5!6§;
   import §-1§.§%#§;
   import §1!D§.§"!6§;
   import §1!D§.§0S§;
   import §1!D§.§]!§;
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §3l§.§&W§;
   import §3l§.§9m§;
   import §3l§.§@! §;
   import §8!P§.§0!d§;
   import §9!8§.§0!7§;
   import §9!8§.§8n§;
   import §;!-§.§++§;
   import §=T§.§0!%§;
   import §=T§.§0O§;
   import §=T§.§=W§;
   import §?;§.§ !8§;
   import §?H§.§3!X§;
   import §?H§.§>!!§;
   import §@!b§.§%!'§;
   import §@!b§.§66§;
   import §^5§.§]!,§;
   import §^u§.§5!U§;
   import §`!d§.§7!§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §'1§ implements §[n§
   {
      
      public static const §<P§:String = "StatePlay";
      
      private static const §;k§:Number = -10 * 1000;
      
      private static const §#!D§:Number = 15 * 1000;
      
      private static const §#!#§:Number = 50;
      
      private static const §2O§:Number = 0.05;
       
      
      private var §";§:Boolean = false;
      
      private var §-+§:Number = -10000.0;
      
      private var §<0§:int = 0;
      
      private var §+!j§:Boolean = true;
      
      private var §3T§:§6Q§ = null;
      
      private var §]x§:Boolean = false;
      
      private var §7H§:§&W§;
      
      private var §1!0§:Number;
      
      private var §3w§:Number;
      
      private var §'!b§:Number;
      
      private var §],§:§0!d§;
      
      private var §]f§:Boolean = false;
      
      private var §4M§:Number = 0;
      
      private var §!>§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §0!7§(this);
         mUIView.init(§8n§.§8C§.Views.View_LevelPlay[0]);
         this.§'!b§ = (mUIView.getItemByName("Container_PowerUpButtons") as §[!S§).width - 25;
         this.§3w§ = (mUIView.getItemByName("Container_PowerUpButtons") as §[!S§).x;
         this.§],§ = new §0!d§(mUIView);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§],§.activate();
         this.§],§.§[!8§ = false;
         this.§],§.§%!,§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         if(§0!d§.§%`§ && !§0!d§.§"!]§)
         {
            this.§],§.§`A§();
         }
         mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§7H§)
         {
            this.§7H§.stop();
            this.§7H§ = null;
         }
         this.§]f§ = false;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
         §5!6§.§#!a§();
         §]!§.§>G§(§"!6§.ACTION_GAME_LEVEL_STARTED,§7!§.§+e§);
         §5!6§.§8!G§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§+!j§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         mUIView.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§'!?§();
         this.§,!R§();
         §0S§.§>E§.updateTextFields(mUIView,"StatePlay");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §0S§.§>E§.updateTextFields(mUIView,"StatePlay");
      }
      
      protected function §`V§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§#!n§(this.§7H§);
         this.§7H§ = §9m§.§>E§.§"0§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§7H§.delay = 2;
         this.§7H§.play();
      }
      
      protected function §%7§(param1:Boolean = true) : void
      {
         this.§]f§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§#!n§(this.§7H§);
         this.§7H§ = §9m§.§>E§.§"0§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§7H§.delay = 2;
         }
         else
         {
            this.§7H§.delay = 0.5;
         }
         this.§7H§.play();
         this.§7H§.onComplete = this.§19§;
      }
      
      private function §19§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=r§();
         this.§,!R§();
         if(this.§3T§)
         {
            this.§3T§.dispose();
            this.§3T§ = null;
         }
         this.§]x§ = false;
         §;!4§.§?-§.§1!L§.§3s§();
      }
      
      private function §=r§() : void
      {
         var _loc1_:int = 0;
         if(!this.§";§)
         {
            if(this.§-+§ > §#!D§)
            {
               this.§";§ = true;
               _loc1_ = Math.round(1000 / this.§-+§ * this.§<0§);
               if(§5!T§.§3h§)
               {
                  §]!§.§>G§(§"!6§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §]!§.§>G§(§"!6§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §-!f§(param1:Number) : void
      {
         this.§-+§ += param1;
         if(this.§-+§ > 0)
         {
            ++this.§<0§;
         }
      }
      
      private function §,!R§() : void
      {
         this.§-+§ = §;k§;
         this.§<0§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§+!j§)
         {
            §=W§.§'I§(mUIView,true);
            this.§+!j§ = false;
         }
         if(§=W§.§,s§)
         {
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.enableLoginButton(false);
            sHighscoreSidebar.enableLogOutButton(false);
            return §]!,§.STATE_STATUS_RUNNING;
         }
         if(§0!%§.§6=§())
         {
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.run(param1);
            return §]!,§.STATE_STATUS_RUNNING;
         }
         if(§<H§.§=3§.slingshot.§ N§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         if(!§<H§.§=3§.objects.isPigsAlive())
         {
            _loc3_ = 1;
            while(_loc3_ < 5)
            {
               mUIView.getItemByName("Button_PowerUp" + _loc3_.toString()).setEnabled(false);
               _loc3_++;
            }
            this.§],§.§!!Q§();
            mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         }
         this.§],§.run(param1);
         §@! §.§>E§.update(param1);
         this.§;2§(param1);
         if(mNextState == §!6§.§<P§ && this.§^!#§())
         {
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         if(mNextState.length > 0 && this.§^!#§())
         {
            if(this.§3T§)
            {
               this.§3T§.dispose();
            }
            this.§]x§ = true;
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         if(mNextState == §4!]§.§<P§)
         {
            if(this.§3T§)
            {
               this.§3T§.dispose();
            }
            this.§]x§ = true;
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-!f§(param1);
         this.§'!?§();
         if(!this.§]f§ && !§<H§.§=3§.slingshot.birdsAvailable)
         {
            this.§],§.§-!&§("POWERUP1",false);
            this.§],§.§-!&§("POWERUP2",false);
            this.§],§.§-!&§("POWERUP3",false);
         }
         if(!this.§]f§ && §<H§.§=3§.slingshot.mSlingShotState == §%!'§.§"-§)
         {
            this.§%7§(this.§],§.§[!8§);
            this.§],§.§!!Q§();
         }
         return §]!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §^!#§() : Boolean
      {
         return !(§<H§.§=3§ as §++§).§2%§.§]y§ && this.§]x§;
      }
      
      private function §1=§(param1:Number) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §7'§).§=!n§ == true)
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §7'§).§?!Z§(param1);
            }
            _loc2_++;
         }
         _loc2_ = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §7'§).§@!#§() == "End")
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §7'§).§=!n§ = false;
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §7'§).§9B§("End");
            }
            _loc2_++;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§>!!§.§8S§(§7!§.§+e§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§-I§);
         }
         else
         {
            sHighscoreSidebar.selectedLevelName = §7!§.§+e§;
            sHighscoreSidebar.changeState(HighscoreSidebar.§0C§);
         }
         mUIView.getItemByName("Container_HiscoreContainer").y = 0;
         if(§;!4§.§8'§.§2!^§)
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
         if(§>!!§.§8S§(§7!§.§+e§))
         {
            this.§]x§ = true;
         }
         else if(!this.§3T§)
         {
            this.§]x§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = §7!§.§+e§;
            _loc3_ = §>!!§.§]r§(§7!§.§+e§);
            _loc4_ = §`8§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §]!§.§>G§(§"!6§.§5n§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §66§.§60§();
            _loc3_.gamePlay = §<H§.§=3§.§?!,§().toString();
            _loc3_.userId = §>!!§.§5M§.id;
            _loc3_.security = §6Q§.§7!9§(_loc3_);
            (_loc6_ = new Object()).id = §>!!§.§5M§.id;
            _loc6_.security = §>!!§.§5M§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§3T§ = new §6Q§(_loc7_,§;!4§.§'!O§ + _loc1_,this,§6Q§.§&!0§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §!6§.§<P§;
      }
      
      override public function getLoserState() : String
      {
         return §4!]§.§<P§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§=W§.§,s§ && !§0!%§.§6=§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §%!$§.§^!?§();
                  mNextState = §%!$§.§<P§;
                  break;
               case Keyboard.D:
                  if(§;!4§.§+!,§)
                  {
                     if(§<H§.§=3§.mLevelEngine.§2!-§)
                     {
                        §<H§.§=3§.mLevelEngine.§2Q§();
                     }
                     §<H§.§=3§.mLevelEngine.§2!-§ = !§<H§.§=3§.mLevelEngine.§2!-§;
                     break;
                  }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§<H§.§=3§.slingshot.mDragging)
            {
               §<H§.§=3§.slingshot.shoot();
               §`8§.changeGameState(§ !8§.§+!l§);
               return;
            }
            §<H§.§=3§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §=W§.§ E§();
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §0O§.§ E§();
               break;
            case "PAUSE":
               §0!%§.§!Q§(mUIView);
               break;
            case "RESTART_LEVEL":
               §%!$§.§^!?§();
               mNextState = §%!$§.§<P§;
               if(this.§3T§)
               {
                  this.§3T§.dispose();
               }
               this.§]x§ = true;
               break;
            case "ZOOM_IN":
               this.§4M§ = §2O§;
               this.§!>§ = §#!#§;
               break;
            case "ZOOM_OUT":
               this.§4M§ = -§2O§;
               this.§!>§ = §#!#§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§4M§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§4M§ = 0;
               break;
            case "POWERUP_OPEN":
               if(!this.§],§.§[!8§)
               {
                  mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§],§.§`A§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
               this.§],§.§%!,§ = this.§],§.§9H§(param2);
               if(!this.§],§.§%!,§)
               {
                  mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§`V§();
                  break;
               }
         }
      }
      
      private function §;2§(param1:Number) : void
      {
         if(this.§4M§)
         {
            this.§!>§ += param1;
            if(this.§!>§ > §#!#§)
            {
               §`8§.doUserZoom(true,this.§4M§);
               this.§!>§ = 0;
            }
         }
      }
      
      override protected function loginButtonClicked() : void
      {
         §0!%§.§%!D§(mUIView);
      }
      
      private function §'!?§() : void
      {
         var _loc1_:int = §`8§.getScore();
         mUIView.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §;!4§.§8'§.§5F§(§7!§.§+e§);
         mUIView.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§]x§ = true;
         var _loc2_:Object = §8!Y§.§%f§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §6Q§.§9!_§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §`!A§.§7F§ = true;
            §;!4§.§8'§ = new §3!X§("");
            §>!!§.§^!4§ = new §5!U§();
            §>!!§.levelProfile = [];
            §0!%§.§@9§(mUIView);
            §+V§.sHighscoreSidebar.reset();
            return;
         }
         §>!!§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §;!4§.§8'§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §>!!§.levelProfile = _loc2_.levelProfile;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§7!§.§+e§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§7!§.§+e§).clearReloadTimer();
            }
         }
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
         §0!%§.§@9§(mUIView);
      }
      
      private function §#!n§(param1:§&W§) : void
      {
         if(param1)
         {
            param1.§'Q§();
         }
      }
   }
}
