package §+B§
{
   import §!I§.§18§;
   import §!I§.§8!!§;
   import §#%§.§,!E§;
   import §#%§.§70§;
   import §&L§.§?]§;
   import §'!F§.§6!_§;
   import §'!F§.§>1§;
   import §+!M§.§7!0§;
   import §+!M§.§^<§;
   import §,!V§.§<!?§;
   import §-!9§.§9!!§;
   import §-!f§.§ else§;
   import §-!f§.§=T§;
   import §0!X§.§!!Z§;
   import §0!X§.§39§;
   import §0!X§.§8!F§;
   import §1!d§.§!![§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §9!'§.§8j§;
   import §9!'§.§@!U§;
   import §9!Q§.§0+§;
   import §9!Q§.§1T§;
   import §=!§.HighscoreSidebar;
   import §>!G§.§6!9§;
   import §>!M§.§2?§;
   import §@3§.§>M§;
   import §]!&§.§^!g§;
   import §^f§.§<q§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §2n§ implements §!!Z§
   {
      
      public static const §[!%§:String = "StatePlay";
      
      private static const §2!C§:Number = -10 * 1000;
      
      private static const §[g§:Number = 15 * 1000;
      
      private static const §'!Q§:Number = 15 * 1000;
      
      private static const §>!7§:Number = 50;
      
      private static const §4!O§:Number = 0.05;
       
      
      private var §5W§:Number = 0;
      
      private var §5!N§:Boolean = true;
      
      private var §6O§:Boolean = false;
      
      private var §;M§:Number = -10000.0;
      
      private var §;!^§:int = 0;
      
      private var §!k§:Boolean = true;
      
      private var §<!#§:Boolean = false;
      
      private var §90§:§2?§ = null;
      
      private var §4+§:§!![§ = null;
      
      private var §,Q§:Number = 0;
      
      private var §1X§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § ,§ = new § else§(this);
         § ,§.init(§=T§.§2,§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§5W§ <= 0)
         {
            §>M§.§74§("onLevelStart");
            this.§5W§ = §'!Q§;
         }
         §<q§.§2M§();
         §1T§.§-f§(§0+§.§;!,§,§#w§.§ !'§);
         §"!R§.§=>§.§3n§.§-f§(§39§.§8§);
         §<q§.§5!S§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§!k§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         § ,§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§^p§();
         this.§6!e§();
      }
      
      override public function deActivate() : void
      {
         if(this.§4+§ != null)
         {
            this.§4+§.§'L§();
            this.§4+§ = null;
         }
         super.deActivate();
         this.§0![§();
         this.§6!e§();
         if(this.§90§)
         {
            this.§90§.dispose();
            this.§90§ = null;
         }
         §"!R§.§=>§.§3n§.§!!J§();
      }
      
      private function §0![§() : void
      {
         var _loc1_:int = 0;
         if(!this.§6O§)
         {
            if(this.§;M§ > §[g§)
            {
               this.§6O§ = true;
               _loc1_ = Math.round(1000 / this.§;M§ * this.§;!^§);
               if(§?]§.§7!T§)
               {
                  §1T§.§-f§(§0+§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §1T§.§-f§(§0+§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §<m§(param1:Number) : void
      {
         this.§;M§ += param1;
         if(this.§;M§ > 0)
         {
            ++this.§;!^§;
         }
      }
      
      private function §6!e§() : void
      {
         this.§;M§ = §2!C§;
         this.§;!^§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§!![§ = null;
         if(this.§5W§ > 0)
         {
            this.§5W§ -= param1;
         }
         if(this.§!k§)
         {
            §6!_§.§with§(§ ,§,true);
            this.§!k§ = false;
         }
         if(§6!_§.§3!G§ || §>1§.§`4§())
         {
            if(this.§4+§ && !this.§4+§.isCompleted)
            {
               this.§4+§.§?p§();
            }
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            return §6!9§.STATE_STATUS_RUNNING;
         }
         if(§&#§.§3!D§.slingshot.§5&§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         this.§]=§(param1);
         if(this.§<!#§)
         {
            (§&#§.§3!D§ as §18§).§#4§();
            _loc3_ = ((§&#§.§3!D§ as §18§).slingshot as §8!!§).§;!A§();
            if(_loc3_ != null)
            {
               this.§4+§ = _loc3_;
            }
            this.§<!#§ = false;
            §6!_§.§with§(§ ,§,true);
         }
         else if(this.§4+§)
         {
            this.§4+§.play();
         }
         if(mNextState == §[y§.§[!%§ && this.§90§ && this.§90§.§>!A§)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         if(!this.§90§ && mNextState.length > 0)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§<m§(param1);
         this.§^p§();
         if(!§&#§.§3!D§.objects.isPigsAlive())
         {
            this.§9b§(false);
         }
         else if((§&#§.§3!D§.slingshot.mSlingShotState == §@!U§.STATE_BIRD_IS_READY || §&#§.§3!D§.slingshot.§3!C§() && §&#§.§3!D§.slingshot.mSlingShotState == §@!U§.§!!A§) && !((§&#§.§3!D§ as §18§).slingshot as §8!!§).§<!3§)
         {
            this.§9b§(true);
         }
         else
         {
            this.§9b§(false);
         }
         if(§&#§.§3!D§.slingshot.mSlingShotState == §@!U§.§`V§)
         {
            (§&#§.§3!D§.slingshot as §8!!§).§!_§();
         }
         return §6!9§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §#w§.§ !'§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§%!L§);
         § ,§.getItemByName("Container_HiscoreContainer").y = 0;
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
         if(!this.§90§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §#w§.§ !'§;
            _loc3_ = §70§.§3_§(§#w§.§ !'§);
            _loc4_ = §50§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §1T§.§-f§(§0+§.§]!O§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §8j§.§<@§();
            _loc3_.gamePlay = §&#§.§3!D§.§?§().toString();
            _loc3_.userId = §70§.§>!_§.id;
            _loc3_.security = §2?§.§@_§(_loc3_);
            (_loc6_ = new Object()).id = §70§.§>!_§.id;
            _loc6_.security = §70§.§>!_§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§90§ = new §2?§(_loc7_,§"!R§.§['§ + _loc1_,this,§2?§.§&!g§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §[y§.§[!%§;
      }
      
      override public function getLoserState() : String
      {
         return §?!U§.§[!%§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§6!_§.§3!G§ && !§>1§.§`4§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §1!g§.§3!4§();
                  mNextState = §1!g§.§[!%§;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§&#§.§3!D§.slingshot.mDragging)
            {
               §&#§.§3!D§.slingshot.shoot();
               §50§.changeGameState(§<!?§.§&a§);
               return;
            }
            §&#§.§3!D§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §6!_§.§=y§();
               break;
            case "PAUSE":
               §>1§.§`2§(§ ,§);
               break;
            case "RESTART_LEVEL":
               §1!g§.§3!4§();
               mNextState = §1!g§.§[!%§;
               break;
            case "POWERUP_USE":
               if(§"!R§.§0!P§.§4g§)
               {
                  this.§<!#§ = true;
               }
               else
               {
                  §>1§.§0!h§(§ ,§);
               }
               break;
            case "ZOOM_IN":
               this.§,Q§ = §4!O§;
               this.§1X§ = §>!7§;
               break;
            case "ZOOM_OUT":
               this.§,Q§ = -§4!O§;
               this.§1X§ = §>!7§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§,Q§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§,Q§ = 0;
         }
      }
      
      private function §]=§(param1:Number) : void
      {
         if(this.§,Q§)
         {
            this.§1X§ += param1;
            if(this.§1X§ > §>!7§)
            {
               §50§.doUserZoom(true,this.§,Q§);
               this.§1X§ = 0;
            }
         }
      }
      
      private function §^p§() : void
      {
         var _loc1_:int = §50§.getScore();
         § ,§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §"!R§.§0!P§.§&!,§(§#w§.§ !'§);
         § ,§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §8!F§.§[<§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §2?§.§`O§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §#!b§.§7b§ = true;
            §"!R§.§0!P§ = new §,!E§("");
            §70§.§6d§ = new §9!!§();
            §&#§.§?p§();
            §&#§.§3!D§.§"!E§(false);
            §&#§.§3!D§.§>!?§(false);
            §1!g§.§9!F§ = §#!b§.§[!%§;
            §#w§.§8>§(§#w§.§0?§(HighscoreSidebar.§!!Q§));
            §"!R§.§=>§.§0!9§(§1!g§.§[!%§);
            §-2§.sHighscoreSidebar.reset();
         }
         §70§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §"!R§.§0!P§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §70§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.powerUp != undefined)
         {
            §"!R§.§0!P§.§4g§ = _loc2_.powerUp;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§#w§.§ !'§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§#w§.§ !'§).clearReloadTimer();
            }
            if(_loc2_.isOverallHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(HighscoreSidebar.§!!2§).clearReloadTimer();
            }
         }
      }
      
      public function §9b§(param1:Boolean = true) : void
      {
         var _loc2_:§^!g§ = § ,§.getItemByName("Button_PowerUp") as §^!g§;
         if(param1)
         {
            _loc2_.setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§^<§.§-!O§);
         }
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §!!3§() : Boolean
      {
         return this.§<!#§;
      }
      
      public function set §!!3§(param1:Boolean) : void
      {
         this.§<!#§ = param1;
      }
   }
}
