package §%!c§
{
   import §!X§.§5!j§;
   import §"!P§.§3G§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §>P§.§5"3§;
   import §`"8§.§-!w§;
   import §`"8§.§@T§;
   
   public class §4"O§ extends §5!j§
   {
      
      public static const §'#2§:String = "tournamentLevelLoad";
       
      
      public function §4"O§(param1:§7!m§, param2:§5"3§, param3:§="B§, param4:Boolean, param5:String = "tournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return !§3G§(§;"@§.singleton.dataModel.userProgress).§"!I§ && super.isLoadingReady();
      }
      
      override protected function loadPlayToken() : void
      {
         var _loc1_:§@T§ = §-!w§(§;"@§.singleton.dataModel).§`!§;
         if(!_loc1_.§'O§)
         {
            _loc1_.§&"?§(_loc1_.energy - 1);
         }
         §3G§(§;"@§.singleton.dataModel.userProgress).§5O§(§ !p§.currentLevel,true);
      }
      
      override protected function getPlayState() : String
      {
         return §2![§.§'#2§;
      }
   }
}
