package §[,§
{
   import §!a§.§&6§;
   import §!v§.§7[§;
   import §#!+§.§"$§;
   import §#!+§.§?V§;
   import §#!T§.§&2§;
   import §#;§.§42§;
   import §'z§.§3?§;
   import §'z§.§super§;
   import §+!J§.;
   import §+!J§.§&7§;
   import §-!V§.§'J§;
   import §0!&§.§@=§;
   import §0;§.§%"§;
   import §0;§.§]U§;
   import §1!J§.§'@§;
   import §1!J§.§6Y§;
   import §1!J§.§>!Q§;
   import §2!D§.§&9§;
   import §2z§.§@!N§;
   import §2z§.§^!8§;
   import §3!^§.§<!O§;
   import §7b§.§[7§;
   import §9!?§.§#!=§;
   import §9!?§.§%t§;
   import §;!0§.§"[§;
   import §;!0§.§4!I§;
   import §]b§.§'!O§;
   import §^3§.§1K§;
   import §`V§.HighscoreSidebar;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §,A§ implements §>!Q§
   {
      
      public static const §+Z§:String = "StatePlay";
      
      private static const §;!_§:Number = -10 * 1000;
      
      private static const §<!'§:Number = 15 * 1000;
      
      private static const §#@§:Number = 15 * 1000;
      
      private static const §8! §:Number = 50;
      
      private static const §=G§:Number = 0.05;
       
      
      private var §?§:Number = 0;
      
      private var §9!%§:Boolean = true;
      
      private var §=!X§:Boolean = false;
      
      private var §#!G§:Number = -10000.0;
      
      private var §&4§:int = 0;
      
      private var §'!f§:Boolean = true;
      
      private var §[!§:Boolean = false;
      
      private var §7!D§:§<!O§ = null;
      
      private var §`!7§:§&9§ = null;
      
      private var §0>§:Number = 0;
      
      private var §]O§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[L§ = new §"$§(this);
         §[L§.init(§?V§.§-2§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§?§ <= 0)
         {
            §1K§.§%f§("onLevelStart");
            this.§?§ = §#@§;
         }
         §42§.§<!_§();
         §#!=§.§^!4§(§%t§.§;?§,§@=§.§!!S§);
         §2!S§.§'!5§.§]!>§.§^!4§(§'@§.§>!!§);
         §42§.§;!`§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§'!f§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[L§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§@!C§();
         this.§]<§();
      }
      
      override public function deActivate() : void
      {
         if(this.§`!7§ != null)
         {
            this.§`!7§.§+!c§();
            this.§`!7§ = null;
         }
         super.deActivate();
         this.§-!!§();
         this.§]<§();
         if(this.§7!D§)
         {
            this.§7!D§.dispose();
            this.§7!D§ = null;
         }
         §2!S§.§'!5§.§]!>§.§<0§();
      }
      
      private function §-!!§() : void
      {
         var _loc1_:int = 0;
         if(!this.§=!X§)
         {
            if(this.§#!G§ > §<!'§)
            {
               this.§=!X§ = true;
               _loc1_ = Math.round(1000 / this.§#!G§ * this.§&4§);
               if(§7[§.§7c§)
               {
                  §#!=§.§^!4§(§%t§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §#!=§.§^!4§(§%t§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §5J§(param1:Number) : void
      {
         this.§#!G§ += param1;
         if(this.§#!G§ > 0)
         {
            ++this.§&4§;
         }
      }
      
      private function §]<§() : void
      {
         this.§#!G§ = §;!_§;
         this.§&4§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§&9§ = null;
         if(this.§?§ > 0)
         {
            this.§?§ -= param1;
         }
         if(this.§'!f§)
         {
            §super§.§3!N§(§[L§,true);
            this.§'!f§ = false;
         }
         if(§super§.§6!U§ || §3?§.§3!;§())
         {
            if(this.§`!7§ && !this.§`!7§.isCompleted)
            {
               this.§`!7§.§"!J§();
            }
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            return §&6§.STATE_STATUS_RUNNING;
         }
         if(§&2§.§4!1§.slingshot.§6E§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         this.§8z§(param1);
         if(this.§[!§)
         {
            (§&2§.§4!1§ as §&7§).§3!-§();
            _loc3_ = ((§&2§.§4!1§ as §&7§).slingshot as §#7§).§1!K§();
            if(_loc3_ != null)
            {
               this.§`!7§ = _loc3_;
            }
            this.§[!§ = false;
            §super§.§3!N§(§[L§,true);
         }
         else if(this.§`!7§)
         {
            this.§`!7§.play();
         }
         if(mNextState == §]=§.§+Z§ && this.§7!D§ && this.§7!D§.§3!7§)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         if(!this.§7!D§ && mNextState.length > 0)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§5J§(param1);
         this.§@!C§();
         if(!§&2§.§4!1§.objects.isPigsAlive())
         {
            this.§4I§(false);
         }
         else if((§&2§.§4!1§.slingshot.mSlingShotState == §@!N§.STATE_BIRD_IS_READY || §&2§.§4!1§.slingshot.§^i§() && §&2§.§4!1§.slingshot.mSlingShotState == §@!N§.§8!?§) && !((§&2§.§4!1§ as §&7§).slingshot as §#7§).§=j§)
         {
            this.§4I§(true);
         }
         else
         {
            this.§4I§(false);
         }
         if(§&2§.§4!1§.slingshot.mSlingShotState == §@!N§.§5!b§)
         {
            (§&2§.§4!1§.slingshot as §#7§).§9!K§();
         }
         return §&6§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §@=§.§!!S§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§2§);
         §[L§.getItemByName("Container_HiscoreContainer").y = 0;
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
         if(!this.§7!D§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §@=§.§!!S§;
            _loc3_ = §]U§.§3!+§(§@=§.§!!S§);
            _loc4_ = §+1§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §#!=§.§^!4§(§%t§.§5!B§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §^!8§.§;!4§();
            _loc3_.gamePlay = §&2§.§4!1§.§^X§().toString();
            _loc3_.userId = §]U§.§`a§.id;
            _loc3_.security = §<!O§.§]!6§(_loc3_);
            (_loc6_ = new Object()).id = §]U§.§`a§.id;
            _loc6_.security = §]U§.§`a§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§7!D§ = new §<!O§(_loc7_,§2!S§.§1,§ + _loc1_,this,§<!O§.§#e§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §]=§.§+Z§;
      }
      
      override public function getLoserState() : String
      {
         return §;!b§.§+Z§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§super§.§6!U§ && !§3?§.§3!;§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §4!M§.§>5§();
                  mNextState = §4!M§.§+Z§;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§&2§.§4!1§.slingshot.mDragging)
            {
               §&2§.§4!1§.slingshot.shoot();
               §+1§.changeGameState(§[7§.§1D§);
               return;
            }
            §&2§.§4!1§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §super§.§<1§();
               break;
            case "PAUSE":
               §3?§.§&A§(§[L§);
               break;
            case "RESTART_LEVEL":
               §4!M§.§>5§();
               mNextState = §4!M§.§+Z§;
               break;
            case "POWERUP_USE":
               if(§2!S§.§<P§.§'Q§)
               {
                  this.§[!§ = true;
               }
               else
               {
                  §3?§.§?!=§(§[L§);
               }
               break;
            case "ZOOM_IN":
               this.§0>§ = §=G§;
               this.§]O§ = §8! §;
               break;
            case "ZOOM_OUT":
               this.§0>§ = -§=G§;
               this.§]O§ = §8! §;
               break;
            case "ZOOM_IN_RELEASE":
               this.§0>§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§0>§ = 0;
         }
      }
      
      private function §8z§(param1:Number) : void
      {
         if(this.§0>§)
         {
            this.§]O§ += param1;
            if(this.§]O§ > §8! §)
            {
               §+1§.doUserZoom(true,this.§0>§);
               this.§]O§ = 0;
            }
         }
      }
      
      private function §@!C§() : void
      {
         var _loc1_:int = §+1§.getScore();
         §[L§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §2!S§.§<P§.§1!_§(§@=§.§!!S§);
         §[L§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §6Y§.static((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §<!O§.§#!5§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §3!<§.§7!7§ = true;
            §2!S§.§<P§ = new §%"§("");
            §]U§.§-v§ = new §'!O§();
            §&2§.§"!J§();
            §&2§.§4!1§.§5h§(false);
            §&2§.§4!1§.§-H§(false);
            §4!M§.§!`§ = §3!<§.§+Z§;
            §@=§.§-!Q§(§@=§.§%^§(HighscoreSidebar.§0!I§));
            §2!S§.§'!5§.§@z§(§4!M§.§+Z§);
            §<!Y§.sHighscoreSidebar.reset();
         }
         §]U§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §2!S§.§<P§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §]U§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.powerUp != undefined)
         {
            §2!S§.§<P§.§'Q§ = _loc2_.powerUp;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§@=§.§!!S§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§@=§.§!!S§).clearReloadTimer();
            }
            if(_loc2_.isOverallHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(HighscoreSidebar.§[!Z§).clearReloadTimer();
            }
         }
      }
      
      public function §4I§(param1:Boolean = true) : void
      {
         var _loc2_:§'J§ = §[L§.getItemByName("Button_PowerUp") as §'J§;
         if(param1)
         {
            _loc2_.setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§"[§.§"f§);
         }
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §;T§() : Boolean
      {
         return this.§[!§;
      }
      
      public function set §;T§(param1:Boolean) : void
      {
         this.§[!§ = param1;
      }
   }
}
