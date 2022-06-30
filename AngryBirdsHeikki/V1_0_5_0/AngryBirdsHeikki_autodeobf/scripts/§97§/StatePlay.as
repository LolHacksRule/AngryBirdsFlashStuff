package §97§
{
   import § !Y§.§7§;
   import § !Y§.§if§;
   import §"W§.§7`§;
   import §+D§.§5@§;
   import §+D§.§6+§;
   import §1!a§.§3U§;
   import §1!a§.§7!I§;
   import §1!a§.§<!Y§;
   import §2!Q§.§'[§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §5N§.§!!I§;
   import §5N§.§7,§;
   import §93§.§?t§;
   import §93§.§^!H§;
   import §=!S§.§!!Z§;
   import §=!S§.§+!G§;
   import §=!c§.§-A§;
   import §=X§.§7!4§;
   import §>!I§.§8S§;
   import §>!_§.§2V§;
   import §>Q§.§5!5§;
   import §?!"§.§?!N§;
   import §?!"§.§^!`§;
   import §[!C§.HighscoreSidebar;
   import §]c§.§6S§;
   import §]c§.§>g§;
   import §^i§.§;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §0C§ implements §7!I§
   {
      
      public static const §4l§:String = "StatePlay";
      
      private static const §+!9§:Number = -10 * 1000;
      
      private static const §##§:Number = 15 * 1000;
      
      private static const §]D§:Number = 15 * 1000;
       
      
      private var §7!W§:Number = 0;
      
      private var §@D§:Boolean = true;
      
      private var §&!F§:Boolean = false;
      
      private var §'w§:Number = -10000.0;
      
      private var §!I§:int = 0;
      
      private var §`Y§:Boolean = true;
      
      private var §`z§:Boolean = false;
      
      private var §!1§:§;§ = null;
      
      private var §5o§:§2V§ = null;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?P§ = new §if§(this);
         §?P§.init(§7§.§5!@§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§7!W§ <= 0)
         {
            §8S§.§<p§("onLevelStart");
            this.§7!W§ = §]D§;
         }
         §'[§.§9!;§();
         §!!Z§.§1!?§(§+!G§.§ 1§,§7!4§.§"P§);
         §,-§.§4-§.§[!U§.§1!?§(§<!Y§.§,Y§);
         §'[§.§"]§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§`Y§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?P§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§ true§();
         this.§3F§();
      }
      
      override public function deActivate() : void
      {
         if(this.§5o§ != null)
         {
            this.§5o§.§"!N§();
            this.§5o§ = null;
         }
         super.deActivate();
         this.§"`§();
         this.§3F§();
         if(this.§!1§)
         {
            this.§!1§.dispose();
            this.§!1§ = null;
         }
         §,-§.§4-§.§[!U§.§]u§();
      }
      
      private function §"`§() : void
      {
         var _loc1_:int = 0;
         if(!this.§&!F§)
         {
            if(this.§'w§ > §##§)
            {
               this.§&!F§ = true;
               _loc1_ = Math.round(1000 / this.§'w§ * this.§!I§);
               if(§5!5§.§-!+§)
               {
                  §!!Z§.§1!?§(§+!G§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §!!Z§.§1!?§(§+!G§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §#j§(param1:Number) : void
      {
         this.§'w§ += param1;
         if(this.§'w§ > 0)
         {
            ++this.§!I§;
         }
      }
      
      private function §3F§() : void
      {
         this.§'w§ = §+!9§;
         this.§!I§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§2V§ = null;
         if(this.§7!W§ > 0)
         {
            this.§7!W§ -= param1;
         }
         if(this.§`Y§)
         {
            §>g§.§6i§(§?P§,true);
            this.§`Y§ = false;
         }
         if(§>g§.§]!$§ || §6S§.§]1§())
         {
            if(this.§5o§ && !this.§5o§.isCompleted)
            {
               this.§5o§.§;!Q§();
            }
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            return §>!^§.STATE_STATUS_RUNNING;
         }
         if(§1L§.§"f§.slingshot.§>_§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         if(this.§`z§)
         {
            (§1L§.§"f§ as §7,§).§9!P§();
            _loc3_ = ((§1L§.§"f§ as §7,§).slingshot as §!!I§).§6^§();
            if(_loc3_ != null)
            {
               this.§5o§ = _loc3_;
            }
            this.§`z§ = false;
            §>g§.§6i§(§?P§,true);
         }
         else if(this.§5o§)
         {
            this.§5o§.play();
         }
         if(mNextState == §[U§.§4l§ && this.§!1§ && this.§!1§.§'!$§)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         if(!this.§!1§ && mNextState.length > 0)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#j§(param1);
         this.§ true§();
         if(!§1L§.§"f§.objects.isPigsAlive())
         {
            this.§<!B§(false);
         }
         else if((§1L§.§"f§.slingshot.mSlingShotState == §5@§.STATE_BIRD_IS_READY || §1L§.§"f§.slingshot.§1g§() && §1L§.§"f§.slingshot.mSlingShotState == §5@§.§5c§) && !((§1L§.§"f§ as §7,§).slingshot as §!!I§).§else§)
         {
            this.§<!B§(true);
         }
         else
         {
            this.§<!B§(false);
         }
         if(§1L§.§"f§.slingshot.mSlingShotState == §5@§.§9!D§)
         {
            (§1L§.§"f§.slingshot as §!!I§).§=0§();
         }
         return §>!^§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §7!4§.§"P§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§[?§);
         §?P§.getItemByName("Container_HiscoreContainer").y = 0;
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
         if(!this.§!1§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §7!4§.§"P§;
            _loc3_ = §^!`§.§6"§(§7!4§.§"P§);
            _loc4_ = §2!'§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §!!Z§.§1!?§(§+!G§.§0v§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §6+§.§&?§();
            _loc3_.gamePlay = §1L§.§"f§.§%!V§().toString();
            _loc3_.userId = §^!`§.§2?§.id;
            _loc3_.security = §;§.§4c§(_loc3_);
            (_loc6_ = new Object()).id = §^!`§.§2?§.id;
            _loc6_.security = §^!`§.§2?§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§!1§ = new §;§(_loc7_,§,-§.§ 6§ + _loc1_,this,§;§.§@<§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §[U§.§4l§;
      }
      
      override public function getLoserState() : String
      {
         return §,z§.§4l§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§>g§.§]!$§ && !§6S§.§]1§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §]!X§.§6$§();
                  mNextState = §]!X§.§4l§;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §>g§.§7!U§();
               break;
            case "PAUSE":
               §6S§.§'!L§(§?P§);
               break;
            case "RESTART_LEVEL":
               §]!X§.§6$§();
               mNextState = §]!X§.§4l§;
               break;
            case "POWERUP_USE":
               if(§,-§.§?+§.§"0§)
               {
                  this.§`z§ = true;
               }
               else
               {
                  §6S§.§-!^§(§?P§);
               }
               break;
            case "ZOOM_IN":
               §2!'§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §2!'§.doUserZoom(false);
         }
      }
      
      private function § true§() : void
      {
         var _loc1_:int = §2!'§.getScore();
         §?P§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §,-§.§?+§.§+,§(§7!4§.§"P§);
         §?P§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §3U§.§'o§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §;§.§>!G§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §1j§.§ !`§ = true;
            §,-§.§?+§ = new §?!N§("");
            §^!`§.§[K§ = new §7`§();
            §1L§.§;!Q§();
            §1L§.§"f§.§2!A§(false);
            §1L§.§"f§.§`f§(false);
            §]!X§.§]!?§ = §1j§.§4l§;
            §7!4§.§^!>§(§7!4§.§!!"§(HighscoreSidebar.§]"§));
            §,-§.§4-§.§8!P§(§]!X§.§4l§);
            §62§.sHighscoreSidebar.reset();
         }
         §^!`§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §,-§.§?+§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §^!`§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.powerUp != undefined)
         {
            §,-§.§?+§.§"0§ = _loc2_.powerUp;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§7!4§.§"P§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§7!4§.§"P§).clearReloadTimer();
            }
            if(_loc2_.isOverallHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(HighscoreSidebar.§7!Q§).clearReloadTimer();
            }
         }
      }
      
      public function §<!B§(param1:Boolean = true) : void
      {
         var _loc2_:§-A§ = §?P§.getItemByName("Button_PowerUp") as §-A§;
         if(param1)
         {
            _loc2_.setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§?t§.§@G§);
         }
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §33§() : Boolean
      {
         return this.§`z§;
      }
      
      public function set §33§(param1:Boolean) : void
      {
         this.§`z§ = param1;
      }
   }
}
