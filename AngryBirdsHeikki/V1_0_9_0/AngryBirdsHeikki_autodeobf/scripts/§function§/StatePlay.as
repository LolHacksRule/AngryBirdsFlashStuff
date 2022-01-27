package §function§
{
   import § d§.§3§;
   import § d§.§]!_§;
   import §#Q§.§8#§;
   import §#Q§.§8Y§;
   import §%i§.§#`§;
   import §&!6§.§5r§;
   import §,F§.§4!N§;
   import §,F§.§=x§;
   import §1Q§.§'!`§;
   import §1Q§.§4p§;
   import §1y§.§&!B§;
   import §3r§.§2!G§;
   import §3r§.§@M§;
   import §44§.§#Z§;
   import §44§.§,!M§;
   import §4M§.HighscoreSidebar;
   import §4V§.§=!=§;
   import §4V§.§@!Y§;
   import §4V§.§true §;
   import §5!O§.§%!O§;
   import §8! §.§#z§;
   import §8!-§.§1R§;
   import §8A§.§`]§;
   import §<<§.§%n§;
   import §>!F§.§9!Z§;
   import §@!]§.§&!!§;
   import §^E§.§1!A§;
   import §^E§.§9!Q§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   import §for§.§0!d§;
   
   public class StatePlay extends §24§ implements §@!Y§
   {
      
      public static const §94§:String = "StatePlay";
      
      private static const §'%§:Number = -10 * 1000;
      
      private static const §=!G§:Number = 15 * 1000;
      
      private static const §5!_§:Number = 15 * 1000;
      
      private static const §[v§:Number = 50;
      
      private static const §[`§:Number = 0.05;
       
      
      private var §>U§:Number = 0;
      
      private var §=U§:Boolean = true;
      
      private var §-!L§:Boolean = false;
      
      private var §;u§:Number = -10000.0;
      
      private var §'!8§:int = 0;
      
      private var §!@§:Boolean = true;
      
      private var §+4§:Boolean = false;
      
      private var §5!%§:§%!O§ = null;
      
      private var §`!0§:§1R§ = null;
      
      private var §4v§:Number = 0;
      
      private var §"!Z§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §@K§ = new §8Y§(this);
         §@K§.init(§8#§.§6K§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§>U§ <= 0)
         {
            §0!d§.§%z§("onLevelStart");
            this.§>U§ = §5!_§;
         }
         §#`§.§2!5§();
         §@M§.§"6§(§2!G§.§+m§,§#z§.§@k§);
         §"H§.§>R§.§><§.§"6§(§true §.§]F§);
         §#`§.§2o§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§!@§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §@K§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§&w§();
         this.§;9§();
      }
      
      override public function deActivate() : void
      {
         if(this.§`!0§ != null)
         {
            this.§`!0§.§4!A§();
            this.§`!0§ = null;
         }
         super.deActivate();
         this.§5^§();
         this.§;9§();
         if(this.§5!%§)
         {
            this.§5!%§.dispose();
            this.§5!%§ = null;
         }
         §"H§.§>R§.§><§.§?D§();
      }
      
      private function §5^§() : void
      {
         var _loc1_:int = 0;
         if(!this.§-!L§)
         {
            if(this.§;u§ > §=!G§)
            {
               this.§-!L§ = true;
               _loc1_ = Math.round(1000 / this.§;u§ * this.§'!8§);
               if(§&!B§.§&!F§)
               {
                  §@M§.§"6§(§2!G§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §@M§.§"6§(§2!G§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §3!f§(param1:Number) : void
      {
         this.§;u§ += param1;
         if(this.§;u§ > 0)
         {
            ++this.§'!8§;
         }
      }
      
      private function §;9§() : void
      {
         this.§;u§ = §'%§;
         this.§'!8§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§1R§ = null;
         if(this.§>U§ > 0)
         {
            this.§>U§ -= param1;
         }
         if(this.§!@§)
         {
            §#Z§.§53§(§@K§,true);
            this.§!@§ = false;
         }
         if(§#Z§.§+!>§ || §,!M§.§%![§())
         {
            if(this.§`!0§ && !this.§`!0§.isCompleted)
            {
               this.§`!0§.§0!G§();
            }
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            return §5r§.STATE_STATUS_RUNNING;
         }
         if(§9!Z§.§5!$§.slingshot.§3!R§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         this.§1!P§(param1);
         if(this.§+4§)
         {
            (§9!Z§.§5!$§ as §4!N§).§'Z§();
            _loc3_ = ((§9!Z§.§5!$§ as §4!N§).slingshot as §=x§).§]+§();
            if(_loc3_ != null)
            {
               this.§`!0§ = _loc3_;
            }
            this.§+4§ = false;
            §#Z§.§53§(§@K§,true);
         }
         else if(this.§`!0§)
         {
            this.§`!0§.play();
         }
         if(mNextState == §1!0§.§94§ && this.§5!%§ && this.§5!%§.§4! §)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         if(!this.§5!%§ && mNextState.length > 0)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§3!f§(param1);
         this.§&w§();
         if(!§9!Z§.§5!$§.objects.isPigsAlive())
         {
            this.§?<§(false);
         }
         else if((§9!Z§.§5!$§.slingshot.mSlingShotState == §3§.STATE_BIRD_IS_READY || §9!Z§.§5!$§.slingshot.§0J§() && §9!Z§.§5!$§.slingshot.mSlingShotState == §3§.§5m§) && !((§9!Z§.§5!$§ as §4!N§).slingshot as §=x§).§7!Y§)
         {
            this.§?<§(true);
         }
         else
         {
            this.§?<§(false);
         }
         if(§9!Z§.§5!$§.slingshot.mSlingShotState == §3§.§@%§)
         {
            (§9!Z§.§5!$§.slingshot as §=x§).§1!%§();
         }
         return §5r§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §#z§.§@k§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§'o§);
         §@K§.getItemByName("Container_HiscoreContainer").y = 0;
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
         if(!this.§5!%§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §#z§.§@k§;
            _loc3_ = §9!Q§.§`!&§(§#z§.§@k§);
            _loc4_ = §8!8§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §@M§.§"6§(§2!G§.§%!Q§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §]!_§.§7!]§();
            _loc3_.gamePlay = §9!Z§.§5!$§.§3C§().toString();
            _loc3_.userId = §9!Q§.§4u§.id;
            _loc3_.security = §%!O§.§+y§(_loc3_);
            (_loc6_ = new Object()).id = §9!Q§.§4u§.id;
            _loc6_.security = §9!Q§.§4u§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§5!%§ = new §%!O§(_loc7_,§"H§.§4O§ + _loc1_,this,§%!O§.§4!-§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §1!0§.§94§;
      }
      
      override public function getLoserState() : String
      {
         return §-<§.§94§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§#Z§.§+!>§ && !§,!M§.§%![§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §8E§.§1$§();
                  mNextState = §8E§.§94§;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§9!Z§.§5!$§.slingshot.mDragging)
            {
               §9!Z§.§5!$§.slingshot.shoot();
               §8!8§.changeGameState(§%n§.§'!-§);
               return;
            }
            §9!Z§.§5!$§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §#Z§.§"!U§();
               break;
            case "PAUSE":
               §,!M§.§<!W§(§@K§);
               break;
            case "RESTART_LEVEL":
               §8E§.§1$§();
               mNextState = §8E§.§94§;
               break;
            case "POWERUP_USE":
               if(§"H§.§""§.§?@§)
               {
                  this.§+4§ = true;
               }
               else
               {
                  §,!M§.§9Y§(§@K§);
               }
               break;
            case "ZOOM_IN":
               this.§4v§ = §[`§;
               this.§"!Z§ = §[v§;
               break;
            case "ZOOM_OUT":
               this.§4v§ = -§[`§;
               this.§"!Z§ = §[v§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§4v§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§4v§ = 0;
         }
      }
      
      private function §1!P§(param1:Number) : void
      {
         if(this.§4v§)
         {
            this.§"!Z§ += param1;
            if(this.§"!Z§ > §[v§)
            {
               §8!8§.doUserZoom(true,this.§4v§);
               this.§"!Z§ = 0;
            }
         }
      }
      
      private function §&w§() : void
      {
         var _loc1_:int = §8!8§.getScore();
         §@K§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §"H§.§""§.§5!D§(§#z§.§@k§);
         §@K§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §=!=§.§=!a§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §%!O§.§,t§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §'"§.§+!a§ = true;
            §"H§.§""§ = new §1!A§("");
            §9!Q§.§`!$§ = new §`]§();
            §9!Z§.§0!G§();
            §9!Z§.§5!$§.§8t§(false);
            §9!Z§.§5!$§.§5!=§(false);
            §8E§.§8c§ = §'"§.§94§;
            §#z§.§[6§(§#z§.§8F§(HighscoreSidebar.§ null§));
            §"H§.§>R§.§<'§(§8E§.§94§);
            §1!@§.sHighscoreSidebar.reset();
         }
         §9!Q§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §"H§.§""§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §9!Q§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.powerUp != undefined)
         {
            §"H§.§""§.§?@§ = _loc2_.powerUp;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§#z§.§@k§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§#z§.§@k§).clearReloadTimer();
            }
            if(_loc2_.isOverallHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(HighscoreSidebar.§6!_§).clearReloadTimer();
            }
         }
      }
      
      public function §?<§(param1:Boolean = true) : void
      {
         var _loc2_:§&!!§ = §@K§.getItemByName("Button_PowerUp") as §&!!§;
         if(param1)
         {
            _loc2_.setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§4p§.§9L§);
         }
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §;!5§() : Boolean
      {
         return this.§+4§;
      }
      
      public function set §;!5§(param1:Boolean) : void
      {
         this.§+4§ = param1;
      }
   }
}
