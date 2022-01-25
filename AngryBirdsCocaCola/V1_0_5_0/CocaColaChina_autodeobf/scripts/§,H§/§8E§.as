package §,H§
{
   import §!N§.§68§;
   import §%!c§.§@2§;
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §'!^§.§!!H§;
   import §+!6§.HighscoreSidebar;
   import §3U§.§2!%§;
   import §4!W§.§=!G§;
   import §4!W§.§@R§;
   import §7!H§.§12§;
   import §;A§.§7!K§;
   import §=!#§.§4i§;
   import §@W§.§2!_§;
   import §^!&§.§?!N§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §8E§ extends §1!a§
   {
      
      public static const §^!O§:String = "LevelSelectionStateCola";
      
      public static const PERSONAL_LEVEL_LOCK_LIMIT1:int = 15;
      
      public static const PERSONAL_LEVEL_LOCK_LIMIT2:int = 40;
      
      public static const PERSONAL_GOAL_1:int = 1;
      
      public static const PERSONAL_GOAL_2:int = 2;
      
      public static const §=!2§:int = 3;
       
      
      private var §0t§:§?!N§ = null;
      
      private var §-! §:§=!G§;
      
      private var §@o§:Vector.<§=!G§>;
      
      private var § !;§:Timer;
      
      private var §8g§:int;
      
      private var §1K§:Boolean = false;
      
      public function §8E§(param1:Boolean = false, param2:String = "LevelSelectionStateCola")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`! § = new §@R§(75,0,0,1);
         §=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_LevelSelectionCola[0]);
         this.§0t§ = new §68§(§7!K§.§=j§,"INGAME_THEME_1",false,3);
         this.§@o§ = new Vector.<§=!G§>();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§1K§)
         {
            this.§1K§ = true;
            §!!H§.§?!O§(§!!H§.§#"§);
         }
         §+D§.enableHighScoreTab(true);
         §7!K§.§=j§.§ i§(true);
         §7!K§.§=j§.§6z§(true);
         §7!K§.§=j§.clearLevel();
         §7!K§.§,'§(this.§0t§);
         this.§0t§.init();
         §6T§.§-5§ = §^!O§;
         §6T§.§"t§();
         this.§'"§();
         this.§5?§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§%G§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §+D§.changeState(§+D§.currentState);
      }
      
      private function §'"§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§1u§.length)
         {
            _loc2_ = §=!I§.getItemByName("Button_Coke" + _loc1_).mClip;
            (_loc2_.TextField_LevelNumCoke.text as TextField).mouseEnabled = false;
            if(§@2§.§ case§(HighscoreSidebar.§1u§[_loc1_ - 1]))
            {
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNumCoke.text.text = _loc1_;
               if(_loc2_.TextField_LevelPersonalCount)
               {
                  _loc2_.TextField_LevelPersonalCount.visible = false;
               }
               _loc3_ = §6T§.§>c§.§[!X§(HighscoreSidebar.§1u§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else if(_loc1_ == 6)
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               _loc2_.TextField_LevelPersonalCount.visible = true;
               _loc2_.TextField_LevelPersonalCount.text.text = "" + §6T§.§>c§.§4!5§ + "/" + PERSONAL_LEVEL_LOCK_LIMIT1;
            }
            else if(_loc1_ == 7)
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               _loc2_.TextField_LevelPersonalCount.visible = true;
               _loc2_.TextField_LevelPersonalCount.text.text = "" + §6T§.§>c§.§4!5§ + "/" + PERSONAL_LEVEL_LOCK_LIMIT2;
            }
            else
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               if(_loc2_.TextField_LevelPersonalCount)
               {
                  _loc2_.TextField_LevelPersonalCount.visible = false;
               }
            }
            _loc1_++;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§=!G§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         for each(_loc3_ in this.§@o§)
         {
            _loc3_.update(param1);
         }
         §7!K§.§0!9§.update(param1);
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§1u§.length)
         {
            if(param2 == "COKE" + (_loc5_ + 1))
            {
               if(§@2§.§ case§(§2!%§.§4D§(HighscoreSidebar.§1u§[_loc5_])))
               {
                  §2!%§.§4y§(§2!%§.§4D§(HighscoreSidebar.§1u§[_loc5_]));
                  mNextState = StateCutScene.§^!O§;
               }
               else if(_loc5_ == 5 || _loc5_ == 6)
               {
                  §4i§.§#!Y§(§=!I§,_loc5_);
               }
               else if(_loc5_ == 7 || _loc5_ == 8 || _loc5_ == 9)
               {
                  §4i§.§`t§(§=!I§);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BACK":
               mNextState = §`$§.§^!O§;
         }
      }
      
      private function §5?§() : void
      {
         this.§ !;§ = new Timer(250);
         this.§8g§ = 0;
         this.§ !;§.addEventListener(TimerEvent.TIMER,this.§"r§);
         this.§ !;§.start();
      }
      
      private function §%G§() : void
      {
         var _loc1_:§=!G§ = null;
         if(this.§ !;§)
         {
            this.§ !;§.stop();
            this.§ !;§.removeEventListener(TimerEvent.TIMER,this.§"r§);
         }
         for each(_loc1_ in this.§@o§)
         {
            if(§=!I§.contains(_loc1_))
            {
               §=!I§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§@o§ = new Vector.<§=!G§>();
      }
      
      private function §"r§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§8g§ == 0)
         {
            if(!this.§!!I§(§=!2§) && §@2§.§ case§("2-8") && §@2§.§ case§("2-9") && §@2§.§ case§("2-10") && §6T§.§>c§.§2!K§)
            {
               this.§`!5§(§=!2§,true);
               _loc2_ = §=!I§.getItemByName("Button_Coke8").mClip;
               this.§=C§(_loc2_,40);
               _loc2_ = §=!I§.getItemByName("Button_Coke9").mClip;
               this.§=C§(_loc2_,40);
               _loc2_ = §=!I§.getItemByName("Button_Coke10").mClip;
               this.§=C§(_loc2_,40);
            }
         }
         else
         {
            this.§ !;§.stop();
         }
         ++this.§8g§;
      }
      
      private function §=C§(param1:MovieClip, param2:int) : void
      {
         this.§-! § = new §=!G§(§6T§.§,x§,§6T§.§+!U§,param1.x,param1.y,§=!G§.§7!C§,param2,100);
         §=!I§.addChild(this.§-! §);
         this.§@o§.push(this.§-! §);
      }
      
      private function §`!5§(param1:int, param2:Boolean) : void
      {
         var noOfGoal:int = param1;
         var value:Boolean = param2;
         try
         {
            if(noOfGoal == PERSONAL_GOAL_1)
            {
               §6T§.§0k§.data.goal1 = value;
            }
            else if(noOfGoal == PERSONAL_GOAL_2)
            {
               §6T§.§0k§.data.goal2 = value;
            }
            else if(noOfGoal == §=!2§)
            {
               §6T§.§0k§.data.goal3 = value;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §!!I§(param1:int) : Boolean
      {
         var noOfGoal:int = param1;
         var goalSeen:Boolean = false;
         try
         {
            if(noOfGoal == PERSONAL_GOAL_1)
            {
               goalSeen = §6T§.§0k§.data.goal1;
            }
            else if(noOfGoal == PERSONAL_GOAL_2)
            {
               goalSeen = §6T§.§0k§.data.goal2;
            }
            else if(noOfGoal == §=!2§)
            {
               goalSeen = §6T§.§0k§.data.goal3;
            }
         }
         catch(e:Error)
         {
            goalSeen = false;
         }
         return goalSeen;
      }
   }
}
