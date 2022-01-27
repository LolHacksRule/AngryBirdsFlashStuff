package §8"'§
{
   import §%"Q§.§-"B§;
   import §&!j§.§5#+§;
   import §+"Y§.EnergyOutPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §18§.§-!>§;
   import §9"U§.§'!;§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §9"U§.§[!s§;
   import §=Z§.§@!8§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import §null §.§5#§;
   
   public class §0h§ extends §-"B§
   {
      
      public static const §-!U§:String = "stateTournamentPlay";
       
      
      public function §0h§(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7"1§(§4"#§.singleton.dataModel).§1z§.addEventListener(§[!s§.§,!4§,this.onTournamentOver);
      }
      
      private function onTournamentOver(param1:Event) : void
      {
         §`0§(§4!T§.§-!U§);
      }
      
      override public function deActivate() : void
      {
         §7"1§(§4"#§.singleton.dataModel).§1z§.removeEventListener(§[!s§.§,!4§,this.onTournamentOver);
         super.deActivate();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §-0§.§-!U§;
      }
      
      override protected function viewEventHandler(param1:§-!>§) : void
      {
         if(§"D§)
         {
            return;
         }
         if(param1.type == §-!>§.RESTART_LEVEL && §7"1§(§4"#§.singleton.dataModel).§9"$§.energy <= 0)
         {
            §4"#§.singleton.popupManager.openPopup(new EnergyOutPopup(§^!S§.§'"c§,§2!s§.TOP),true,true,true);
         }
         else
         {
            super.viewEventHandler(param1);
         }
      }
      
      override protected function getTutorialsToShow() : Vector.<String>
      {
         var _loc1_:Vector.<String> = super.getTutorialsToShow();
         var _loc2_:int = _loc1_.indexOf(§[!b§.§9!m§);
         if(_loc2_ != -1)
         {
            _loc1_.splice(_loc2_,1);
         }
         return _loc1_;
      }
      
      override public function getVictoryStateName() : String
      {
         return §`k§.§-!U§;
      }
      
      override public function getLoserStateName() : String
      {
         return §6!W§.§-!U§;
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§'!;§ = §4"#§.singleton.dataModel;
         var _loc2_:§@!8§ = §@!8§(§^!b§.getItemByName("Container_Pause"));
         §,8§ = new §<n§(_loc2_,§'""§,_loc1_,§-1§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§'!;§ = §4"#§.singleton.dataModel;
         var _loc2_:§@!8§ = §@!8§(§^!b§.getItemByName("Container_Play"));
         §-S§ = new §?W§(_loc2_,§'""§,§3!d§,_loc1_,§-1§);
      }
      
      override protected function showLevelScores() : void
      {
         var _loc1_:String = §'""§.currentLevel;
         §throw§(§4"#§.singleton).§?"T§.showLevelScores(§'""§.getEpisodeForLevel(§'""§.currentLevel).name,_loc1_,true);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
      }
   }
}
