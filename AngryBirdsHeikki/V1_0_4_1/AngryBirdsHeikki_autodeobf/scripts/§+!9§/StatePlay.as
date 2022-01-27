package §+!9§
{
   import §#!&§.§#O§;
   import §,J§.§7!A§;
   import §1!6§.§ !3§;
   import §1!6§.§-%§;
   import §4!9§.§5d§;
   import §4!9§.§>6§;
   import §4;§.§,h§;
   import §6-§.§%1§;
   import §7!X§.§%!=§;
   import §7!X§.§7g§;
   import §7h§.§7!"§;
   import §9i§.§+A§;
   import §;<§.§!!,§;
   import §;<§.§%!I§;
   import §;<§.§7!K§;
   import §;D§.§]T§;
   import §?!5§.§2d§;
   import §?!P§.§@@§;
   import §[!^§.§-m§;
   import §[!^§.§^2§;
   import §^!7§.§+!S§;
   import §^!7§.§]H§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   import §var§.§+!^§;
   import §var§.§8!_§;
   
   public class StatePlay extends §+V§ implements §%!I§
   {
      
      public static const §6! §:String = "StatePlay";
      
      private static const §3!N§:Number = -10 * 1000;
      
      private static const §,F§:Number = 15 * 1000;
       
      
      private var §&<§:Boolean = true;
      
      private var §^!D§:Boolean = false;
      
      private var §]!Q§:Number = -10000.0;
      
      private var §>!O§:int = 0;
      
      private var §5!D§:Boolean = true;
      
      private var §4W§:Boolean = false;
      
      private var §^!B§:§+A§ = null;
      
      private var §8!2§:§%1§ = null;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!M§ = new §7g§(this);
         §2!M§.init(§%!=§.§ #§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §7!"§.§9!0§();
         §>6§.§%;§(§5d§.§'!'§,§7!A§.§ !A§);
         §1F§.§8%§.§7!U§.§%;§(§!!,§.§%!9§);
         §7!"§.§#W§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§5!D§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         §2!M§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§^`§();
         this.§>!Y§();
      }
      
      override public function deActivate() : void
      {
         if(this.§8!2§ != null)
         {
            this.§8!2§.§?w§();
            this.§8!2§ = null;
         }
         super.deActivate();
         this.§>!@§();
         this.§>!Y§();
         if(this.§^!B§)
         {
            this.§^!B§.dispose();
            this.§^!B§ = null;
         }
         §1F§.§8%§.§7!U§.§#F§();
      }
      
      private function §>!@§() : void
      {
         var _loc1_:int = 0;
         if(!this.§^!D§)
         {
            if(this.§]!Q§ > §,F§)
            {
               this.§^!D§ = true;
               _loc1_ = Math.round(1000 / this.§]!Q§ * this.§>!O§);
               if(§2d§.§#<§)
               {
                  §>6§.§%;§(§5d§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §>6§.§%;§(§5d§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §7,§(param1:Number) : void
      {
         this.§]!Q§ += param1;
         if(this.§]!Q§ > 0)
         {
            ++this.§>!O§;
         }
      }
      
      private function §>!Y§() : void
      {
         this.§]!Q§ = §3!N§;
         this.§>!O§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§%1§ = null;
         if(this.§5!D§)
         {
            §-m§.§[e§(§2!M§,true);
            this.§5!D§ = false;
         }
         if(§-m§.§'!E§ || §^2§.§->§())
         {
            if(this.§8!2§ && !this.§8!2§.isCompleted)
            {
               this.§8!2§.§9@§();
            }
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            return §,h§.STATE_STATUS_RUNNING;
         }
         if(§@@§.§ !8§.slingshot.§&!9§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         if(this.§4W§)
         {
            (§@@§.§ !8§ as §<D§).§>Y§();
            _loc3_ = ((§@@§.§ !8§ as §<D§).slingshot as §!E§).§ o§();
            if(_loc3_ != null)
            {
               this.§8!2§ = _loc3_;
            }
            this.§4W§ = false;
            §-m§.§[e§(§2!M§,true);
         }
         else if(this.§8!2§)
         {
            this.§8!2§.play();
         }
         if(mNextState == §9;§.§6! § && this.§^!B§ && this.§^!B§.§-S§)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         if(!this.§^!B§ && mNextState.length > 0)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§7,§(param1);
         this.§^`§();
         if(!§@@§.§ !8§.objects.isPigsAlive())
         {
            this.§[!P§(false);
         }
         else if((§@@§.§ !8§.slingshot.mSlingShotState == §]H§.STATE_BIRD_IS_READY || §@@§.§ !8§.slingshot.§3@§() && §@@§.§ !8§.slingshot.mSlingShotState == §]H§.§+;§) && !((§@@§.§ !8§ as §<D§).slingshot as §!E§).§=!P§)
         {
            this.§[!P§(true);
         }
         else
         {
            this.§[!P§(false);
         }
         if(§@@§.§ !8§.slingshot.mSlingShotState == §]H§.§0[§)
         {
            (§@@§.§ !8§.slingshot as §!E§).§8!3§();
         }
         return §,h§.STATE_STATUS_RUNNING;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §7!A§.§ !A§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§4^§);
         §2!M§.getItemByName("Container_HiscoreContainer").y = 0;
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
         if(!this.§^!B§)
         {
            _loc1_ = "updateLevelProfile";
            _loc2_ = §7!A§.§ !A§;
            _loc3_ = § !3§.§ V§(§7!A§.§ !A§);
            _loc4_ = §2s§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §>6§.§%;§(§5d§.§<!U§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §+!S§.§3A§();
            _loc3_.gamePlay = §@@§.§ !8§.§7j§().toString();
            _loc3_.userId = § !3§.§ ^§.id;
            _loc3_.security = §+A§.§ !b§(_loc3_);
            (_loc6_ = new Object()).id = § !3§.§ ^§.id;
            _loc6_.security = § !3§.§ ^§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§^!B§ = new §+A§(_loc7_,§1F§.§&1§ + _loc1_,this,§+A§.§<!&§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §9;§.§6! §;
      }
      
      override public function getLoserState() : String
      {
         return §^!?§.§6! §;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§-m§.§'!E§ && !§^2§.§->§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  § 4§.§13§();
                  mNextState = § 4§.§6! §;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §-m§.§,Q§();
               break;
            case "PAUSE":
               §^2§.§!_§(§2!M§);
               break;
            case "RESTART_LEVEL":
               § 4§.§13§();
               mNextState = § 4§.§6! §;
               break;
            case "POWERUP_USE":
               if(§1F§.§=l§.§1n§)
               {
                  this.§4W§ = true;
               }
               else
               {
                  §^2§.§&!F§(§2!M§);
               }
               break;
            case "ZOOM_IN":
               §2s§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §2s§.doUserZoom(false);
         }
      }
      
      private function §^`§() : void
      {
         var _loc1_:int = §2s§.getScore();
         §2!M§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §1F§.§=l§.§3!Q§(§7!A§.§ !A§);
         §2!M§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §7!K§.§>e§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §+A§.§&n§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §0!M§.§'!]§ = true;
            §1F§.§=l§ = new §-%§("");
            § !3§.§@!`§ = new §]T§();
            §@@§.§9@§();
            §@@§.§ !8§.§5!?§(false);
            §@@§.§ !8§.§,!Y§(false);
            § 4§.§=D§ = §0!M§.§6! §;
            §7!A§.§get §(§7!A§.§]a§(HighscoreSidebar.§4!D§));
            §1F§.§8%§.§,!a§(§ 4§.§6! §);
            §3!!§.sHighscoreSidebar.reset();
         }
         § !3§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            §1F§.§=l§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            § !3§.levelProfile = _loc2_.levelProfile;
         }
         if(_loc2_.powerUp != undefined)
         {
            §1F§.§=l§.§1n§ = _loc2_.powerUp;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§7!A§.§ !A§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§7!A§.§ !A§).clearReloadTimer();
            }
            if(_loc2_.isOverallHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(HighscoreSidebar.§;]§).clearReloadTimer();
            }
         }
      }
      
      public function §[!P§(param1:Boolean = true) : void
      {
         var _loc2_:§#O§ = §2!M§.getItemByName("Button_PowerUp") as §#O§;
         if(param1)
         {
            _loc2_.setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§8!_§.§4Z§);
         }
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
      }
      
      public function get § for§() : Boolean
      {
         return this.§4W§;
      }
      
      public function set § for§(param1:Boolean) : void
      {
         this.§4W§ = param1;
      }
   }
}
