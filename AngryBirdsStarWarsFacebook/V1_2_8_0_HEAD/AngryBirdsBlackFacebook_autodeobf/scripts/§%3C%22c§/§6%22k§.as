package §<"c§
{
   import § "4§.§7q§;
   import §#!'§.§6"]§;
   import §2"Y§.§>"X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   
   public class §6"k§ extends §9#5§
   {
      
      public static var §@!1§:Boolean = false;
       
      
      protected var §[!z§:Boolean = false;
      
      public function §6"k§(param1:§+"2§, param2:§>"X§, param3:§5"H§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function initLevelLoad() : void
      {
         §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
         §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = true;
         super.initLevelLoad();
         this.loadPlayToken();
      }
      
      protected function loadPlayToken() : void
      {
         if(§@!1§)
         {
            return;
         }
         §7q§(§4#;§.singleton.dataModel.userProgress).§9"t§(§+!b§.currentLevel,false);
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(§@!1§ && super.isLoadingReady())
         {
            return true;
         }
         return !§7q§(§4#;§.singleton.dataModel.userProgress).§4r§ && super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + §+!b§.currentLevelNumericName;
         §6"]§.§'7§(_loc1_);
         §@!m§(§,!q§.§>#D§).§ "g§.§9O§();
         §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
      }
   }
}
