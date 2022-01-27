package §7!c§
{
   import §"!>§.§<!o§;
   import §""%§.§"!@§;
   import §'#§.§4!Q§;
   import §+!9§.§;0§;
   import §;!0§.§!!X§;
   import §;!0§.;
   import §;!0§.§]§;
   import §]!V§.§;!O§;
   import §`"!§.§<t§;
   
   public class §"!H§ extends §9!?§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §'"5§:§;!O§;
      
      private static var §9!M§:§"!@§;
       
      
      public function §"!H§(param1:§#2§, param2:§<!o§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §?"?§() : void
      {
         §>""§ = §-!9§;
      }
      
      override public function deActivate() : void
      {
         if(§'"5§)
         {
            §'"5§.§&v§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §"!@§
      {
         return new §"!@§(§,W§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§]§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§!!X§ = §,W§.getLevelForId(§,W§.currentLevel);
         if(_loc1_)
         {
            §`D§(_loc1_);
         }
         else
         {
            _loc2_ = §,W§.getEpisodeForLevel(§,W§.currentLevel);
            if(_loc2_)
            {
               if(!§9!M§)
               {
                  §9!M§ = this.initPackageManager();
               }
               if(!§'"5§)
               {
                  §'"5§ = new §;!O§();
                  _loc4_ = §+!t§.assetsUrl || "";
                  _loc5_ = §+!t§.buildNumber || "";
                  §'"5§.init(§<t§.§+Q§(),_loc4_,_loc5_,§9!M§);
               }
               §'"5§.§'!"§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §'"5§.§4=§(<pack url="{_loc3_}"/>);
               §'"5§.§%!1§(this.§32§);
            }
         }
      }
      
      protected function §32§() : void
      {
         var _loc1_:§!!X§ = §,W§.getLevelForId(§,W§.currentLevel);
         if(_loc1_)
         {
            §`D§(_loc1_);
            return;
         }
         throw new Error("Level " + §,W§.currentLevel + " not found in the package",§4!Q§.§;!w§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §;0§.§@!^§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §;0§.§@!^§.§+t§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §2g§(this.§'"-§());
      }
      
      protected function §'"-§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §2g§(§!!Q§.STATE_NAME);
      }
      
      public function §``§(param1:int) : void
      {
         §]!f§ = param1;
         §>""§ = §-!9§;
      }
   }
}
