package §%!c§
{
   import §!X§.§2!C§;
   import §""d§.§,m§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §4m§.§^T§;
   import §<"s§.§0u§;
   import §<"s§.EnergyOutPopup;
   import §<I§.§'#!§;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import §`"8§.§4"K§;
   import §`"8§.§>6§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class §2![§ extends §2!C§
   {
      
      public static const §'#2§:String = "stateTournamentPlay";
       
      
      public function §2![§(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!w§(§;"@§.singleton.dataModel).§2!J§.addEventListener(§>6§.§ !A§,this.onTournamentOver);
      }
      
      private function onTournamentOver(param1:Event) : void
      {
         §0"B§(§@!#§.§'#2§);
      }
      
      override public function deActivate() : void
      {
         §-!w§(§;"@§.singleton.dataModel).§2!J§.removeEventListener(§>6§.§ !A§,this.onTournamentOver);
         super.deActivate();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §4"O§.§'#2§;
      }
      
      override protected function viewEventHandler(param1:§'#!§) : void
      {
         if(§[!1§)
         {
            return;
         }
         if(param1.type == §'#!§.RESTART_LEVEL && §-!w§(§;"@§.singleton.dataModel).§`!§.energy <= 0)
         {
            §;"@§.singleton.popupManager.openPopup(new EnergyOutPopup(§0u§.§1"J§,§^T§.TOP),true,true,true);
         }
         else
         {
            super.viewEventHandler(param1);
         }
      }
      
      override protected function getTutorialsToShow() : Vector.<String>
      {
         var _loc1_:Vector.<String> = super.getTutorialsToShow();
         var _loc2_:int = _loc1_.indexOf(§#f§.§"X§);
         if(_loc2_ != -1)
         {
            _loc1_.splice(_loc2_,1);
         }
         return _loc1_;
      }
      
      override public function getVictoryStateName() : String
      {
         return §%h§.§'#2§;
      }
      
      override public function getLoserStateName() : String
      {
         return §,"%§.§'#2§;
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§4"K§ = §;"@§.singleton.dataModel;
         var _loc2_:§,m§ = §,m§(§>I§.getItemByName("Container_Pause"));
         §<"6§ = new §@!+§(_loc2_,§ !p§,_loc1_,§8-§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§4"K§ = §;"@§.singleton.dataModel;
         var _loc2_:§,m§ = §,m§(§>I§.getItemByName("Container_Play"));
         §]"+§ = new §2!v§(_loc2_,§ !p§,§^!!§,_loc1_,§8-§);
      }
      
      override protected function showLevelScores() : void
      {
         var _loc1_:String = § !p§.currentLevel;
         §&"1§(§;"@§.singleton).§`!u§.showLevelScores(§ !p§.getEpisodeForLevel(§ !p§.currentLevel).name,_loc1_,true);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
      }
   }
}
