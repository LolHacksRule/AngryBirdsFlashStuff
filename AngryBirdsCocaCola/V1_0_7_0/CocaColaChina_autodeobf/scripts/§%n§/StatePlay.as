package §%n§
{
   import § F§.§3!&§;
   import §!E§.§,!B§;
   import §%!G§.§ !G§;
   import §%!G§.§-h§;
   import §'4§.§0!D§;
   import §'4§.§@;§;
   import §-X§.§2&§;
   import §-v§.§,!1§;
   import §1"§.HighscoreSidebar;
   import §2!$§.§<!%§;
   import §4A§.§-!3§;
   import §6!@§.§ !!§;
   import §7m§.§7I§;
   import §87§.§ C§;
   import §87§.§+Q§;
   import §87§.§?z§;
   import §9I§.§"!G§;
   import §9I§.§]!^§;
   import §?k§.§[n§;
   import §^!5§.§+^§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §3,§ implements § C§
   {
      
      public static const §^6§:String = "StatePlay";
      
      private static const §^!E§:Number = -10 * 1000;
      
      private static const §1!C§:Number = 15 * 1000;
       
      
      private var §?E§:Boolean = true;
      
      private var §;k§:Boolean = false;
      
      private var §?!c§:Number = -10000.0;
      
      private var §'!3§:int = 0;
      
      private var § `§:Boolean = true;
      
      private var §9_§:§[n§ = null;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!R§ = new § !G§(this);
         §5!R§.init(§-h§.§#z§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §7I§.§1!F§();
         §"!G§.§,U§(§]!^§.§0!B§,§2&§.§86§);
         §"!@§.§5!8§.§@!Y§.§,U§(§+Q§.§]o§);
         §7I§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §"!@§.§6!-§.§?!V§();
         this.§ `§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!R§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§<h§();
         this.§8]§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§"V§();
         this.§8]§();
         if(this.§9_§)
         {
            this.§9_§.dispose();
            this.§9_§ = null;
         }
         §"!@§.§5!8§.§@!Y§.§2a§();
      }
      
      private function §"V§() : void
      {
         var _loc1_:int = 0;
         if(!this.§;k§)
         {
            if(this.§?!c§ > §1!C§)
            {
               this.§;k§ = true;
               _loc1_ = Math.round(1000 / this.§?!c§ * this.§'!3§);
               if(§3!&§.§@$§)
               {
                  §"!G§.§,U§(§]!^§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §"!G§.§,U§(§]!^§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §@!`§(param1:Number) : void
      {
         this.§?!c§ += param1;
         if(this.§?!c§ > 0)
         {
            ++this.§'!3§;
         }
      }
      
      private function §8]§() : void
      {
         this.§?!c§ = §^!E§;
         this.§'!3§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§ `§)
         {
            §@;§.§^5§(§5!R§);
            this.§ `§ = false;
         }
         if(§@;§.isOpen || §0!D§.§1@§())
         {
            §'! §.run(param1);
            §'! §.enableHelpButton(false);
            return § !!§.STATE_STATUS_RUNNING;
         }
         if(§,!1§.§2T§.slingshot.§6e§.length == 0)
         {
            §'! §.enableHelpButton(false);
         }
         else
         {
            §'! §.enableHelpButton(true);
         }
         if(mNextState == §^%§.§^6§ && this.§9_§ && this.§9_§.§=!U§)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         if(!this.§9_§ && mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@!`§(param1);
         this.§<h§();
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         if(§2&§.§6q§ == 0)
         {
            §'! §.changeState(HighscoreSidebar.§`<§);
            §5!R§.getItemByName("Container_HiscoreContainer").y = 0;
         }
         else
         {
            §'! §.selectedLevelName = §2&§.§86§;
            §'! §.changeState(HighscoreSidebar.§"!`§);
            §5!R§.getItemByName("Container_HiscoreContainer").y = -35;
            (§5!R§.getItemByName("TextField_Level_Num") as §,!B§).§&J§.text = "" + §2&§.§86§.substring(2);
         }
         §'! §.enableLogOutButton(true);
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
         if(!this.§9_§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §2&§.§86§;
            _loc3_ = §+^§.§]Y§(§2&§.§86§);
            _loc4_ = §^!=§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §"!G§.§,U§(§]!^§.§<!#§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §-!3§.§6d§();
            _loc3_.gamePlay = §,!1§.§2T§.§-n§().toString();
            _loc3_.security = §[n§.§#D§(_loc3_,§2&§.§6q§ != 0);
            _loc6_ = §+^§.§%!§;
            if(§ !!§.getApplicationParameter("participantId") != null)
            {
               _loc6_.participantId = § !!§.getApplicationParameter("participantId");
            }
            if(§ !!§.getApplicationParameter("siteId") != null)
            {
               _loc6_.siteId = § !!§.getApplicationParameter("siteId");
            }
            _loc7_ = {
               "type":_loc1_,
               "player":_loc6_,
               "levelProfile":_loc3_,
               "competition":§+^§.competition,
               "beats":§"!@§.§6!-§.§+L§()
            };
            this.§9_§ = new §[n§(_loc7_,§"!@§.§ !d§ + _loc1_,this,§[n§.§,!b§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §^%§.§^6§;
      }
      
      override public function getLoserState() : String
      {
         return §]!>§.§^6§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§@;§.isOpen && !§0!D§.§1@§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §4-§.§[^§();
                  mNextState = §4-§.§^6§;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §@;§.§,S§();
               break;
            case "PAUSE":
               §0!D§.§6!a§(§5!R§);
               break;
            case "RESTART_LEVEL":
               §4-§.§[^§();
               mNextState = §4-§.§^6§;
               break;
            case "ZOOM_IN":
               §^!=§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §^!=§.doUserZoom(false);
         }
      }
      
      private function §<h§() : void
      {
         var _loc1_:int = §^!=§.getScore();
         §5!R§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §"!@§.§6!-§.§=o§(§2&§.§86§);
         §5!R§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §?z§.§>7§((param1.currentTarget as URLLoader).data);
         if(_loc2_.beats != undefined)
         {
            §"!@§.§6!-§.§@!L§ = _loc2_.beats as int;
         }
         if(_loc2_.communityBeats != undefined)
         {
            §"!@§.§6!-§.§ !^§ = _loc2_.communityBeats as int;
            §'! §.renderCollectedBeats();
         }
         if(_loc2_.levelProfile != undefined)
         {
            §+^§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.competition != undefined)
         {
            §+^§.competition = _loc2_.competition;
            §'! §.clearReloadTimers();
            §+^§.§=!7§();
         }
         if(§'! §.getScoreLoaderById(§2&§.§86§))
         {
            if(_loc2_.isHighScore)
            {
               §'! §.getScoreLoaderById(§2&§.§86§).clearReloadTimer();
            }
            if(_loc2_.isTopCollector)
            {
               §'! §.getScoreLoaderById(HighscoreSidebar.§[!4§).clearReloadTimer();
            }
         }
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
      }
   }
}
