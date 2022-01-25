package §,H§
{
   import §%!c§.§@2§;
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §'!^§.§!!H§;
   import §'!^§.§+4§;
   import §+!6§.HighscoreSidebar;
   import §+n§.§+'§;
   import §+n§.§0l§;
   import §+n§.§<`§;
   import §2!G§.§%!&§;
   import §3U§.§2!%§;
   import §7!H§.§12§;
   import §8!<§.§#u§;
   import §9]§.§9J§;
   import §;A§.§7!K§;
   import §=!#§.§4i§;
   import §=!#§.§^!>§;
   import §=!<§.§%P§;
   import §=L§.§@E§;
   import §@W§.§2!_§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §"Y§ implements §0l§
   {
      
      public static const §^!O§:String = "StatePlay";
      
      private static const §,=§:Number = -10 * 1000;
      
      private static const §3,§:Number = 15 * 1000;
       
      
      private var §6M§:Boolean = true;
      
      private var §!%§:Boolean = false;
      
      private var §^!=§:Number = -10000.0;
      
      private var §;5§:int = 0;
      
      private var §+3§:Boolean = true;
      
      private var §-+§:§%P§ = null;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §@E§.§>!^§();
         §!!H§.§?!O§(§+4§.§63§,§2!%§.§<G§);
         §6T§.§!Z§.§"`§.§?!O§(§+'§.§5!+§);
         §@E§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §6T§.§>c§.§!!F§();
         this.§+3§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!I§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§6"§();
         this.§+8§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4!`§();
         this.§+8§();
         if(this.§-+§)
         {
            this.§-+§.dispose();
            this.§-+§ = null;
         }
         §6T§.§!Z§.§"`§.§!!7§();
      }
      
      private function §4!`§() : void
      {
         var _loc1_:int = 0;
         if(!this.§!%§)
         {
            if(this.§^!=§ > §3,§)
            {
               this.§!%§ = true;
               _loc1_ = Math.round(1000 / this.§^!=§ * this.§;5§);
               if(§9J§.§=n§)
               {
                  §!!H§.§?!O§(§+4§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §!!H§.§?!O§(§+4§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §?0§(param1:Number) : void
      {
         this.§^!=§ += param1;
         if(this.§^!=§ > 0)
         {
            ++this.§;5§;
         }
      }
      
      private function §+8§() : void
      {
         this.§^!=§ = §,=§;
         this.§;5§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§+3§)
         {
            §^!>§.§>U§(§=!I§);
            this.§+3§ = false;
         }
         if(§^!>§.isOpen || §4i§.§=B§())
         {
            §+D§.run(param1);
            §+D§.enableHelpButton(false);
            return §2!_§.STATE_STATUS_RUNNING;
         }
         if(§7!K§.§=j§.slingshot.§<K§.length == 0)
         {
            §+D§.enableHelpButton(false);
         }
         else
         {
            §+D§.enableHelpButton(true);
         }
         if(mNextState == § P§.§^!O§ && this.§-+§ && this.§-+§.§6!;§)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         if(!this.§-+§ && mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?0§(param1);
         this.§6"§();
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         if(§2!%§.§[!=§ == 0)
         {
            §+D§.changeState(HighscoreSidebar.§=!"§);
            §=!I§.getItemByName("Container_HiscoreContainer").y = 0;
         }
         else
         {
            §+D§.selectedLevelName = §2!%§.§<G§;
            §+D§.changeState(HighscoreSidebar.§'B§);
            §=!I§.getItemByName("Container_HiscoreContainer").y = -35;
            (§=!I§.getItemByName("TextField_Level_Num") as §#u§).§=J§.text = "" + §2!%§.§<G§.substring(2);
         }
         §+D§.enableLogOutButton(true);
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
         if(!this.§-+§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §2!%§.§<G§;
            _loc3_ = §@2§.§#U§(§2!%§.§<G§);
            _loc4_ = §5§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §!!H§.§?!O§(§+4§.§#m§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §%!&§.§[?§();
            _loc3_.gamePlay = §7!K§.§=j§.§=!E§().toString();
            _loc3_.security = §%P§.§>l§(_loc3_,§2!%§.§[!=§ != 0);
            _loc6_ = §@2§.§]!$§;
            if(§2!_§.getApplicationParameter("participantId") != null)
            {
               _loc6_.participantId = §2!_§.getApplicationParameter("participantId");
            }
            if(§2!_§.getApplicationParameter("siteId") != null)
            {
               _loc6_.siteId = §2!_§.getApplicationParameter("siteId");
            }
            _loc7_ = {
               "type":_loc1_,
               "player":_loc6_,
               "levelProfile":_loc3_,
               "competition":§@2§.competition,
               "beats":§6T§.§>c§.§^!b§()
            };
            this.§-+§ = new §%P§(_loc7_,§6T§.§&H§ + _loc1_,this,§%P§.§]!J§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return § P§.§^!O§;
      }
      
      override public function getLoserState() : String
      {
         return §+!+§.§^!O§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§^!>§.isOpen && !§4i§.§=B§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §5d§.§=O§();
                  mNextState = §5d§.§^!O§;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §^!>§.§++§();
               break;
            case "PAUSE":
               §4i§.§@!]§(§=!I§);
               break;
            case "RESTART_LEVEL":
               §5d§.§=O§();
               mNextState = §5d§.§^!O§;
               break;
            case "ZOOM_IN":
               §5§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §5§.doUserZoom(false);
         }
      }
      
      private function §6"§() : void
      {
         var _loc1_:int = §5§.getScore();
         §=!I§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §6T§.§>c§.§3o§(§2!%§.§<G§);
         §=!I§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §<`§.§48§((param1.currentTarget as URLLoader).data);
         if(_loc2_.beats != undefined)
         {
            §6T§.§>c§.§4!5§ = _loc2_.beats as int;
         }
         if(_loc2_.communityBeats != undefined)
         {
            §6T§.§>c§.§,j§ = _loc2_.communityBeats as int;
            §+D§.renderCollectedBeats();
         }
         if(_loc2_.levelProfile != undefined)
         {
            §@2§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.competition != undefined)
         {
            §@2§.competition = _loc2_.competition;
            §+D§.clearReloadTimers();
            §@2§.§<!#§();
         }
         if(§+D§.getScoreLoaderById(§2!%§.§<G§))
         {
            if(_loc2_.isHighScore)
            {
               §+D§.getScoreLoaderById(§2!%§.§<G§).clearReloadTimer();
            }
            if(_loc2_.isTopCollector)
            {
               §+D§.getScoreLoaderById(HighscoreSidebar.§`!0§).clearReloadTimer();
            }
         }
      }
      
      public function §9!%§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=p§(param1:IOErrorEvent) : void
      {
      }
   }
}
