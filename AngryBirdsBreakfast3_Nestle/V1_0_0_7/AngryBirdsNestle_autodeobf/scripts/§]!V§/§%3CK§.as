package §]!V§
{
   import §!P§.§5!1§;
   import §"q§.§6,§;
   import §'!u§.§&S§;
   import §@!l§.§<8§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   
   public class §<K§ extends §>!9§
   {
      
      public static const §+a§:String = "LevelEndFailStateRio";
       
      
      private var §<!M§:§<8§;
      
      public function §<K§(param1:§5!1§, param2:Boolean, param3:String, param4:§&S§)
      {
         super(param1,param2,param3,param4);
         this.§<!M§ = new §<8§(this);
      }
      
      override protected function init() : void
      {
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
      }
      
      protected function §[x§() : XML
      {
         return §=!A§.§`O§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §^!^§() : String
      {
         return StateEpisodeSelection.§+a§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!X§.§>!G§.§5!K§.closeAllPopups();
         §,!X§.§>!G§.§5!K§.openPopup(this.§<!M§,false,false);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(false);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§5!D§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §#Z§.§'0§.clearLevel();
         }
         this.§<!M§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §2!1§() : String
      {
         return §5!h§.§+a§;
      }
      
      public function §6h§() : String
      {
         return §&g§.§+a§;
      }
      
      public function §;v§(param1:String) : void
      {
         §8!`§(param1);
      }
      
      public function get §5!c§() : §5!1§
      {
         return §97§;
      }
      
      public function §5!4§() : void
      {
         var _loc1_:String = §97§.getValidLevelId(this.§5!c§.getNextLevelId());
         if(§6,§.§1!`§(_loc1_))
         {
            §97§.loadLevel(_loc1_);
            §8!`§(StateCutScene.§+a§);
         }
         else
         {
            §8!`§(§&g§.§+a§);
         }
      }
   }
}
