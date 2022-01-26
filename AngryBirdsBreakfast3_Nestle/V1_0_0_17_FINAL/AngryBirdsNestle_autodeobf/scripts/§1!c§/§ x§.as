package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §'!3§.§>!F§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4!i§.§@"#§;
   import §4[§.§2P§;
   
   public class § x§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndStateRio";
       
      
      private var §>o§:§>!F§;
      
      public function § x§(param1:§0![§, param2:Boolean, param3:String, param4:§+f§, param5:§4O§)
      {
         super(param1,param2,param3,param4);
         this.§>o§ = new §>!F§(this,param5);
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !4§.§%"7§.§+!J§.closeAllPopups();
         § !4§.§%"7§.§+!J§.openPopup(this.§>o§);
         §@"#§.§,2§.updateTextFields(§^!T§.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§>o§.isOpen)
         {
            this.§>o§.update(param1);
         }
         if(nextState.length > 0)
         {
            §@!S§.§2A§.clearLevel();
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
      
      public function §!!n§() : String
      {
         return §'8§.§8"%§;
      }
      
      public function §>-§() : String
      {
         return §;D§.§8"%§;
      }
      
      public function §'l§(param1:String) : void
      {
         §7"6§(param1);
      }
      
      public function get §[!,§() : §0![§
      {
         return §4a§;
      }
      
      public function §,"#§() : void
      {
         var _loc1_:String = this.§[!,§.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? §4a§.getValidLevelId(this.§[!,§.getNextLevelId()) : null;
         if(!_loc1_ || §2P§.§0!a§(_loc2_))
         {
            §4a§.loadLevel(_loc2_);
            §7"6§(StateCutScene.§8"%§);
         }
         else
         {
            §7"6§(§^j§.§8"%§);
         }
      }
   }
}
