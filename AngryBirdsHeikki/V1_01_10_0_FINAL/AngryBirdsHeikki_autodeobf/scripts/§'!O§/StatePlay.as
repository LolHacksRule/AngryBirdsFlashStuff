package §'!O§
{
   import §"!I§.§ !;§;
   import §"!I§.§9§;
   import §"^§.§+!'§;
   import §&!T§.§%%§;
   import §&!T§.§<!,§;
   import §'!N§.§<i§;
   import §-!"§.§=p§;
   import §20§.§"!b§;
   import §20§.§-Z§;
   import §2`§.HighscoreSidebar;
   import §3!b§.§+!,§;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §5!1§.§&[§;
   import §6s§.§+!Y§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import §9I§.§+J§;
   import §9I§.§2!3§;
   import §9I§.§>!=§;
   import §9b§.§"!S§;
   import §;!3§.§;!P§;
   import §<!!§.§#!`§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §=! §.§,Z§;
   import §=! §.§9>§;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §<O§ implements §>!=§
   {
      
      public static const §@o§:String = "StatePlay";
      
      private static const §=_§:Number = -10 * 1000;
      
      private static const §09§:Number = 15 * 1000;
      
      private static const §#! §:Number = 15 * 1000;
      
      private static const §7!§:Number = 50;
      
      private static const §@W§:Number = 0.05;
       
      
      private var §9!S§:Number = 0;
      
      private var §2!^§:Boolean = true;
      
      private var §4!c§:Boolean = false;
      
      private var §^4§:Number = -10000.0;
      
      private var §7!S§:int = 0;
      
      private var §@!Q§:Boolean = true;
      
      private var §>!+§:Boolean = false;
      
      private var §%!Z§:§#!`§ = null;
      
      private var §6!M§:§&[§ = null;
      
      private var §@a§:Number = 0;
      
      private var §"!4§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]!9§ = new §]!Q§(this);
         §]!9§.init(§;A§.§=I§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§9!S§ <= 0)
         {
            §+!Y§.§]5§("onLevelStart");
            this.§9!S§ = §#! §;
         }
         §&M§.§=!7§();
         §9>§.§>%§(§,Z§.§-Q§,§,4§.§0!$§);
         §,L§.§+w§.§;S§.§>%§(§2!3§.§`m§);
         §&M§.§6!#§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§@!Q§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]!9§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§]![§();
         this.§4x§();
      }
      
      override public function deActivate() : void
      {
         if(this.§6!M§ != null)
         {
            this.§6!M§.§2=§();
            this.§6!M§ = null;
         }
         super.deActivate();
         this.§&9§();
         this.§4x§();
         if(this.§%!Z§)
         {
            this.§%!Z§.dispose();
            this.§%!Z§ = null;
         }
         §,L§.§+w§.§;S§.§-$§();
      }
      
      private function §&9§() : void
      {
         var _loc1_:int = 0;
         if(!this.§4!c§)
         {
            if(this.§^4§ > §09§)
            {
               this.§4!c§ = true;
               _loc1_ = Math.round(1000 / this.§^4§ * this.§7!S§);
               if(§+!'§.§"!#§)
               {
                  §9>§.§>%§(§,Z§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §9>§.§>%§(§,Z§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §=!]§(param1:Number) : void
      {
         this.§^4§ += param1;
         if(this.§^4§ > 0)
         {
            ++this.§7!S§;
         }
      }
      
      private function §4x§() : void
      {
         this.§^4§ = §=_§;
         this.§7!S§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§&[§ = null;
         if(this.§9!S§ > 0)
         {
            this.§9!S§ -= param1;
         }
         if(this.§@!Q§)
         {
            §-Z§.§0;§(§]!9§,true);
            this.§@!Q§ = false;
         }
         if(§-Z§.§ !6§ || §"!b§.§5;§())
         {
            if(this.§6!M§ && !this.§6!M§.isCompleted)
            {
               this.§6!M§.§99§();
            }
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            return §=p§.STATE_STATUS_RUNNING;
         }
         if(§"!S§.§-!7§.slingshot.§2!A§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         this.§70§(param1);
         if(this.§>!+§)
         {
            (§"!S§.§-!7§ as §<!,§).§6!Z§();
            _loc3_ = ((§"!S§.§-!7§ as §<!,§).slingshot as §%%§).§,!+§();
            if(_loc3_ != null)
            {
               this.§6!M§ = _loc3_;
            }
            this.§>!+§ = false;
            §-Z§.§0;§(§]!9§,true);
         }
         else if(this.§6!M§)
         {
            this.§6!M§.play();
         }
         if(mNextState == §=4§.§@o§ && this.§%!Z§ && this.§%!Z§.§^!^§)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         if(!this.§%!Z§ && mNextState.length > 0)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=!]§(param1);
         this.§]![§();
         if(!§"!S§.§-!7§.objects.isPigsAlive())
         {
            this.§&!§(false);
         }
         else if((§"!S§.§-!7§.slingshot.mSlingShotState == §9§.STATE_BIRD_IS_READY || §"!S§.§-!7§.slingshot.§@!§() && §"!S§.§-!7§.slingshot.mSlingShotState == §9§.§5H§) && !((§"!S§.§-!7§ as §<!,§).slingshot as §%%§).§[!b§)
         {
            this.§&!§(true);
         }
         else
         {
            this.§&!§(false);
         }
         if(§"!S§.§-!7§.slingshot.mSlingShotState == §9§.§-!U§)
         {
            (§"!S§.§-!7§.slingshot as §%%§).§'E§();
         }
         return §=p§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §,4§.§0!$§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§`!e§);
         §]!9§.getItemByName("Container_HiscoreContainer").y = 0;
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
         if(!this.§%!Z§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §,4§.§0!$§;
            _loc3_ = §4!_§.§1q§(§,4§.§0!$§);
            _loc4_ = §"!J§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §9>§.§>%§(§,Z§.§"-§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = § !;§.§4!4§();
            _loc3_.gamePlay = §"!S§.§-!7§.§%!T§().toString();
            _loc3_.userId = §4!_§.§2!4§.id;
            _loc3_.security = §#!`§.§9M§(_loc3_);
            (_loc6_ = new Object()).id = §4!_§.§2!4§.id;
            _loc6_.security = §4!_§.§2!4§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§%!Z§ = new §#!`§(_loc7_,§,L§.§2;§ + _loc1_,this,§#!`§.§`!1§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §=4§.§@o§;
      }
      
      override public function getLoserState() : String
      {
         return §<!Q§.§@o§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§-Z§.§ !6§ && !§"!b§.§5;§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §<r§.§0^§();
                  mNextState = §<r§.§@o§;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§"!S§.§-!7§.slingshot.mDragging)
            {
               §"!S§.§-!7§.slingshot.shoot();
               §"!J§.changeGameState(§+!,§.§^§);
               return;
            }
            §"!S§.§-!7§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §-Z§.§5P§();
               break;
            case "PAUSE":
               §"!b§.§66§(§]!9§);
               break;
            case "RESTART_LEVEL":
               §<r§.§0^§();
               mNextState = §<r§.§@o§;
               break;
            case "POWERUP_USE":
               if(§,L§.§8!F§.§"!1§)
               {
                  this.§>!+§ = true;
               }
               else
               {
                  §"!b§.§,]§(§]!9§);
               }
               break;
            case "ZOOM_IN":
               this.§@a§ = §@W§;
               this.§"!4§ = §7!§;
               break;
            case "ZOOM_OUT":
               this.§@a§ = -§@W§;
               this.§"!4§ = §7!§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§@a§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§@a§ = 0;
         }
      }
      
      private function §70§(param1:Number) : void
      {
         if(this.§@a§)
         {
            this.§"!4§ += param1;
            if(this.§"!4§ > §7!§)
            {
               §"!J§.doUserZoom(true,this.§@a§);
               this.§"!4§ = 0;
            }
         }
      }
      
      private function §]![§() : void
      {
         var _loc1_:int = §"!J§.getScore();
         §]!9§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §,L§.§8!F§.§%=§(§,4§.§0!$§);
         §]!9§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §#!`§.§,!1§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §#!_§.§<!9§ = true;
            §,L§.§8!F§ = new §7!>§("");
            §4!_§.§,t§ = new §;!P§();
            §"!S§.§99§();
            §"!S§.§-!7§.§%2§(false);
            §"!S§.§-!7§.§3g§(false);
            §<r§.§>!D§ = §#!_§.§@o§;
            §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§1!§));
            §,L§.§+w§.§9^§(§<r§.§@o§);
            §=j§.sHighscoreSidebar.reset();
         }
         §4!_§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §,L§.§8!F§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §4!_§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.powerUp != undefined)
         {
            §,L§.§8!F§.§"!1§ = _loc2_.powerUp;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§,4§.§0!$§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§,4§.§0!$§).clearReloadTimer();
            }
            if(_loc2_.isOverallHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(HighscoreSidebar.§<>§).clearReloadTimer();
            }
         }
      }
      
      public function §&!§(param1:Boolean = true) : void
      {
         var _loc2_:§<i§ = §]!9§.getItemByName("Button_PowerUp") as §<i§;
         if(param1)
         {
            _loc2_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§4!Y§.§[&§);
         }
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §[!-§() : Boolean
      {
         return this.§>!+§;
      }
      
      public function set §[!-§(param1:Boolean) : void
      {
         this.§>!+§ = param1;
      }
   }
}
