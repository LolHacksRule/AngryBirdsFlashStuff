package §`!6§
{
   import §=X§.§3j§;
   import §>!a§.§5l§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import §`q§.§=!,§;
   import com.angrybirds.§4!l§;
   
   public class §#!Z§ extends §-!c§
   {
      
      public static const §]O§:String = "LevelEndFailStateRio";
       
      
      private var §+!U§:§=!,§;
      
      public function §#!Z§(param1:§5l§, param2:Boolean, param3:String, param4:§-!<§)
      {
         super(param1,param2,param3,param4);
         this.§+!U§ = new §=!,§(this);
      }
      
      override protected function init() : void
      {
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
      }
      
      protected function §@A§() : XML
      {
         return §"!j§.§3=§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §98§() : String
      {
         return StateEpisodeSelection.§]O§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&N§.§#Y§.§@!H§.closeAllPopups();
         §&N§.§#Y§.§@!H§.openPopup(this.§+!U§,false,false);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(false);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"$§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §4!l§.§,!8§.clearLevel();
         }
         this.§+!U§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §=!Y§() : String
      {
         return §-%§.§]O§;
      }
      
      public function §8!+§() : String
      {
         return §?E§.§]O§;
      }
      
      public function §-"'§(param1:String) : void
      {
         §8=§(param1);
      }
      
      public function get §2!V§() : §5l§
      {
         return §^!§;
      }
      
      public function §6t§() : void
      {
         var _loc1_:String = §^!§.getValidLevelId(this.§2!V§.getNextLevelId());
         if(§3j§.§@z§(_loc1_))
         {
            §^!§.loadLevel(_loc1_);
            §8=§(StateCutScene.§]O§);
         }
         else
         {
            §8=§(§?E§.§]O§);
         }
      }
   }
}
