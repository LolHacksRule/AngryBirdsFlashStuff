package §!X§
{
   import §"!P§.§3G§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §0R§.§0!8§;
   import §>P§.§5"3§;
   import com.angrybirds.§;!e§;
   
   public class §5!j§ extends §+!>§
   {
       
      
      protected var §7"i§:Boolean = false;
      
      public function §5!j§(param1:§7!m§, param2:§5"3§, param3:§="B§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function initLevelLoad() : void
      {
         §&"1§(§;!e§.§6!v§).§#"t§.§`§ = false;
         §&"1§(§;!e§.§6!v§).§#"t§.§`§ = true;
         super.initLevelLoad();
         this.loadPlayToken();
      }
      
      protected function loadPlayToken() : void
      {
         §3G§(§;"@§.singleton.dataModel.userProgress).§5O§(§ !p§.currentLevel,false);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return !§3G§(§;"@§.singleton.dataModel.userProgress).§"!I§ && super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + § !p§.currentLevelNumericName;
         §0!8§.§@!e§(_loc1_);
         §&"1§(§;!e§.§6!v§).§#"t§.§""6§();
         §&"1§(§;!e§.§6!v§).§#"t§.§`§ = false;
      }
   }
}
