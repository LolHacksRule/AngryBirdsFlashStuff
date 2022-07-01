package §#!]§
{
   import §!"§.§^!7§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §2!,§.§+0§;
   import §2!s§.§0l§;
   import §3!0§.§`i§;
   import §7"6§.§^!_§;
   import §`!s§.§^2§;
   
   public class §#!N§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelEndStateRio";
       
      
      private var §#!c§:§+0§;
      
      public function §#!N§(param1:§-g§, param2:Boolean, param3:String, param4:§^!_§, param5:§0l§)
      {
         super(param1,param2,param3,param4);
         this.§#!c§ = new §+0§(this,param5);
      }
      
      protected function §';§() : XML
      {
         return §%!-§.§#t§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!2§.§7O§.§0!l§.closeAllPopups();
         §-!2§.§7O§.§0!l§.openPopup(this.§#!c§);
         §^2§.§&!;§.updateTextFields(§4!q§.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§#!c§.isOpen)
         {
            this.§#!c§.update(param1);
         }
         if(nextState.length > 0)
         {
            §`i§.§&!L§.clearLevel();
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
      
      public function §%4§() : String
      {
         return §6U§.§]!y§;
      }
      
      public function §8!8§() : String
      {
         return §[!d§.§]!y§;
      }
      
      public function §]?§(param1:String) : void
      {
         §]a§(param1);
      }
      
      public function get §8S§() : §-g§
      {
         return §#n§;
      }
      
      public function §9`§() : void
      {
         var _loc1_:String = this.§8S§.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? §#n§.getValidLevelId(this.§8S§.getNextLevelId()) : null;
         if(!_loc1_ || §^!7§.§#!,§(_loc2_))
         {
            §#n§.loadLevel(_loc2_);
            §]a§(StateCutScene.§]!y§);
         }
         else
         {
            §]a§(§=A§.§]!y§);
         }
      }
   }
}
