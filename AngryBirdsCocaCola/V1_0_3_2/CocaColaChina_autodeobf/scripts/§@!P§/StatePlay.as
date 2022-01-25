package §@!P§
{
   import § !9§.§'!U§;
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §'b§.§6!-§;
   import §+R§.§0O§;
   import §1!'§.HighscoreSidebar;
   import §5!?§.§&%§;
   import §6l§.§#!Z§;
   import §;C§.§+!M§;
   import §;C§.§9!P§;
   import §<o§.§#D§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   import §>P§.§"N§;
   import §>P§.§+!%§;
   import §^>§.§5b§;
   import §^>§.§<t§;
   import §`!7§.§[5§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §2!>§ implements §5b§
   {
      
      public static const §'2§:String = "StatePlay";
      
      private static const §9?§:Number = -10 * 1000;
      
      private static const §@!Q§:Number = 15 * 1000;
       
      
      private var §<i§:Boolean = true;
      
      private var §&!1§:Boolean = false;
      
      private var §=!$§:Number = -10000.0;
      
      private var §^!D§:int = 0;
      
      private var §8H§:Boolean = true;
      
      private var §-!8§:§#D§ = null;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §'!U§.§]P§();
         §"N§.§0o§(§+!%§.§5!8§,§9G§.§>>§);
         §'!U§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §=i§.§2S§.§0!$§();
         this.§8H§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §+!`§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§5H§();
         this.§3K§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§,?§();
         this.§3K§();
         if(this.§-!8§)
         {
            this.§-!8§.dispose();
            this.§-!8§ = null;
         }
      }
      
      private function §,?§() : void
      {
         var _loc1_:int = 0;
         if(!this.§&!1§)
         {
            if(this.§=!$§ > §@!Q§)
            {
               this.§&!1§ = true;
               _loc1_ = Math.round(1000 / this.§=!$§ * this.§^!D§);
               if(§0O§.§3Z§)
               {
                  §"N§.§0o§(§+!%§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §"N§.§0o§(§+!%§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §+!§(param1:Number) : void
      {
         this.§=!$§ += param1;
         if(this.§=!$§ > 0)
         {
            ++this.§^!D§;
         }
      }
      
      private function §3K§() : void
      {
         this.§=!$§ = §9?§;
         this.§^!D§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§8H§)
         {
            §9!P§.§4_§(§+!`§);
            this.§8H§ = false;
         }
         if(§9!P§.isOpen || §+!M§.§1!X§())
         {
            §@<§.run(param1);
            §@<§.enableHelpButton(false);
            return §&!R§.STATE_STATUS_RUNNING;
         }
         if(§"n§.§[b§.slingshot.§%X§.length == 0)
         {
            §@<§.enableHelpButton(false);
         }
         else
         {
            §@<§.enableHelpButton(true);
         }
         if(mNextState == §!x§.§'2§ && this.§-!8§ && this.§-!8§.§ !`§)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         if(!this.§-!8§ && mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+!§(param1);
         this.§5H§();
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         if(§9G§.§=!1§ == 0)
         {
            §@<§.changeState(HighscoreSidebar.§%A§);
            §+!`§.getItemByName("Container_HiscoreContainer").y = 0;
         }
         else
         {
            §@<§.selectedLevelName = §9G§.§>>§;
            §@<§.changeState(HighscoreSidebar.§3!2§);
            §+!`§.getItemByName("Container_HiscoreContainer").y = -35;
            (§+!`§.getItemByName("TextField_Level_Num") as §6!-§).§`!C§.text = "" + §9G§.§>>§.substring(2);
         }
         §@<§.enableLogOutButton(true);
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
         if(!this.§-!8§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §9G§.§>>§;
            _loc3_ = §[5§.§,Z§(§9G§.§>>§);
            _loc4_ = §0!]§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §"N§.§0o§(§+!%§.§`!S§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §&%§.§!!'§();
            _loc3_.gamePlay = §"n§.§[b§.§5!&§().toString();
            _loc3_.security = §#D§.§null§(_loc3_,§9G§.§=!1§ != 0);
            _loc6_ = §[5§.§[!N§;
            if(§&!R§.getApplicationParameter("participantId") != null)
            {
               _loc6_.participantId = §&!R§.getApplicationParameter("participantId");
            }
            if(§&!R§.getApplicationParameter("siteId") != null)
            {
               _loc6_.siteId = §&!R§.getApplicationParameter("siteId");
            }
            _loc7_ = {
               "type":_loc1_,
               "player":_loc6_,
               "levelProfile":_loc3_,
               "competition":§[5§.competition,
               "beats":§=i§.§2S§.§!!Q§()
            };
            this.§-!8§ = new §#D§(_loc7_,§=i§.§'<§ + _loc1_,this,§#D§.§ !a§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §!x§.§'2§;
      }
      
      override public function getLoserState() : String
      {
         return §?z§.§'2§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §'!-§.§^4§();
               mNextState = §'!-§.§'2§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §9!P§.§22§();
               break;
            case "PAUSE":
               §+!M§.§!m§(§+!`§);
               break;
            case "RESTART_LEVEL":
               §'!-§.§^4§();
               mNextState = §'!-§.§'2§;
               break;
            case "ZOOM_IN":
               §0!]§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §0!]§.doUserZoom(false);
         }
      }
      
      private function §5H§() : void
      {
         var _loc1_:int = §0!]§.getScore();
         §+!`§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §=i§.§2S§.§9!T§(§9G§.§>>§);
         §+!`§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §<t§.§1&§((param1.currentTarget as URLLoader).data);
         if(_loc2_.beats != undefined)
         {
            §=i§.§2S§.§'u§ = _loc2_.beats as int;
         }
         if(_loc2_.communityBeats != undefined)
         {
            §=i§.§2S§.§@c§ = _loc2_.communityBeats as int;
            §@<§.renderCollectedBeats();
         }
         if(_loc2_.levelProfile != undefined)
         {
            §[5§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.competition != undefined)
         {
            §[5§.competition = _loc2_.competition;
            §@<§.clearReloadTimers();
            §[5§.§=!I§();
         }
         if(§@<§.getScoreLoaderById(§9G§.§>>§))
         {
            if(_loc2_.isHighScore)
            {
               §@<§.getScoreLoaderById(§9G§.§>>§).clearReloadTimer();
            }
            if(_loc2_.isTopCollector)
            {
               §@<§.getScoreLoaderById(HighscoreSidebar.§7!I§).clearReloadTimer();
            }
         }
      }
      
      public function §5x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'1§(param1:IOErrorEvent) : void
      {
      }
   }
}
