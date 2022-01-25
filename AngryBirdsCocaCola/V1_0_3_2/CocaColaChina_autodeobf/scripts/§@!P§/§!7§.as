package §@!P§
{
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §,f§.§=!0§;
   import §1!'§.HighscoreSidebar;
   import §2!a§.§<@§;
   import §2!a§.§?O§;
   import §6l§.§#!Z§;
   import §8S§.§%!>§;
   import §;C§.§+!M§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   import §>P§.§"N§;
   import §`!7§.§[5§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §!7§ extends §3!%§
   {
      
      public static const §'2§:String = "LevelSelectionStateCola";
      
      public static const PERSONAL_LEVEL_LOCK_LIMIT1:int = 15;
      
      public static const PERSONAL_LEVEL_LOCK_LIMIT2:int = 40;
      
      public static const PERSONAL_GOAL_1:int = 1;
      
      public static const PERSONAL_GOAL_2:int = 2;
      
      public static const §0M§:int = 3;
       
      
      private var §5!7§:§%!>§ = null;
      
      private var §<!c§:§<@§;
      
      private var §%!b§:Vector.<§<@§>;
      
      private var § 5§:Timer;
      
      private var §3J§:int;
      
      private var §9!<§:Boolean = false;
      
      public function §!7§(param1:Boolean = false, param2:String = "LevelSelectionStateCola")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#j§ = new §?O§(75,0,0,1);
         §+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_LevelSelectionCola[0]);
         this.§5!7§ = new §=!0§(§"n§.§[b§,"INGAME_THEME_1",false,3);
         this.§%!b§ = new Vector.<§<@§>();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§9!<§)
         {
            this.§9!<§ = true;
            §"N§.§0o§(§"N§.§7O§);
         }
         §@<§.enableHighScoreTab(true);
         §"n§.§[b§.§+!U§(true);
         §"n§.§[b§.§9'§(true);
         §"n§.§[b§.clearLevel();
         §"n§.§51§(this.§5!7§);
         this.§5!7§.init();
         §=i§.§0!U§ = §'2§;
         §=i§.§ !A§();
         this.§`!b§();
         this.§]!&§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<!2§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §@<§.changeState(§@<§.currentState);
      }
      
      private function §`!b§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§%w§.length)
         {
            _loc2_ = §+!`§.getItemByName("Button_Coke" + _loc1_).mClip;
            (_loc2_.TextField_LevelNumCoke.text as TextField).mouseEnabled = false;
            if(§[5§.§!_§(HighscoreSidebar.§%w§[_loc1_ - 1]))
            {
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNumCoke.text.text = _loc1_;
               if(_loc2_.TextField_LevelPersonalCount)
               {
                  _loc2_.TextField_LevelPersonalCount.visible = false;
               }
               _loc3_ = §=i§.§2S§.§4! §(HighscoreSidebar.§%w§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else if(_loc1_ == 6)
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               _loc2_.TextField_LevelPersonalCount.visible = true;
               _loc2_.TextField_LevelPersonalCount.text.text = "" + §=i§.§2S§.§'u§ + "/" + PERSONAL_LEVEL_LOCK_LIMIT1;
            }
            else if(_loc1_ == 7)
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               _loc2_.TextField_LevelPersonalCount.visible = true;
               _loc2_.TextField_LevelPersonalCount.text.text = "" + §=i§.§2S§.§'u§ + "/" + PERSONAL_LEVEL_LOCK_LIMIT2;
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
         var _loc3_:§<@§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         for each(_loc3_ in this.§%!b§)
         {
            _loc3_.update(param1);
         }
         §"n§.§5]§.update(param1);
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§%w§.length)
         {
            if(param2 == "COKE" + (_loc5_ + 1))
            {
               if(§[5§.§!_§(§9G§.§,! §(HighscoreSidebar.§%w§[_loc5_])))
               {
                  §9G§.§%^§(§9G§.§,! §(HighscoreSidebar.§%w§[_loc5_]));
                  mNextState = StateCutScene.§'2§;
               }
               else if(_loc5_ == 5 || _loc5_ == 6)
               {
                  §+!M§.§6p§(§+!`§,_loc5_);
               }
               else if(_loc5_ == 7 || _loc5_ == 8 || _loc5_ == 9)
               {
                  §+!M§.§=z§(§+!`§);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BACK":
               mNextState = §;"§.§'2§;
         }
      }
      
      private function §]!&§() : void
      {
         this.§ 5§ = new Timer(250);
         this.§3J§ = 0;
         this.§ 5§.addEventListener(TimerEvent.TIMER,this.§=>§);
         this.§ 5§.start();
      }
      
      private function §<!2§() : void
      {
         var _loc1_:§<@§ = null;
         if(this.§ 5§)
         {
            this.§ 5§.stop();
            this.§ 5§.removeEventListener(TimerEvent.TIMER,this.§=>§);
         }
         for each(_loc1_ in this.§%!b§)
         {
            if(§+!`§.contains(_loc1_))
            {
               §+!`§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§%!b§ = new Vector.<§<@§>();
      }
      
      private function §=>§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§3J§ == 0)
         {
            if(!this.§5!N§(§0M§) && §[5§.§!_§("2-8") && §[5§.§!_§("2-9") && §[5§.§!_§("2-10") && §=i§.§2S§.§@!#§)
            {
               this.§&M§(§0M§,true);
               _loc2_ = §+!`§.getItemByName("Button_Coke8").mClip;
               this.§[M§(_loc2_,40);
               _loc2_ = §+!`§.getItemByName("Button_Coke9").mClip;
               this.§[M§(_loc2_,40);
               _loc2_ = §+!`§.getItemByName("Button_Coke10").mClip;
               this.§[M§(_loc2_,40);
            }
         }
         else
         {
            this.§ 5§.stop();
         }
         ++this.§3J§;
      }
      
      private function §[M§(param1:MovieClip, param2:int) : void
      {
         this.§<!c§ = new §<@§(§=i§.§'0§,§=i§.§8-§,param1.x,param1.y,§<@§.§]8§,param2,100);
         §+!`§.addChild(this.§<!c§);
         this.§%!b§.push(this.§<!c§);
      }
      
      private function §&M§(param1:int, param2:Boolean) : void
      {
         var noOfGoal:int = param1;
         var value:Boolean = param2;
         try
         {
            if(noOfGoal == PERSONAL_GOAL_1)
            {
               §=i§.§0§.data.goal1 = value;
            }
            else if(noOfGoal == PERSONAL_GOAL_2)
            {
               §=i§.§0§.data.goal2 = value;
            }
            else if(noOfGoal == §0M§)
            {
               §=i§.§0§.data.goal3 = value;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §5!N§(param1:int) : Boolean
      {
         var noOfGoal:int = param1;
         var goalSeen:Boolean = false;
         try
         {
            if(noOfGoal == PERSONAL_GOAL_1)
            {
               goalSeen = §=i§.§0§.data.goal1;
            }
            else if(noOfGoal == PERSONAL_GOAL_2)
            {
               goalSeen = §=i§.§0§.data.goal2;
            }
            else if(noOfGoal == §0M§)
            {
               goalSeen = §=i§.§0§.data.goal3;
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
