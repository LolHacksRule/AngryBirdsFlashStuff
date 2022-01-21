package §7-§
{
   import § !Y§.§2#§;
   import § #§.§[!B§;
   import § %§.§`M§;
   import §&!V§.§=O§;
   import §+F§.§ !J§;
   import §+F§.§<!g§;
   import §+F§.§^!Y§;
   import §,i§.§7;§;
   import §2Y§.§]!k§;
   import §2y§.§4i§;
   import §2y§.§]`§;
   import §3!@§.§49§;
   import §3!@§.§<!X§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §3g§.§%E§;
   import §7,§.§=d§;
   import §<Z§.§!!W§;
   import §<Z§.§"!8§;
   import §=b§.§!!Z§;
   import §=b§.§,!G§;
   import §>!%§.HighscoreSidebar;
   import §?!g§.§ !d§;
   import §?7§.§1!+§;
   import §?I§.§'k§;
   import §?I§.§2C§;
   import §?I§.§`E§;
   import §[!L§.§#!`§;
   import §`!"§.§2+§;
   import §`!"§.§2,§;
   import §`!"§.§;i§;
   import §`R§.§8#§;
   import §finally§.§8k§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §7g§ implements §!!W§
   {
      
      public static const §<@§:String = "StatePlay";
      
      private static const §0a§:Number = -10 * 1000;
      
      private static const §7=§:Number = 15 * 1000;
      
      private static const §"e§:Number = 50;
      
      private static const §,!+§:Number = 0.05;
      
      private static const §8q§:Number = 15 * 1000;
       
      
      private var §#!a§:Number = 0;
      
      private var §>q§:Boolean = false;
      
      private var §86§:Number = -10000.0;
      
      private var §6[§:int = 0;
      
      private var §"G§:Boolean = true;
      
      private var §^!n§:§7;§ = null;
      
      private var §2T§:Boolean = false;
      
      private var §,!a§:§2,§;
      
      private var §`-§:Number;
      
      private var §[!A§:Number;
      
      private var §6q§:Number;
      
      private var §`;§:§1!+§;
      
      private var §?g§:Boolean = false;
      
      private var §6g§:Number = 0;
      
      private var §^!R§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §"!n§(this);
         mUIView.init(§%E§.§[i§.Views.View_LevelPlay[0]);
         this.§6q§ = (mUIView.getItemByName("Container_PowerUpButtons") as §]`§).width - 25;
         this.§[!A§ = (mUIView.getItemByName("Container_PowerUpButtons") as §]`§).x;
         this.§`;§ = new §1!+§(mUIView);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§#!a§ <= 0)
         {
            §=d§.§2!l§("onLevelStart");
            this.§#!a§ = §8q§;
         }
         this.§`;§.activate();
         this.§`;§.§7!<§ = false;
         this.§`;§.§!!k§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         if(§1!+§.§@i§ && !§1!+§.§9&§)
         {
            this.§`;§.§&!Q§();
         }
         mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§,!a§)
         {
            this.§,!a§.stop();
            this.§,!a§ = null;
         }
         this.§?g§ = false;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
         § !d§.§;O§();
         §'k§.§=<§(§2C§.ACTION_GAME_LEVEL_STARTED,§8k§.§8h§);
         § !d§.§-h§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§"G§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         mUIView.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§"!V§();
         this.§0!!§();
         §`E§.§@!7§.updateTextFields(mUIView,"StatePlay");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §`E§.§@!7§.updateTextFields(mUIView,"StatePlay");
      }
      
      protected function §#w§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§2!=§(this.§,!a§);
         this.§,!a§ = §;i§.§@!7§.§@!6§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§,!a§.delay = 2;
         this.§,!a§.play();
      }
      
      protected function §"!P§(param1:Boolean = true) : void
      {
         this.§?g§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§2!=§(this.§,!a§);
         this.§,!a§ = §;i§.§@!7§.§@!6§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§,!a§.delay = 2;
         }
         else
         {
            this.§,!a§.delay = 0.5;
         }
         this.§,!a§.play();
         this.§,!a§.onComplete = this.§9!9§;
      }
      
      private function §9!9§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+!_§();
         this.§0!!§();
         if(this.§^!n§)
         {
            this.§^!n§.dispose();
            this.§^!n§ = null;
         }
         this.§2T§ = false;
         §2!M§.§7!F§.§@!2§.§2N§();
      }
      
      private function §+!_§() : void
      {
         var _loc1_:int = 0;
         if(!this.§>q§)
         {
            if(this.§86§ > §7=§)
            {
               this.§>q§ = true;
               _loc1_ = Math.round(1000 / this.§86§ * this.§6[§);
               if(§`M§.§#z§)
               {
                  §'k§.§=<§(§2C§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §'k§.§=<§(§2C§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §31§(param1:Number) : void
      {
         this.§86§ += param1;
         if(this.§86§ > 0)
         {
            ++this.§6[§;
         }
      }
      
      private function §0!!§() : void
      {
         this.§86§ = §0a§;
         this.§6[§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§"G§)
         {
            §^!Y§.§'!h§(mUIView,true);
            this.§"G§ = false;
         }
         if(§^!Y§.§,!=§)
         {
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.enableLoginButton(false);
            sHighscoreSidebar.enableLogOutButton(false);
            return §=O§.STATE_STATUS_RUNNING;
         }
         if(§ !J§.§#!D§())
         {
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.run(param1);
            return §=O§.STATE_STATUS_RUNNING;
         }
         if(§2#§.§"@§.slingshot.§0n§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         if(!§2#§.§"@§.objects.isPigsAlive())
         {
            _loc3_ = 1;
            while(_loc3_ < 5)
            {
               mUIView.getItemByName("Button_PowerUp" + _loc3_.toString()).setEnabled(false);
               _loc3_++;
            }
            this.§`;§.§"![§();
            mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         }
         this.§`;§.run(param1);
         §2+§.§@!7§.update(param1);
         this.§=w§(param1);
         if(mNextState == § Y§.§<@§ && this.§]!o§())
         {
            return §=O§.STATE_STATUS_COMPLETED;
         }
         if(mNextState.length > 0 && this.§]!o§())
         {
            if(this.§^!n§)
            {
               this.§^!n§.dispose();
            }
            this.§2T§ = true;
            return §=O§.STATE_STATUS_COMPLETED;
         }
         if(mNextState == §!j§.§<@§)
         {
            if(this.§^!n§)
            {
               this.§^!n§.dispose();
            }
            this.§2T§ = true;
            return §=O§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§31§(param1);
         this.§"!V§();
         if(!this.§?g§ && !§2#§.§"@§.slingshot.birdsAvailable)
         {
            this.§`;§.§+H§("POWERUP1",false);
            this.§`;§.§+H§("POWERUP2",false);
            this.§`;§.§+H§("POWERUP3",false);
         }
         if(!this.§?g§ && §2#§.§"@§.slingshot.mSlingShotState == §49§.§9-§)
         {
            this.§"!P§(this.§`;§.§7!<§);
            this.§`;§.§"![§();
         }
         return §=O§.STATE_STATUS_RUNNING;
      }
      
      protected function §]!o§() : Boolean
      {
         return !(§2#§.§"@§ as §8#§).§0S§.§]T§ && this.§2T§;
      }
      
      private function §^,§(param1:Number) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §4i§).§8!N§ == true)
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §4i§).§'f§(param1);
            }
            _loc2_++;
         }
         _loc2_ = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §4i§).§<!'§() == "End")
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §4i§).§8!N§ = false;
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §4i§).§0!Z§("End");
            }
            _loc2_++;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§,!G§.§0g§(§8k§.§8h§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§?[§);
         }
         else
         {
            sHighscoreSidebar.selectedLevelName = §8k§.§8h§;
            sHighscoreSidebar.changeState(HighscoreSidebar.§>2§);
         }
         mUIView.getItemByName("Container_HiscoreContainer").y = 0;
         if(§2!M§.§&!#§.§-!Z§)
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
         if(§,!G§.§0g§(§8k§.§8h§))
         {
            this.§2T§ = true;
         }
         else if(!this.§^!n§)
         {
            this.§2T§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = §8k§.§8h§;
            _loc3_ = §,!G§.§%C§(§8k§.§8h§);
            _loc4_ = §-4§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §'k§.§=<§(§2C§.§"V§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §<!X§.§[!W§();
            _loc3_.gamePlay = §2#§.§"@§.§8'§().toString();
            _loc3_.userId = §,!G§.§5i§.id;
            _loc3_.security = §7;§.§5! §(_loc3_);
            (_loc6_ = new Object()).id = §,!G§.§5i§.id;
            _loc6_.security = §,!G§.§5i§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§^!n§ = new §7;§(_loc7_,§2!M§.§`8§ + _loc1_,this,§7;§.§[%§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return § Y§.§<@§;
      }
      
      override public function getLoserState() : String
      {
         return §!j§.§<@§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§^!Y§.§,!=§ && !§ !J§.§#!D§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §"_§.§ !D§();
                  mNextState = §"_§.§<@§;
                  break;
               case Keyboard.D:
                  if(§2!M§.§6T§)
                  {
                     if(§2#§.§"@§.mLevelEngine.§;e§)
                     {
                        §2#§.§"@§.mLevelEngine.§%Y§();
                     }
                     §2#§.§"@§.mLevelEngine.§;e§ = !§2#§.§"@§.mLevelEngine.§;e§;
                     break;
                  }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§2#§.§"@§.slingshot.mDragging)
            {
               §2#§.§"@§.slingshot.shoot();
               §-4§.changeGameState(§#!`§.§,!R§);
               return;
            }
            §2#§.§"@§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §^!Y§.§^!g§();
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §<!g§.§^!g§();
               break;
            case "PAUSE":
               § !J§.§^7§(mUIView);
               break;
            case "RESTART_LEVEL":
               §"_§.§ !D§();
               mNextState = §"_§.§<@§;
               if(this.§^!n§)
               {
                  this.§^!n§.dispose();
               }
               this.§2T§ = true;
               break;
            case "ZOOM_IN":
               this.§6g§ = §,!+§;
               this.§^!R§ = §"e§;
               break;
            case "ZOOM_OUT":
               this.§6g§ = -§,!+§;
               this.§^!R§ = §"e§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§6g§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§6g§ = 0;
               break;
            case "POWERUP_OPEN":
               if(!this.§`;§.§7!<§)
               {
                  mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§`;§.§&!Q§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
               this.§`;§.§!!k§ = this.§`;§.§1![§(param2);
               if(!this.§`;§.§!!k§)
               {
                  mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§#w§();
                  break;
               }
         }
      }
      
      private function §=w§(param1:Number) : void
      {
         if(this.§6g§)
         {
            this.§^!R§ += param1;
            if(this.§^!R§ > §"e§)
            {
               §-4§.doUserZoom(true,this.§6g§);
               this.§^!R§ = 0;
            }
         }
      }
      
      override protected function loginButtonClicked() : void
      {
         § !J§.§-!E§(mUIView);
      }
      
      private function §"!V§() : void
      {
         var _loc1_:int = §-4§.getScore();
         mUIView.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §2!M§.§&!#§.§?!M§(§8k§.§8h§);
         mUIView.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§2T§ = true;
         var _loc2_:Object = §"!8§.§&!p§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §7;§.§;x§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §[!B§.§3?§ = true;
            §2!M§.§&!#§ = new §!!Z§("");
            §,!G§.§-!8§ = new §]!k§();
            §,!G§.levelProfile = [];
            § !J§.§<!&§(mUIView);
            §[!$§.sHighscoreSidebar.reset();
            return;
         }
         §,!G§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §2!M§.§&!#§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §,!G§.levelProfile = _loc2_.levelProfile;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§8k§.§8h§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§8k§.§8h§).clearReloadTimer();
            }
         }
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
         § !J§.§<!&§(mUIView);
      }
      
      private function §2!=§(param1:§2,§) : void
      {
         if(param1)
         {
            param1.§'V§();
         }
      }
   }
}
