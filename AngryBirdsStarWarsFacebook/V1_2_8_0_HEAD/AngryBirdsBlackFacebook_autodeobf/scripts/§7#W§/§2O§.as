package §7#W§
{
   import § "4§.§7q§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §2"Y§.§>"X§;
   import §<"c§.§6"k§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   
   public class §2O§ extends §6"k§
   {
      
      public static const §^!7§:String = "tournamentLevelLoad";
       
      
      public function §2O§(param1:§+"2§, param2:§>"X§, param3:§5"H§, param4:Boolean, param5:String = "tournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return !§7q§(§4#;§.singleton.dataModel.userProgress).§4r§ && super.isLoadingReady();
      }
      
      override protected function loadPlayToken() : void
      {
         var _loc1_:§?v§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
         if(!_loc1_.§3!@§)
         {
            _loc1_.§@#K§(_loc1_.energy - 1);
         }
         §7q§(§4#;§.singleton.dataModel.userProgress).§9"t§(§+!b§.currentLevel,true);
      }
      
      override protected function getPlayState() : String
      {
         return §2&§.§^!7§;
      }
   }
}
