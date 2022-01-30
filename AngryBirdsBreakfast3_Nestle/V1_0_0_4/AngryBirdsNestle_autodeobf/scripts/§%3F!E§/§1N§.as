package §?!E§
{
   import §%9§.§=!K§;
   import §'<§.§=!o§;
   import §-!G§.§!!Y§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §;!b§.§%>§;
   import com.angrybirds.§6U§;
   
   public class §1N§ extends §5"#§
   {
      
      public static const §+B§:String = "LevelEndFailStateRio";
       
      
      private var §9! §:§=!K§;
      
      public function §1N§(param1:§=!o§, param2:Boolean, param3:String, param4:§%>§)
      {
         super(param1,param2,param3,param4);
         this.§9! § = new §=!K§(this);
      }
      
      override protected function init() : void
      {
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
      }
      
      protected function §^!!§() : XML
      {
         return §+!b§.§#!P§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §<5§() : String
      {
         return StateEpisodeSelection.§+B§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!l§.§"x§.§,!W§.closeAllPopups();
         §-!l§.§"x§.§,!W§.openPopup(this.§9! §,false,false);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(false);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§;!m§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §6U§.§+_§.clearLevel();
         }
         this.§9! §.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §<"#§() : String
      {
         return §62§.§+B§;
      }
      
      public function §2!q§() : String
      {
         return §]l§.§+B§;
      }
      
      public function §2w§(param1:String) : void
      {
         §0!w§(param1);
      }
      
      public function get §6!N§() : §=!o§
      {
         return §+o§;
      }
      
      public function §`H§() : void
      {
         var _loc1_:String = §+o§.getValidLevelId(this.§6!N§.getNextLevelId());
         if(§!!Y§.§5!=§(_loc1_))
         {
            §+o§.loadLevel(_loc1_);
            §0!w§(StateCutScene.§+B§);
         }
         else
         {
            §0!w§(§]l§.§+B§);
         }
      }
   }
}
