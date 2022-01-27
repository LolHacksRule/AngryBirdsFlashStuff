package §7#W§
{
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §,"N§.§6"w§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §,"N§.§@>§;
   import §<"c§.§?#N§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §`"%§.§"!4§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class §2&§ extends §?#N§
   {
      
      public static const §^!7§:String = "stateTournamentPlay";
       
      
      public function §2&§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@#B§(§4#;§.singleton.dataModel).§!!C§.addEventListener(§@"b§.§3R§,this.onTournamentOver);
      }
      
      private function onTournamentOver(param1:Event) : void
      {
         § g§(§6!W§.§^!7§);
      }
      
      override public function deActivate() : void
      {
         §@#B§(§4#;§.singleton.dataModel).§!!C§.removeEventListener(§@"b§.§3R§,this.onTournamentOver);
         super.deActivate();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §2O§.§^!7§;
      }
      
      override protected function viewEventHandler(param1:§"!4§) : void
      {
         if(§03§)
         {
            return;
         }
         if(param1.type == §"!4§.RESTART_LEVEL && §@#B§(§4#;§.singleton.dataModel).§^"J§.energy <= 0)
         {
            §4#;§.singleton.popupManager.openPopup(new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP),true,true,true);
         }
         else
         {
            super.viewEventHandler(param1);
         }
      }
      
      override protected function getTutorialsToShow() : Vector.<String>
      {
         var _loc1_:Vector.<String> = super.getTutorialsToShow();
         var _loc2_:int = _loc1_.indexOf(§6"w§.§+!G§);
         if(_loc2_ != -1)
         {
            _loc1_.splice(_loc2_,1);
         }
         return _loc1_;
      }
      
      override public function getVictoryStateName() : String
      {
         return §'!O§.§^!7§;
      }
      
      override public function getLoserStateName() : String
      {
         return §9!b§.§^!7§;
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Pause"));
         §2!j§ = new §=#4§(_loc2_,§+!b§,_loc1_,§^"N§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Play"));
         §?#M§ = new §]"s§(_loc2_,§+!b§,§ F§,_loc1_,§^"N§);
      }
      
      override protected function showLevelScores() : void
      {
         var _loc1_:String = §+!b§.currentLevel;
         §@!m§(§4#;§.singleton).§""s§.showLevelScores(§+!b§.getEpisodeForLevel(§+!b§.currentLevel).name,_loc1_,true);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
      }
   }
}
