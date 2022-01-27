package §8"'§
{
   import §#g§.§>"-§;
   import §%"Q§.§;?§;
   import §&!j§.§5#+§;
   import §9"U§.§,!c§;
   import §9"U§.§7"1§;
   import §`"n§.§""r§;
   import §null §.§5#§;
   
   public class §-0§ extends §;?§
   {
      
      public static const §-!U§:String = "tournamentLevelLoad";
       
      
      public function §-0§(param1:§5#§, param2:§>"-§, param3:§5#+§, param4:Boolean, param5:String = "tournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return !§""r§(§4"#§.singleton.dataModel.userProgress).§<S§ && super.isLoadingReady();
      }
      
      override protected function loadPlayToken() : void
      {
         var _loc1_:§,!c§ = §7"1§(§4"#§.singleton.dataModel).§9"$§;
         if(!_loc1_.§&!3§)
         {
            _loc1_.§9!s§(_loc1_.energy - 1);
         }
         §""r§(§4"#§.singleton.dataModel.userProgress).§5#6§(§'""§.currentLevel,true);
      }
      
      override protected function getPlayState() : String
      {
         return §0h§.§-!U§;
      }
   }
}
