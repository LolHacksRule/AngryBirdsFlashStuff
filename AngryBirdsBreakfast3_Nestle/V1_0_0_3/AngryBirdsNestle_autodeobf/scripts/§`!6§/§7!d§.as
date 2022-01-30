package §`!6§
{
   import §!!<§.§-"4§;
   import §-!F§.§[!Q§;
   import §=X§.§3j§;
   import §>!a§.§5l§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import §`q§.§`!H§;
   import com.angrybirds.§4!l§;
   
   public class §7!d§ extends §-!c§
   {
      
      public static const §]O§:String = "LevelEndStateRio";
       
      
      private var §+!U§:§`!H§;
      
      public function §7!d§(param1:§5l§, param2:Boolean, param3:String, param4:§-!<§, param5:§-"4§)
      {
         super(param1,param2,param3,param4);
         this.§+!U§ = new §`!H§(this,param5);
      }
      
      protected function §@A§() : XML
      {
         return §"!j§.§3=§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&N§.§#Y§.§@!H§.closeAllPopups();
         §&N§.§#Y§.§@!H§.openPopup(this.§+!U§);
         §[!Q§.§=J§.updateTextFields(§!^§.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§+!U§.isOpen)
         {
            this.§+!U§.update(param1);
         }
         if(nextState.length > 0)
         {
            §4!l§.§,!8§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §?O§() : String
      {
         return §-%§.§]O§;
      }
      
      public function §9W§() : String
      {
         return §,z§.§]O§;
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
         var _loc1_:String = this.§2!V§.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? §^!§.getValidLevelId(this.§2!V§.getNextLevelId()) : null;
         if(!_loc1_ || §3j§.§@z§(_loc2_))
         {
            §^!§.loadLevel(_loc2_);
            §8=§(StateCutScene.§]O§);
         }
         else
         {
            §8=§(§?E§.§]O§);
         }
      }
   }
}
