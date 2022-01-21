package
{
   import §#!q§.§6!1§;
   import §#!q§.§6!?§;
   import §#!q§.§`q§;
   import §%!5§.§7;§;
   import §'!B§.§1!R§;
   import §'!N§.§8!C§;
   import §+$§.§[!a§;
   import §+J§.§?!'§;
   import §-!F§.§2[§;
   import §1!^§.§,!n§;
   import §37§.§!!c§;
   import §37§.§&!;§;
   import §37§.§8!`§;
   import §3<§.§-2§;
   import §3<§.§9&§;
   import §3j§.§[8§;
   import §55§.§"!P§;
   import §55§.§1!g§;
   import §7!N§.§0-§;
   import §7!N§.§9!o§;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import §<! §.§1!6§;
   import §<! §.§<<§;
   import §<P§.§=d§;
   import §[h§.§ !&§;
   import §[h§.§]! §;
   import §]^§.§7G§;
   import §]w§.§-!K§;
   import §^m§.§-D§;
   import §^m§.§0!-§;
   import §^m§.§=!a§;
   import §each §.§'!3§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §;0§ implements §<<§
   {
      
      public static const §[!1§:String = "StatePlay";
      
      private static const §5!i§:Number = -10 * 1000;
      
      private static const §>!V§:Number = 15 * 1000;
      
      private static const §"?§:Number = 50;
      
      private static const §0!O§:Number = 0.05;
      
      private static const §2-§:Number = 15 * 1000;
       
      
      private var §6!L§:Number = 0;
      
      private var §^!S§:Boolean = false;
      
      private var §<=§:Number = -10000.0;
      
      private var §8H§:int = 0;
      
      private var §]!P§:Boolean = true;
      
      private var §<G§:§,!n§ = null;
      
      private var §7w§:Boolean = false;
      
      private var §2!n§:§0!-§;
      
      private var §1r§:Number;
      
      private var §!v§:Number;
      
      private var §6!!§:Number;
      
      private var §!!?§:§-!K§;
      
      private var §9=§:Boolean = false;
      
      private var §28§:Number = 0;
      
      private var §"p§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §-2§(this);
         mUIView.init(§9&§.§6!M§.Views.View_LevelPlay[0]);
         this.§6!!§ = (mUIView.getItemByName("Container_PowerUpButtons") as § !&§).width - 25;
         this.§!v§ = (mUIView.getItemByName("Container_PowerUpButtons") as § !&§).x;
         this.§!!?§ = new §-!K§(mUIView);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§6!L§ <= 0)
         {
            §=d§.§<3§("onLevelStart");
            this.§6!L§ = §2-§;
         }
         this.§!!?§.activate();
         this.§!!?§.§6Y§ = false;
         this.§!!?§.§]W§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         if(§-!K§.§5,§ && !§-!K§.§;?§)
         {
            this.§!!?§.§0Y§();
         }
         mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§2!n§)
         {
            this.§2!n§.stop();
            this.§2!n§ = null;
         }
         this.§9=§ = false;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
         §7G§.§]!Z§();
         §6!?§.§>!I§(§6!1§.ACTION_GAME_LEVEL_STARTED,§2[§.§^N§);
         §7G§.§4W§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§]!P§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         mUIView.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§6!q§();
         this.§6!c§();
         §`q§.§9$§.updateTextFields(mUIView,"StatePlay");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §`q§.§9$§.updateTextFields(mUIView,"StatePlay");
      }
      
      protected function §&V§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§&!&§(this.§2!n§);
         this.§2!n§ = §=!a§.§9$§.§9!H§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§2!n§.delay = 2;
         this.§2!n§.play();
      }
      
      protected function §]1§(param1:Boolean = true) : void
      {
         this.§9=§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§&!&§(this.§2!n§);
         this.§2!n§ = §=!a§.§9$§.§9!H§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§2!n§.delay = 2;
         }
         else
         {
            this.§2!n§.delay = 0.5;
         }
         this.§2!n§.play();
         this.§2!n§.onComplete = this.§&z§;
      }
      
      private function §&z§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§^!Y§();
         this.§6!c§();
         if(this.§<G§)
         {
            this.§<G§.dispose();
            this.§<G§ = null;
         }
         this.§7w§ = false;
         §9!_§.§@r§.§2!k§.§#i§();
      }
      
      private function §^!Y§() : void
      {
         var _loc1_:int = 0;
         if(!this.§^!S§)
         {
            if(this.§<=§ > §>!V§)
            {
               this.§^!S§ = true;
               _loc1_ = Math.round(1000 / this.§<=§ * this.§8H§);
               if(§'!3§.§#T§)
               {
                  §6!?§.§>!I§(§6!1§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §6!?§.§>!I§(§6!1§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §-!!§(param1:Number) : void
      {
         this.§<=§ += param1;
         if(this.§<=§ > 0)
         {
            ++this.§8H§;
         }
      }
      
      private function §6!c§() : void
      {
         this.§<=§ = §5!i§;
         this.§8H§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§]!P§)
         {
            §8!`§.§<Z§(mUIView,true);
            this.§]!P§ = false;
         }
         if(§8!`§.§7!5§)
         {
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.enableLoginButton(false);
            sHighscoreSidebar.enableLogOutButton(false);
            return § =§.STATE_STATUS_RUNNING;
         }
         if(§&!;§.§'d§())
         {
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.run(param1);
            return § =§.STATE_STATUS_RUNNING;
         }
         if(§7;§.§1h§.slingshot.§!!e§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         if(!§7;§.§1h§.objects.isPigsAlive())
         {
            _loc3_ = 1;
            while(_loc3_ < 5)
            {
               mUIView.getItemByName("Button_PowerUp" + _loc3_.toString()).setEnabled(false);
               _loc3_++;
            }
            this.§!!?§.§#!@§();
            mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         }
         this.§!!?§.run(param1);
         §-D§.§9$§.update(param1);
         this.§#!a§(param1);
         if(mNextState == §'!Q§.§[!1§ && this.§]"§())
         {
            return § =§.STATE_STATUS_COMPLETED;
         }
         if(mNextState.length > 0 && this.§]"§())
         {
            if(this.§<G§)
            {
               this.§<G§.dispose();
            }
            this.§7w§ = true;
            return § =§.STATE_STATUS_COMPLETED;
         }
         if(mNextState == §2!Q§.§[!1§)
         {
            if(this.§<G§)
            {
               this.§<G§.dispose();
            }
            this.§7w§ = true;
            return § =§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-!!§(param1);
         this.§6!q§();
         if(!this.§9=§ && !§7;§.§1h§.slingshot.birdsAvailable)
         {
            this.§!!?§.§-d§("POWERUP1",false);
            this.§!!?§.§-d§("POWERUP2",false);
            this.§!!?§.§-d§("POWERUP3",false);
         }
         if(!this.§9=§ && §7;§.§1h§.slingshot.mSlingShotState == §"!P§.§;!L§)
         {
            this.§]1§(this.§!!?§.§6Y§);
            this.§!!?§.§#!@§();
         }
         return § =§.STATE_STATUS_RUNNING;
      }
      
      protected function §]"§() : Boolean
      {
         return !(§7;§.§1h§ as §[8§).§2Y§.§return§ && this.§7w§;
      }
      
      private function §=!Y§(param1:Number) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §]! §).§4!V§ == true)
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §]! §).§&!§(param1);
            }
            _loc2_++;
         }
         _loc2_ = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §]! §).§-v§() == "End")
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §]! §).§4!V§ = false;
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §]! §).§7q§("End");
            }
            _loc2_++;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§0-§.§-5§(§2[§.§^N§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§3!K§);
         }
         else
         {
            sHighscoreSidebar.selectedLevelName = §2[§.§^N§;
            sHighscoreSidebar.changeState(HighscoreSidebar.§2!R§);
         }
         mUIView.getItemByName("Container_HiscoreContainer").y = 0;
         if(§9!_§.§1!?§.§`2§)
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
         if(§0-§.§-5§(§2[§.§^N§))
         {
            this.§7w§ = true;
         }
         else if(!this.§<G§)
         {
            this.§7w§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = §2[§.§^N§;
            _loc3_ = §0-§.§=!6§(§2[§.§^N§);
            _loc4_ = § @§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §6!?§.§>!I§(§6!1§.§5!j§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §1!g§.§<!m§();
            _loc3_.gamePlay = §7;§.§1h§.§?!b§().toString();
            _loc3_.userId = §0-§.§4!E§.id;
            _loc3_.security = §,!n§.§<!X§(_loc3_);
            (_loc6_ = new Object()).id = §0-§.§4!E§.id;
            _loc6_.security = §0-§.§4!E§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§<G§ = new §,!n§(_loc7_,§9!_§.§?!k§ + _loc1_,this,§,!n§.§-I§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §'!Q§.§[!1§;
      }
      
      override public function getLoserState() : String
      {
         return §2!Q§.§[!1§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§8!`§.§7!5§ && !§&!;§.§'d§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §"e§.§`!"§();
                  mNextState = §"e§.§[!1§;
                  break;
               case Keyboard.D:
                  if(§9!_§.§'!m§)
                  {
                     if(§7;§.§1h§.mLevelEngine.§8! §)
                     {
                        §7;§.§1h§.mLevelEngine.§!7§();
                     }
                     §7;§.§1h§.mLevelEngine.§8! § = !§7;§.§1h§.mLevelEngine.§8! §;
                     break;
                  }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§7;§.§1h§.slingshot.mDragging)
            {
               §7;§.§1h§.slingshot.shoot();
               § @§.changeGameState(§8!C§.§0L§);
               return;
            }
            §7;§.§1h§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §8!`§.§2Q§();
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §!!c§.§2Q§();
               break;
            case "PAUSE":
               §&!;§.§#!Y§(mUIView);
               break;
            case "RESTART_LEVEL":
               §"e§.§`!"§();
               mNextState = §"e§.§[!1§;
               if(this.§<G§)
               {
                  this.§<G§.dispose();
               }
               this.§7w§ = true;
               break;
            case "ZOOM_IN":
               this.§28§ = §0!O§;
               this.§"p§ = §"?§;
               break;
            case "ZOOM_OUT":
               this.§28§ = -§0!O§;
               this.§"p§ = §"?§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§28§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§28§ = 0;
               break;
            case "POWERUP_OPEN":
               if(!this.§!!?§.§6Y§)
               {
                  mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§!!?§.§0Y§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
               this.§!!?§.§]W§ = this.§!!?§.§,D§(param2);
               if(!this.§!!?§.§]W§)
               {
                  mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§&V§();
                  break;
               }
         }
      }
      
      private function §#!a§(param1:Number) : void
      {
         if(this.§28§)
         {
            this.§"p§ += param1;
            if(this.§"p§ > §"?§)
            {
               § @§.doUserZoom(true,this.§28§);
               this.§"p§ = 0;
            }
         }
      }
      
      override protected function loginButtonClicked() : void
      {
         §&!;§.§;!0§(mUIView);
      }
      
      private function §6!q§() : void
      {
         var _loc1_:int = § @§.getScore();
         mUIView.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §9!_§.§1!?§.§<!d§(§2[§.§^N§);
         mUIView.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§7w§ = true;
         var _loc2_:Object = §1!6§.§>o§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §,!n§.§@j§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §1!R§.§;W§ = true;
            §9!_§.§1!?§ = new §9!o§("");
            §0-§.§6!&§ = new §?!'§();
            §0-§.levelProfile = [];
            §&!;§.§5c§(mUIView);
            §2'§.sHighscoreSidebar.reset();
            return;
         }
         §0-§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §9!_§.§1!?§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §0-§.levelProfile = _loc2_.levelProfile;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§2[§.§^N§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§2[§.§^N§).clearReloadTimer();
            }
         }
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
         §&!;§.§5c§(mUIView);
      }
      
      private function §&!&§(param1:§0!-§) : void
      {
         if(param1)
         {
            param1.§7!S§();
         }
      }
   }
}
