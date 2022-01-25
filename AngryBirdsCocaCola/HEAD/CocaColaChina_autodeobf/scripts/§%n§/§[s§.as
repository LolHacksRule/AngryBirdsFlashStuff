package §%n§
{
   import §&a§.§1!Y§;
   import §,@§.§"!'§;
   import §,@§.§<!+§;
   import §-v§.§,!1§;
   import §2"§.§#!P§;
   import §32§.HighscoreSidebar;
   import §6!@§.§ !!§;
   import §7]§.§;T§;
   import §86§.§!!d§;
   import §;m§.§&`§;
   import §>9§.§9!V§;
   import §`!+§.§,'§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §[s§ extends §91§
   {
      
      public static const §^6§:String = "LevelSelectionStateCola";
      
      public static const PERSONAL_LEVEL_LOCK_LIMIT1:int = 15;
      
      public static const PERSONAL_LEVEL_LOCK_LIMIT2:int = 40;
      
      public static const PERSONAL_GOAL_1:int = 1;
      
      public static const PERSONAL_GOAL_2:int = 2;
      
      public static const §?!P§:int = 3;
       
      
      private var §!2§:§,'§ = null;
      
      private var §[0§:§<!+§;
      
      private var §-!"§:Vector.<§<!+§>;
      
      private var §3!W§:Timer;
      
      private var §]!E§:int;
      
      private var §0!W§:Boolean = false;
      
      public function §[s§(param1:Boolean = false, param2:String = "LevelSelectionStateCola")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5d§ = new §"!'§(75,0,0,1);
         §5!R§ = new §^R§(this);
         §5!R§.init(§7!^§.§`!E§.Views.View_LevelSelectionCola[0]);
         this.§!2§ = new §1!Y§(§,!1§.§2T§,"INGAME_THEME_1",false,3);
         this.§-!"§ = new Vector.<§<!+§>();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§0!W§)
         {
            this.§0!W§ = true;
            §&`§.§"!G§(§&`§.§"O§);
         }
         §'! §.enableHighScoreTab(true);
         §,!1§.§2T§.§=!H§(true);
         §,!1§.§2T§.§&c§(true);
         §,!1§.§2T§.clearLevel();
         §,!1§.§2!L§(this.§!2§);
         this.§!2§.init();
         §"!@§.§2_§ = §^6§;
         §"!@§.§>!$§();
         this.§,!@§();
         this.§ X§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;!Z§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §'! §.changeState(§'! §.currentState);
      }
      
      private function §,!@§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§!^§.length)
         {
            _loc2_ = §5!R§.getItemByName("Button_Coke" + _loc1_).mClip;
            (_loc2_.TextField_LevelNumCoke.text as TextField).mouseEnabled = false;
            if(§9!V§.§6p§(HighscoreSidebar.§!^§[_loc1_ - 1]))
            {
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNumCoke.text.text = _loc1_;
               if(_loc2_.TextField_LevelPersonalCount)
               {
                  _loc2_.TextField_LevelPersonalCount.visible = false;
               }
               _loc3_ = §"!@§.§-5§.§9!8§(HighscoreSidebar.§!^§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else if(_loc1_ == 6)
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               _loc2_.TextField_LevelPersonalCount.visible = true;
               _loc2_.TextField_LevelPersonalCount.text.text = "" + §"!@§.§-5§.§3S§ + "/" + PERSONAL_LEVEL_LOCK_LIMIT1;
            }
            else if(_loc1_ == 7)
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               _loc2_.TextField_LevelPersonalCount.visible = true;
               _loc2_.TextField_LevelPersonalCount.text.text = "" + §"!@§.§-5§.§3S§ + "/" + PERSONAL_LEVEL_LOCK_LIMIT2;
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
         var _loc3_:§<!+§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         for each(_loc3_ in this.§-!"§)
         {
            _loc3_.update(param1);
         }
         §,!1§.§>o§.update(param1);
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§!^§.length)
         {
            if(param2 == "COKE" + (_loc5_ + 1))
            {
               if(§9!V§.§6p§(§!!d§.§#P§(HighscoreSidebar.§!^§[_loc5_])))
               {
                  §!!d§.§do §(§!!d§.§#P§(HighscoreSidebar.§!^§[_loc5_]));
                  mNextState = StateCutScene.§^6§;
               }
               else if(_loc5_ == 5 || _loc5_ == 6)
               {
                  §#!P§.§1@§(§5!R§,_loc5_);
               }
               else if(_loc5_ == 7 || _loc5_ == 8 || _loc5_ == 9)
               {
                  §#!P§.§"A§(§5!R§);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BACK":
               mNextState = §3v§.§^6§;
         }
      }
      
      private function § X§() : void
      {
         this.§3!W§ = new Timer(250);
         this.§]!E§ = 0;
         this.§3!W§.addEventListener(TimerEvent.TIMER,this.§"&§);
         this.§3!W§.start();
      }
      
      private function §;!Z§() : void
      {
         var _loc1_:§<!+§ = null;
         if(this.§3!W§)
         {
            this.§3!W§.stop();
            this.§3!W§.removeEventListener(TimerEvent.TIMER,this.§"&§);
         }
         for each(_loc1_ in this.§-!"§)
         {
            if(§5!R§.contains(_loc1_))
            {
               §5!R§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§-!"§ = new Vector.<§<!+§>();
      }
      
      private function §"&§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§]!E§ == 0)
         {
            if(!this.§]R§(§?!P§) && §9!V§.§6p§("2-8") && §9!V§.§6p§("2-9") && §9!V§.§6p§("2-10") && §"!@§.§-5§.§[!Q§)
            {
               this.§1[§(§?!P§,true);
               _loc2_ = §5!R§.getItemByName("Button_Coke8").mClip;
               this.§"!T§(_loc2_,40);
               _loc2_ = §5!R§.getItemByName("Button_Coke9").mClip;
               this.§"!T§(_loc2_,40);
               _loc2_ = §5!R§.getItemByName("Button_Coke10").mClip;
               this.§"!T§(_loc2_,40);
            }
         }
         else
         {
            this.§3!W§.stop();
         }
         ++this.§]!E§;
      }
      
      private function §"!T§(param1:MovieClip, param2:int) : void
      {
         this.§[0§ = new §<!+§(§"!@§.§9<§,§"!@§.§7e§,param1.x,param1.y,§<!+§.§&! §,param2,100);
         §5!R§.addChild(this.§[0§);
         this.§-!"§.push(this.§[0§);
      }
      
      private function §1[§(param1:int, param2:Boolean) : void
      {
         var noOfGoal:int = param1;
         var value:Boolean = param2;
         try
         {
            if(noOfGoal == PERSONAL_GOAL_1)
            {
               §"!@§.§^b§.data.goal1 = value;
            }
            else if(noOfGoal == PERSONAL_GOAL_2)
            {
               §"!@§.§^b§.data.goal2 = value;
            }
            else if(noOfGoal == §?!P§)
            {
               §"!@§.§^b§.data.goal3 = value;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §]R§(param1:int) : Boolean
      {
         var noOfGoal:int = param1;
         var goalSeen:Boolean = false;
         try
         {
            if(noOfGoal == PERSONAL_GOAL_1)
            {
               goalSeen = §"!@§.§^b§.data.goal1;
            }
            else if(noOfGoal == PERSONAL_GOAL_2)
            {
               goalSeen = §"!@§.§^b§.data.goal2;
            }
            else if(noOfGoal == §?!P§)
            {
               goalSeen = §"!@§.§^b§.data.goal3;
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
