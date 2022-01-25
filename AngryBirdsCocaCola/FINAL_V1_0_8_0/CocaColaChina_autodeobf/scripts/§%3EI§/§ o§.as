package §>I§
{
   import § !C§.§6!W§;
   import § ]§.HighscoreSidebar;
   import §"m§.§#e§;
   import §%!^§.§"=§;
   import §&"§.§!!_§;
   import §&$§.§6g§;
   import §&V§.§9t§;
   import §-"§.§,_§;
   import §0!_§.§-!F§;
   import §0!_§.§>!'§;
   import §0!b§.§#!=§;
   import §]n§.§=!O§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class § o§ extends §for §
   {
      
      public static const § !P§:String = "LevelSelectionStateCola";
      
      public static const PERSONAL_LEVEL_LOCK_LIMIT1:int = 15;
      
      public static const PERSONAL_LEVEL_LOCK_LIMIT2:int = 40;
      
      public static const PERSONAL_GOAL_1:int = 1;
      
      public static const PERSONAL_GOAL_2:int = 2;
      
      public static const §?!&§:int = 3;
       
      
      private var §5t§:§#e§ = null;
      
      private var §@!S§:§-!F§;
      
      private var §]!B§:Vector.<§-!F§>;
      
      private var §;!^§:Timer;
      
      private var §^E§:int;
      
      private var §02§:Boolean = false;
      
      public function § o§(param1:Boolean = false, param2:String = "LevelSelectionStateCola")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]Z§ = new §>!'§(75,0,0,1);
         §^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_LevelSelectionCola[0]);
         this.§5t§ = new §!!_§(§#!=§.§&![§,"INGAME_THEME_1",false,3);
         this.§]!B§ = new Vector.<§-!F§>();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§02§)
         {
            this.§02§ = true;
            §6g§.§+!J§(§6g§.§8&§);
         }
         §^c§.enableHighScoreTab(true);
         §#!=§.§&![§.§[!&§(true);
         §#!=§.§&![§.§0!D§(true);
         §#!=§.§&![§.clearLevel();
         §#!=§.§5!7§(this.§5t§);
         this.§5t§.init();
         §-!#§.§2t§ = § !P§;
         §-!#§.§each §();
         this.§&?§();
         this.§]!9§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§,!c§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §^c§.changeState(§^c§.currentState);
      }
      
      private function §&?§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§9Y§.length)
         {
            _loc2_ = §^!;§.getItemByName("Button_Coke" + _loc1_).mClip;
            (_loc2_.TextField_LevelNumCoke.text as TextField).mouseEnabled = false;
            if(§,_§.§%!F§(HighscoreSidebar.§9Y§[_loc1_ - 1]))
            {
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNumCoke.text.text = _loc1_;
               if(_loc2_.TextField_LevelPersonalCount)
               {
                  _loc2_.TextField_LevelPersonalCount.visible = false;
               }
               _loc3_ = §-!#§.§4,§.§=J§(HighscoreSidebar.§9Y§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else if(_loc1_ == 6)
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               _loc2_.TextField_LevelPersonalCount.visible = true;
               _loc2_.TextField_LevelPersonalCount.text.text = "" + §-!#§.§4,§.§<M§ + "/" + PERSONAL_LEVEL_LOCK_LIMIT1;
            }
            else if(_loc1_ == 7)
            {
               _loc2_.TextField_LevelNumCoke.text.text = "";
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
               _loc2_.TextField_LevelPersonalCount.visible = true;
               _loc2_.TextField_LevelPersonalCount.text.text = "" + §-!#§.§4,§.§<M§ + "/" + PERSONAL_LEVEL_LOCK_LIMIT2;
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
         var _loc3_:§-!F§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         for each(_loc3_ in this.§]!B§)
         {
            _loc3_.update(param1);
         }
         §#!=§.§3!W§.update(param1);
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§9Y§.length)
         {
            if(param2 == "COKE" + (_loc5_ + 1))
            {
               if(§,_§.§%!F§(§"=§.§&N§(HighscoreSidebar.§9Y§[_loc5_])))
               {
                  §"=§.§ H§(§"=§.§&N§(HighscoreSidebar.§9Y§[_loc5_]));
                  mNextState = StateCutScene.§ !P§;
               }
               else if(_loc5_ == 5 || _loc5_ == 6)
               {
                  §=!O§.§]!_§(§^!;§,_loc5_);
               }
               else if(_loc5_ == 7 || _loc5_ == 8 || _loc5_ == 9)
               {
                  §=!O§.§,!U§(§^!;§);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BACK":
               mNextState = §91§.§ !P§;
         }
      }
      
      private function §]!9§() : void
      {
         this.§;!^§ = new Timer(250);
         this.§^E§ = 0;
         this.§;!^§.addEventListener(TimerEvent.TIMER,this.§`,§);
         this.§;!^§.start();
      }
      
      private function §,!c§() : void
      {
         var _loc1_:§-!F§ = null;
         if(this.§;!^§)
         {
            this.§;!^§.stop();
            this.§;!^§.removeEventListener(TimerEvent.TIMER,this.§`,§);
         }
         for each(_loc1_ in this.§]!B§)
         {
            if(§^!;§.contains(_loc1_))
            {
               §^!;§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§]!B§ = new Vector.<§-!F§>();
      }
      
      private function §`,§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§^E§ == 0)
         {
            if(!this.§@L§(§?!&§) && §,_§.§%!F§("2-8") && §,_§.§%!F§("2-9") && §,_§.§%!F§("2-10") && §-!#§.§4,§.§>b§)
            {
               this.§1!L§(§?!&§,true);
               _loc2_ = §^!;§.getItemByName("Button_Coke8").mClip;
               this.§3W§(_loc2_,40);
               _loc2_ = §^!;§.getItemByName("Button_Coke9").mClip;
               this.§3W§(_loc2_,40);
               _loc2_ = §^!;§.getItemByName("Button_Coke10").mClip;
               this.§3W§(_loc2_,40);
            }
         }
         else
         {
            this.§;!^§.stop();
         }
         ++this.§^E§;
      }
      
      private function §3W§(param1:MovieClip, param2:int) : void
      {
         this.§@!S§ = new §-!F§(§-!#§.§6`§,§-!#§.§?!E§,param1.x,param1.y,§-!F§.§#7§,param2,100);
         §^!;§.addChild(this.§@!S§);
         this.§]!B§.push(this.§@!S§);
      }
      
      private function §1!L§(param1:int, param2:Boolean) : void
      {
         var noOfGoal:int = param1;
         var value:Boolean = param2;
         try
         {
            if(noOfGoal == PERSONAL_GOAL_1)
            {
               §-!#§.§3!V§.data.goal1 = value;
            }
            else if(noOfGoal == PERSONAL_GOAL_2)
            {
               §-!#§.§3!V§.data.goal2 = value;
            }
            else if(noOfGoal == §?!&§)
            {
               §-!#§.§3!V§.data.goal3 = value;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §@L§(param1:int) : Boolean
      {
         var noOfGoal:int = param1;
         var goalSeen:Boolean = false;
         try
         {
            if(noOfGoal == PERSONAL_GOAL_1)
            {
               goalSeen = §-!#§.§3!V§.data.goal1;
            }
            else if(noOfGoal == PERSONAL_GOAL_2)
            {
               goalSeen = §-!#§.§3!V§.data.goal2;
            }
            else if(noOfGoal == §?!&§)
            {
               goalSeen = §-!#§.§3!V§.data.goal3;
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
