package §[l§
{
   import § !O§.§9!F§;
   import § e§.§&!&§;
   import § e§.§0y§;
   import § e§.§?`§;
   import §"!g§.§`!B§;
   import §"2§.§9-§;
   import §"f§.§%1§;
   import §"f§.§@4§;
   import §"f§.§`Z§;
   import §#M§.§+!Z§;
   import §0;§.§3=§;
   import §0;§.§`!`§;
   import §31§.§ !A§;
   import §31§.§@^§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §6Y§.§>!F§;
   import §7!>§.§3q§;
   import §7!Q§.§;_§;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §<!R§.HighscoreSidebar;
   import §<L§.§4S§;
   import §<L§.§7!4§;
   import §=!K§.§do§;
   import §>!<§.§-E§;
   import §]q§.§+$§;
   import §]q§.§6l§;
   import §]q§.§<;§;
   import §^!K§.§ !$§;
   import §`!@§.§!!Y§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §;4§ implements §[!X§
   {
      
      public static const §!_§:String = "StatePlay";
      
      private static const §?!$§:Number = -10 * 1000;
      
      private static const §]!O§:Number = 15 * 1000;
      
      private static const § 7§:Number = 50;
      
      private static const §>!X§:Number = 0.05;
       
      
      private var §>h§:Boolean = false;
      
      private var §4! §:Number = -10000.0;
      
      private var §<+§:int = 0;
      
      private var §?!o§:Boolean = true;
      
      private var §"5§:§-E§ = null;
      
      private var §`x§:Boolean = false;
      
      private var §finally§:§@4§;
      
      private var §3s§:Number;
      
      private var §8!?§:Number;
      
      private var §>"§:Number;
      
      private var §+q§:§3q§;
      
      private var §,-§:Boolean = false;
      
      private var §,I§:Number = 0;
      
      private var § use§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §3=§(this);
         mUIView.init(§`!`§.§2=§.Views.View_LevelPlay[0]);
         this.§>"§ = (mUIView.getItemByName("Container_PowerUpButtons") as § !A§).width - 25;
         this.§8!?§ = (mUIView.getItemByName("Container_PowerUpButtons") as § !A§).x;
         this.§+q§ = new §3q§(mUIView);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§+q§.activate();
         this.§+q§.§7z§ = false;
         this.§+q§.§=!d§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         if(§3q§.§=!0§ && !§3q§.§@!g§)
         {
            this.§+q§.§-!d§();
         }
         mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§finally§)
         {
            this.§finally§.stop();
            this.§finally§ = null;
         }
         this.§,-§ = false;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
         § !$§.§?j§();
         §?`§.§%p§(§0y§.ACTION_GAME_LEVEL_STARTED,§^d§.§@P§);
         § !$§.§-N§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§?!o§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         mUIView.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§#!8§();
         this.§@!G§();
         §&!&§.§+j§.updateTextFields(mUIView,"StatePlay");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §&!&§.§+j§.updateTextFields(mUIView,"StatePlay");
      }
      
      protected function §1t§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§-!o§(this.§finally§);
         this.§finally§ = §%1§.§+j§.§78§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§finally§.delay = 2;
         this.§finally§.play();
      }
      
      protected function §+U§(param1:Boolean = true) : void
      {
         this.§,-§ = true;
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§-!o§(this.§finally§);
         this.§finally§ = §%1§.§+j§.§78§(mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§finally§.delay = 2;
         }
         else
         {
            this.§finally§.delay = 0.5;
         }
         this.§finally§.play();
         this.§finally§.onComplete = this.§;!=§;
      }
      
      private function §;!=§() : void
      {
         mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§9!_§();
         this.§@!G§();
         if(this.§"5§)
         {
            this.§"5§.dispose();
            this.§"5§ = null;
         }
         this.§`x§ = false;
         § 4§.§6q§.§^z§.§%V§();
      }
      
      private function §9!_§() : void
      {
         var _loc1_:int = 0;
         if(!this.§>h§)
         {
            if(this.§4! § > §]!O§)
            {
               this.§>h§ = true;
               _loc1_ = Math.round(1000 / this.§4! § * this.§<+§);
               if(§do§.§@$§)
               {
                  §?`§.§%p§(§0y§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §?`§.§%p§(§0y§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §?!j§(param1:Number) : void
      {
         this.§4! § += param1;
         if(this.§4! § > 0)
         {
            ++this.§<+§;
         }
      }
      
      private function §@!G§() : void
      {
         this.§4! § = §?!$§;
         this.§<+§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§?!o§)
         {
            §+$§.§9Q§(mUIView,true);
            this.§?!o§ = false;
         }
         if(§+$§.§+!l§)
         {
            sHighscoreSidebar.run(param1);
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.enableLoginButton(false);
            sHighscoreSidebar.enableLogOutButton(false);
            return §1!b§.STATE_STATUS_RUNNING;
         }
         if(§6l§.§'^§())
         {
            sHighscoreSidebar.enableHelpButton(false);
            sHighscoreSidebar.run(param1);
            return §1!b§.STATE_STATUS_RUNNING;
         }
         if(§+!Z§.§?!<§.slingshot.§ &§.length == 0)
         {
            sHighscoreSidebar.enableHelpButton(false);
         }
         else
         {
            sHighscoreSidebar.enableHelpButton(true);
         }
         if(!§+!Z§.§?!<§.objects.isPigsAlive())
         {
            _loc3_ = 1;
            while(_loc3_ < 5)
            {
               mUIView.getItemByName("Button_PowerUp" + _loc3_.toString()).setEnabled(false);
               _loc3_++;
            }
            this.§+q§.§@!d§();
            mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         }
         this.§+q§.run(param1);
         §`Z§.§+j§.update(param1);
         this.§,!m§(param1);
         if(mNextState == §^!G§.§!_§ && this.§7!f§())
         {
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         if(mNextState.length > 0 && this.§7!f§())
         {
            if(this.§"5§)
            {
               this.§"5§.dispose();
            }
            this.§`x§ = true;
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         if(mNextState == §-i§.§!_§)
         {
            if(this.§"5§)
            {
               this.§"5§.dispose();
            }
            this.§`x§ = true;
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?!j§(param1);
         this.§#!8§();
         if(!this.§,-§ && !§+!Z§.§?!<§.slingshot.birdsAvailable)
         {
            this.§+q§.§&<§("POWERUP1",false);
            this.§+q§.§&<§("POWERUP2",false);
            this.§+q§.§&<§("POWERUP3",false);
         }
         if(!this.§,-§ && §+!Z§.§?!<§.slingshot.mSlingShotState == §7!4§.§1f§)
         {
            this.§+U§(this.§+q§.§7z§);
            this.§+q§.§@!d§();
         }
         return §1!b§.STATE_STATUS_RUNNING;
      }
      
      protected function §7!f§() : Boolean
      {
         return !(§+!Z§.§?!<§ as §9-§).§?Q§.§90§ && this.§`x§;
      }
      
      private function §2!3§(param1:Number) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §@^§).§9! § == true)
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §@^§).§1J§(param1);
            }
            _loc2_++;
         }
         _loc2_ = 1;
         while(_loc2_ < 5)
         {
            if((mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §@^§).§[!h§() == "End")
            {
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §@^§).§9! § = false;
               (mUIView.getItemByName("MovieClip_GetMore" + _loc2_) as §@^§).§%=§("End");
            }
            _loc2_++;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§[!5§.§1G§(§^d§.§@P§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§!N§);
         }
         else
         {
            sHighscoreSidebar.selectedLevelName = §^d§.§@P§;
            sHighscoreSidebar.changeState(HighscoreSidebar.§ each§);
         }
         mUIView.getItemByName("Container_HiscoreContainer").y = 0;
         if(§ 4§.§?H§.§4!A§)
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
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
         if(§[!5§.§1G§(§^d§.§@P§))
         {
            this.§`x§ = true;
         }
         else if(!this.§"5§)
         {
            this.§`x§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = §^d§.§@P§;
            _loc3_ = §[!5§.§>a§(§^d§.§@P§);
            _loc4_ = §9!$§.getScore();
            _loc5_ = false;
            _loc3_.score = _loc4_;
            §?`§.§%p§(§0y§.§<a§,_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §4S§.§3c§();
            _loc3_.gamePlay = §+!Z§.§?!<§.§]A§().toString();
            _loc3_.userId = §[!5§.§[y§.id;
            _loc3_.security = §-E§.§[F§(_loc3_);
            (_loc6_ = new Object()).id = §[!5§.§[y§.id;
            _loc6_.security = §[!5§.§[y§.security;
            _loc7_ = {
               "player":_loc6_,
               "levelProfile":_loc3_
            };
            this.§"5§ = new §-E§(_loc7_,§ 4§.§=R§ + _loc1_,this,§-E§.§]!,§);
         }
      }
      
      override public function getVictoryState() : String
      {
         return §^!G§.§!_§;
      }
      
      override public function getLoserState() : String
      {
         return §-i§.§!_§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§+$§.§+!l§ && !§6l§.§'^§())
         {
            switch(param1.keyCode)
            {
               case Keyboard.R:
                  §26§.§4;§();
                  mNextState = §26§.§!_§;
                  break;
               case Keyboard.D:
                  if(§ 4§.§`0§)
                  {
                     if(§+!Z§.§?!<§.mLevelEngine.§+!#§)
                     {
                        §+!Z§.§?!<§.mLevelEngine.§+!<§();
                     }
                     §+!Z§.§?!<§.mLevelEngine.§+!#§ = !§+!Z§.§?!<§.mLevelEngine.§+!#§;
                     break;
                  }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param1 == 1)
         {
            if(§+!Z§.§?!<§.slingshot.mDragging)
            {
               §+!Z§.§?!<§.slingshot.shoot();
               §9!$§.changeGameState(§`!B§.§]! §);
               return;
            }
            §+!Z§.§?!<§.camera.stopDragging();
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §+$§.§[2§();
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §<;§.§[2§();
               break;
            case "PAUSE":
               §6l§.§",§(mUIView);
               break;
            case "RESTART_LEVEL":
               §26§.§4;§();
               mNextState = §26§.§!_§;
               if(this.§"5§)
               {
                  this.§"5§.dispose();
               }
               this.§`x§ = true;
               break;
            case "ZOOM_IN":
               this.§,I§ = §>!X§;
               this.§ use§ = § 7§;
               break;
            case "ZOOM_OUT":
               this.§,I§ = -§>!X§;
               this.§ use§ = § 7§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§,I§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§,I§ = 0;
               break;
            case "POWERUP_OPEN":
               if(!this.§+q§.§7z§)
               {
                  mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§+q§.§-!d§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
               this.§+q§.§=!d§ = this.§+q§.§,<§(param2);
               if(!this.§+q§.§=!d§)
               {
                  mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§1t§();
                  break;
               }
         }
      }
      
      private function §,!m§(param1:Number) : void
      {
         if(this.§,I§)
         {
            this.§ use§ += param1;
            if(this.§ use§ > § 7§)
            {
               §9!$§.doUserZoom(true,this.§,I§);
               this.§ use§ = 0;
            }
         }
      }
      
      override protected function loginButtonClicked() : void
      {
         §6l§.§^?§(mUIView);
      }
      
      private function §#!8§() : void
      {
         var _loc1_:int = §9!$§.getScore();
         mUIView.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = § 4§.§?H§.§[,§(§^d§.§@P§);
         mUIView.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§`x§ = true;
         var _loc2_:Object = §!!Y§.§@M§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §-E§.§%6§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §>!F§.§5i§ = true;
            § 4§.§?H§ = new §;_§("");
            §[!5§.§7!h§ = new §9!F§();
            §[!5§.levelProfile = [];
            §6l§.§3i§(mUIView);
            §,Q§.sHighscoreSidebar.reset();
            return;
         }
         §[!5§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.overallScore != undefined)
         {
            § 4§.§?H§.overallScore = _loc2_.overallScore as int;
         }
         if(_loc2_.levelProfile != undefined)
         {
            §[!5§.levelProfile = _loc2_.levelProfile;
         }
         if(sHighscoreSidebar.getScoreLoaderById(§^d§.§@P§))
         {
            if(_loc2_.isHighScore)
            {
               sHighscoreSidebar.getScoreLoaderById(§^d§.§@P§).clearReloadTimer();
            }
         }
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
         §6l§.§3i§(mUIView);
      }
      
      private function §-!o§(param1:§@4§) : void
      {
         if(param1)
         {
            param1.§%e§();
         }
      }
   }
}
