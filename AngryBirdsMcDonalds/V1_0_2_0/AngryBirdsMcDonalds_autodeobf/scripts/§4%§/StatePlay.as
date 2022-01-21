package §4%§
{
   import § !m§.§6h§;
   import § v§.§!!^§;
   import § v§.§%!^§;
   import §!!h§.§1H§;
   import §"%§.§,!n§;
   import §'a§.§#!`§;
   import §'a§.§0U§;
   import §+-§.§3!5§;
   import §-Y§.§-!V§;
   import §4!$§.§<!2§;
   import §5<§.§-!a§;
   import §6!Q§.§ !"§;
   import §7"§.§1! §;
   import §7"§.§[!K§;
   import §9!W§.§=!@§;
   import §;!j§.§'s§;
   import §;!j§.§25§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=!F§.§8!]§;
   import §=!F§.§^!^§;
   import §>G§.§[f§;
   import §>G§.§]f§;
   import §@]§.§?![§;
   import §@`§.§>!S§;
   import §@`§.§]8§;
   import §@w§.§7!]§;
   import §[#§.§!p§;
   import §]! §.HighscoreSidebar;
   import §^!V§.§%K§;
   import §^!V§.§^!h§;
   import §^!V§.§^!j§;
   import §`c§.§`Z§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §^z§ implements §1! §
   {
      
      public static const §4D§:String = "StatePlay";
      
      private static const §6k§:Number = -10 * 1000;
      
      private static const §-$§:Number = 15 * 1000;
      
      private static const §"g§:Number = 50;
      
      private static const §^F§:Number = 0.05;
      
      private static const §%!d§:Number = 15 * 1000;
       
      
      private var §,!2§:Number = 0;
      
      private var §]"§:Boolean = false;
      
      private var §do §:Number = -10000.0;
      
      private var §4!-§:int = 0;
      
      private var §]$§:Boolean = true;
      
      private var §>D§:§1H§ = null;
      
      private var §]!e§:Boolean = false;
      
      private var §"! §:§^!^§;
      
      private var §@4§:Number;
      
      private var § §:Number;
      
      private var §[!;§:Number;
      
      private var §#q§:§7!]§;
      
      private var §9!N§:Boolean = false;
      
      private var §9!i§:Number = 0;
      
      private var §"4§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §>!S§(this);
         mUIView.init(§]8§.§-!C§.Views.View_LevelPlay[0]);
         this.§[!;§ = (mUIView.getItemByName("Container_PowerUpButtons") as §]f§).width - 25;
         this.§ § = (mUIView.getItemByName("Container_PowerUpButtons") as §]f§).x;
         this.§#q§ = new §7!]§(mUIView);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§,!2§ <= 0)
         {
            §`Z§.§?D§("onLevelStart");
            this.§,!2§ = §%!d§;
         }
         this.§#q§.activate();
         this.§#q§.§ u§ = false;
         this.§#q§.§;o§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         if(§7!]§.§,h§ && !§7!]§.§'m§)
         {
            this.§#q§.§?$§();
         }
         mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§"! §)
         {
            this.§"! §.stop();
            this.§"! § = null;
         }
         this.§9!N§ = false;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
         §6h§.§>!U§();
         §25§.§%!<§(§'s§.ACTION_GAME_LEVEL_STARTED,§3!5§.§-!2§);
         §6h§.§-a§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§]$§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         mUIView.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§6!W§();
         this.§;$§();
         §[!<§.§'!S§.updateTextFields(mUIView,"StatePlay");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §[!<§.§'!S§.updateTextFields(mUIView,"StatePlay");
      }
      
      protected function §1#§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§ do§(this.§"! §);
         this.§"! § = §"!2§.§'!S§.§-!S§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§"! §.delay = 2;
         this.§"! §.play();
      }
      
      protected function §>_§(param1:Boolean = true) : void
      {
         this.§9!N§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§ do§(this.§"! §);
         this.§"! § = §"!2§.§'!S§.§-!S§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§"! §.delay = 2;
         }
         else
         {
            this.§"! §.delay = 0.5;
         }
         this.§"! §.play();
         this.§"! §.onComplete = this.§case§;
      }
      
      private function §case§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4C§();
         this.§;$§();
         if(this.§>D§)
         {
            this.§>D§.dispose();
            this.§>D§ = null;
         }
         this.§]!e§ = false;
         §'j§.§7!$§.§,!_§.§^!E§();
      }
      
      private function §4C§() : void
      {
         var _loc1_:int = 0;
         if(!this.§]"§)
         {
            if(this.§do § > §-$§)
            {
               this.§]"§ = true;
               _loc1_ = Math.round(1000 / this.§do § * this.§4!-§);
               if(§<!2§.§ !p§)
               {
                  §25§.§%!<§(§'s§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §25§.§%!<§(§'s§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §9J§(param1:Number) : void
      {
         this.§do § += param1;
         if(this.§do § > 0)
         {
            ++this.§4!-§;
         }
      }
      
      private function §;$§() : void
      {
         this.§do § = §6k§;
         this.§4!-§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§]$§)
         {
            §^!h§.§=D§(mUIView,true);
            this.§]$§ = false;
         }
         if(§^!h§.§=!R§)
         {
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.enableLoginButton(false);
            sHighscoreSidebar.enableLogOutButton(false);
            return § !"§.STATE_STATUS_RUNNING;
         }
         if(§^!j§.§ &§())
         {
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.run(param1);
            return § !"§.STATE_STATUS_RUNNING;
         }
         if(§=!@§.§>!T§.slingshot.§^!@§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         if(!§=!@§.§>!T§.objects.isPigsAlive())
         {
            _loc3_ = 1;
            while(_loc3_ < 5)
            {
               mUIView.getItemByName("Button_PowerUp" + _loc3_.toString()).setEnabled(false);
               _loc3_++;
            }
            this.§#q§.§1W§();
            mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         }
         this.§#q§.run(param1);
         §8!]§.§'!S§.update(param1);
         this.§@!'§(param1);
         if(mNextState == §;!J§.§4D§ && this.§4!D§())
         {
            return § !"§.STATE_STATUS_COMPLETED;
         }
         if(mNextState.length > 0 && this.§4!D§())
         {
            if(this.§>D§)
            {
               this.§>D§.dispose();
            }
            this.§]!e§ = true;
            return § !"§.STATE_STATUS_COMPLETED;
         }
         if(mNextState == §=!J§.§4D§)
         {
            if(this.§>D§)
            {
               this.§>D§.dispose();
            }
            this.§]!e§ = true;
            return § !"§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§9J§(param1);
         this.§6!W§();
         if(!this.§9!N§ && !§=!@§.§>!T§.slingshot.birdsAvailable)
         {
            this.§#q§.§?y§("POWERUP1",false);
            this.§#q§.§?y§("POWERUP2",false);
            this.§#q§.§?y§("POWERUP3",false);
         }
         if(!this.§9!N§ && §=!@§.§>!T§.slingshot.mSlingShotState == §0U§.§>!1§)
         {
            this.§>_§(this.§#q§.§ u§);
            this.§#q§.§1W§();
         }
         return § !"§.STATE_STATUS_RUNNING;
      }
      
      protected function §4!D§() : Boolean
      {
         return !(§=!@§.§>!T§ as §-!V§).§!s§.§^!g§ && this.§]!e§;
      }
      
      private function §,!O§(param1:Number) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §[f§).§['§ == true)
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §[f§).§<@§(param1);
            }
            _loc2_++;
         }
         _loc2_ = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §[f§).§<-§() == "End")
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §[f§).§['§ = false;
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §[f§).§9!@§("End");
            }
            _loc2_++;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§!!^§.§use§(§3!5§.§-!2§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§3!%§);
         }
         else
         {
            sHighscoreSidebar.selectedLevelName = §3!5§.§-!2§;
            sHighscoreSidebar.changeState(HighscoreSidebar.§=j§);
         }
         mUIView.getItemByName("Container_HiscoreContainer").y = 0;
         if(§'j§.§%g§.§"!W§)
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
         if(§!!^§.§use§(§3!5§.§-!2§))
         {
            this.§]!e§ = true;
         }
         else if(!this.§>D§)
         {
            this.§]!e§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = §3!5§.§-!2§;
            _loc3_ = §!!^§.§2!9§(§3!5§.§-!2§);
            _loc4_ = §"5§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §25§.§%!<§(§'s§.§<!K§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §#!`§.§[p§();
            _loc3_.gamePlay = §=!@§.§>!T§.§6!S§().toString();
            _loc3_.userId = §!!^§.§2n§.id;
            _loc3_.security = §1H§.§!8§(_loc3_);
            (_loc6_ = new Object()).id = §!!^§.§2n§.id;
            _loc6_.security = §!!^§.§2n§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§>D§ = new §1H§(_loc7_,§'j§.§2H§ + _loc1_,this,§1H§.§`P§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §;!J§.§4D§;
      }
      
      override public function getLoserState() : String
      {
         return §=!J§.§4D§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§^!h§.§=!R§ && !§^!j§.§ &§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §,b§.§1i§();
                  mNextState = §,b§.§4D§;
                  break;
               case Keyboard.D:
                  if(§'j§.§>!%§)
                  {
                     if(§=!@§.§>!T§.mLevelEngine.§?!G§)
                     {
                        §=!@§.§>!T§.mLevelEngine.§%]§();
                     }
                     §=!@§.§>!T§.mLevelEngine.§?!G§ = !§=!@§.§>!T§.mLevelEngine.§?!G§;
                     break;
                  }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§=!@§.§>!T§.slingshot.mDragging)
            {
               §=!@§.§>!T§.slingshot.shoot();
               §"5§.changeGameState(§!p§.§6!&§);
               return;
            }
            §=!@§.§>!T§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §^!h§.§9!e§();
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §%K§.§9!e§();
               break;
            case "PAUSE":
               §^!j§.§;!R§(mUIView);
               break;
            case "RESTART_LEVEL":
               §,b§.§1i§();
               mNextState = §,b§.§4D§;
               if(this.§>D§)
               {
                  this.§>D§.dispose();
               }
               this.§]!e§ = true;
               break;
            case "ZOOM_IN":
               this.§9!i§ = §^F§;
               this.§"4§ = §"g§;
               break;
            case "ZOOM_OUT":
               this.§9!i§ = -§^F§;
               this.§"4§ = §"g§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§9!i§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§9!i§ = 0;
               break;
            case "POWERUP_OPEN":
               if(!this.§#q§.§ u§)
               {
                  mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§#q§.§?$§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
               this.§#q§.§;o§ = this.§#q§.§4-§(param2);
               if(!this.§#q§.§;o§)
               {
                  mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§1#§();
                  break;
               }
         }
      }
      
      private function §@!'§(param1:Number) : void
      {
         if(this.§9!i§)
         {
            this.§"4§ += param1;
            if(this.§"4§ > §"g§)
            {
               §"5§.doUserZoom(true,this.§9!i§);
               this.§"4§ = 0;
            }
         }
      }
      
      override protected function loginButtonClicked() : void
      {
         §^!j§.§0t§(mUIView);
      }
      
      private function §6!W§() : void
      {
         var _loc1_:int = §"5§.getScore();
         mUIView.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §'j§.§%g§.§?K§(§3!5§.§-!2§);
         mUIView.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§]!e§ = true;
         var _loc2_:Object = §[!K§.§,!j§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §1H§.§@!F§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §-!a§.§2!7§ = true;
            §'j§.§%g§ = new §%!^§("");
            §!!^§.§,!a§ = new §?![§();
            §!!^§.levelProfile = [];
            §^!j§.§>7§(mUIView);
            §%0§.sHighscoreSidebar.reset();
            return;
         }
         §!!^§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §'j§.§%g§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §!!^§.levelProfile = _loc2_.levelProfile;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§3!5§.§-!2§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§3!5§.§-!2§).clearReloadTimer();
            }
         }
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
         §^!j§.§>7§(mUIView);
      }
      
      private function § do§(param1:§^!^§) : void
      {
         if(param1)
         {
            param1.§1Y§();
         }
      }
   }
}
