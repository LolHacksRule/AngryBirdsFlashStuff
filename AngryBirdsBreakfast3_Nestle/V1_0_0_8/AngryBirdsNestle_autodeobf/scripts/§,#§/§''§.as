package §,#§
{
   import §"!G§.§3!f§;
   import §&!>§.§2!V§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §?I§.§;!N§;
   import com.angrybirds.§4"6§;
   
   public class §''§ extends §@!4§
   {
      
      public static const §'u§:String = "LevelEndFailStateRio";
       
      
      private var §>R§:§;!N§;
      
      public function §''§(param1:§3"&§, param2:Boolean, param3:String, param4:§3!f§)
      {
         super(param1,param2,param3,param4);
         this.§>R§ = new §;!N§(this);
      }
      
      override protected function init() : void
      {
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
      }
      
      protected function §'!N§() : XML
      {
         return §8!1§.§31§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §^!+§() : String
      {
         return StateEpisodeSelection.§'u§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-O§.§5!1§.§-6§.closeAllPopups();
         §-O§.§5!1§.§-6§.openPopup(this.§>R§,false,false);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(false);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!b§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §4"6§.§;!k§.clearLevel();
         }
         this.§>R§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §9!&§() : String
      {
         return § K§.§'u§;
      }
      
      public function §4;§() : String
      {
         return §=%§.§'u§;
      }
      
      public function §7I§(param1:String) : void
      {
         §'"6§(param1);
      }
      
      public function get §4!d§() : §3"&§
      {
         return §!3§;
      }
      
      public function § !_§() : void
      {
         var _loc1_:String = §!3§.getValidLevelId(this.§4!d§.getNextLevelId());
         if(§2!V§.§"L§(_loc1_))
         {
            §!3§.loadLevel(_loc1_);
            §'"6§(StateCutScene.§'u§);
         }
         else
         {
            §'"6§(§=%§.§'u§);
         }
      }
   }
}
