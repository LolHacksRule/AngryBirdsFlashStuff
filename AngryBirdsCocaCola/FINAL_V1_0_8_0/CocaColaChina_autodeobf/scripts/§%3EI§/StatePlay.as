package §>I§
{
   import § !C§.§6!W§;
   import § ]§.HighscoreSidebar;
   import §!!4§.§8>§;
   import §%!^§.§"=§;
   import §&$§.§6g§;
   import §&$§.§6j§;
   import §&F§.§6K§;
   import §&V§.§9t§;
   import §+&§.§?y§;
   import §+x§.§-6§;
   import §-"§.§,_§;
   import §0!b§.§#!=§;
   import §68§.§9v§;
   import §9L§.§%"§;
   import §9L§.§?%§;
   import §9L§.§?9§;
   import §]n§.§9!-§;
   import §]n§.§=!O§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §7F§ implements §?%§
   {
      
      public static const § !P§:String = "StatePlay";
      
      private static const §3D§:Number = -10 * 1000;
      
      private static const §6;§:Number = 15 * 1000;
       
      
      private var §%!Q§:Boolean = true;
      
      private var §=&§:Boolean = false;
      
      private var §9I§:Number = -10000.0;
      
      private var §56§:int = 0;
      
      private var §#1§:Boolean = true;
      
      private var §!y§:§8>§ = null;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §-6§.§[G§();
         §6g§.§+!J§(§6j§.§#!+§,§"=§.§?x§);
         §-!#§.§!!8§.§1,§.§+!J§(§?9§.§%!2§);
         §-6§.§6!#§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §-!#§.§4,§.§&q§();
         this.§#1§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §^!;§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§5`§();
         this.§1&§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§'x§();
         this.§1&§();
         if(this.§!y§)
         {
            this.§!y§.dispose();
            this.§!y§ = null;
         }
         §-!#§.§!!8§.§1,§.§!@§();
      }
      
      private function §'x§() : void
      {
         var _loc1_:int = 0;
         if(!this.§=&§)
         {
            if(this.§9I§ > §6;§)
            {
               this.§=&§ = true;
               _loc1_ = Math.round(1000 / this.§9I§ * this.§56§);
               if(§?y§.§+r§)
               {
                  §6g§.§+!J§(§6j§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §6g§.§+!J§(§6j§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §+j§(param1:Number) : void
      {
         this.§9I§ += param1;
         if(this.§9I§ > 0)
         {
            ++this.§56§;
         }
      }
      
      private function §1&§() : void
      {
         this.§9I§ = §3D§;
         this.§56§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§#1§)
         {
            §9!-§.§'!c§(§^!;§);
            this.§#1§ = false;
         }
         if(§9!-§.isOpen || §=!O§.§%F§())
         {
            §^c§.run(param1);
            §^c§.enableHelpButton(false);
            return §6!W§.STATE_STATUS_RUNNING;
         }
         if(§#!=§.§&![§.slingshot.§=!`§.length == 0)
         {
            §^c§.enableHelpButton(false);
         }
         else
         {
            §^c§.enableHelpButton(true);
         }
         if(mNextState == §3!R§.§ !P§ && this.§!y§ && this.§!y§.§;]§)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         if(!this.§!y§ && mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+j§(param1);
         this.§5`§();
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         if(§"=§.§<q§ == 0)
         {
            §^c§.changeState(HighscoreSidebar.§=8§);
            §^!;§.getItemByName("Container_HiscoreContainer").y = 0;
         }
         else
         {
            §^c§.selectedLevelName = §"=§.§?x§;
            §^c§.changeState(HighscoreSidebar.§^!%§);
            §^!;§.getItemByName("Container_HiscoreContainer").y = -35;
            (§^!;§.getItemByName("TextField_Level_Num") as §9v§).§@!G§.text = "" + §"=§.§?x§.substring(2);
         }
         §^c§.enableLogOutButton(true);
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
         if(!this.§!y§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §"=§.§?x§;
            _loc3_ = §,_§.§0!X§(§"=§.§?x§);
            _loc4_ = §7!K§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §6g§.§+!J§(§6j§.§`!]§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §6K§.§3b§();
            _loc3_.gamePlay = §#!=§.§&![§.§-!H§().toString();
            _loc3_.security = §8>§.§`X§(_loc3_,§"=§.§<q§ != 0);
            _loc6_ = §,_§.§^m§;
            if(§6!W§.getApplicationParameter("participantId") != null)
            {
               _loc6_.participantId = §6!W§.getApplicationParameter("participantId");
            }
            if(§6!W§.getApplicationParameter("siteId") != null)
            {
               _loc6_.siteId = §6!W§.getApplicationParameter("siteId");
            }
            _loc7_ = {
               "type":_loc1_,
               "player":_loc6_,
               "levelProfile":_loc3_,
               "competition":§,_§.competition,
               "beats":§-!#§.§4,§.§3!&§()
            };
            this.§!y§ = new §8>§(_loc7_,§-!#§.§>+§ + _loc1_,this,§8>§.§+!O§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §3!R§.§ !P§;
      }
      
      override public function getLoserState() : String
      {
         return §8;§.§ !P§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§9!-§.isOpen && !§=!O§.§%F§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §]#§.§[4§();
                  mNextState = §]#§.§ !P§;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §9!-§.§'!$§();
               break;
            case "PAUSE":
               §=!O§.§'!B§(§^!;§);
               break;
            case "RESTART_LEVEL":
               §]#§.§[4§();
               mNextState = §]#§.§ !P§;
               break;
            case "ZOOM_IN":
               §7!K§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §7!K§.doUserZoom(false);
         }
      }
      
      private function §5`§() : void
      {
         var _loc1_:int = §7!K§.getScore();
         §^!;§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §-!#§.§4,§.§!G§(§"=§.§?x§);
         §^!;§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §%"§.§1"§((param1.currentTarget as URLLoader).data);
         if(_loc2_.beats != undefined)
         {
            §-!#§.§4,§.§<M§ = _loc2_.beats as int;
         }
         if(_loc2_.communityBeats != undefined)
         {
            §-!#§.§4,§.§=t§ = _loc2_.communityBeats as int;
            §^c§.renderCollectedBeats();
         }
         if(_loc2_.levelProfile != undefined)
         {
            §,_§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.competition != undefined)
         {
            §,_§.competition = _loc2_.competition;
            §^c§.clearReloadTimers();
            §,_§.§%t§();
         }
         if(§^c§.getScoreLoaderById(§"=§.§?x§))
         {
            if(_loc2_.isHighScore)
            {
               §^c§.getScoreLoaderById(§"=§.§?x§).clearReloadTimer();
            }
            if(_loc2_.isTopCollector)
            {
               §^c§.getScoreLoaderById(HighscoreSidebar.§5!<§).clearReloadTimer();
            }
         }
      }
      
      public function §#!5§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0!B§(param1:IOErrorEvent) : void
      {
      }
   }
}
