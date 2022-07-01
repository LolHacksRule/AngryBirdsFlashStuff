package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&_§.§@Y§;
   import §63§.§^!!§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   
   public class §6!2§ extends §3!3§
   {
      
      public static const §7w§:String = "LevelEndFailStateRio";
       
      
      private var §8p§:§@Y§;
      
      public function §6!2§(param1:§ q§, param2:Boolean, param3:String, param4:§>u§)
      {
         super(param1,param2,param3,param4);
         this.§8p§ = new §@Y§(this);
      }
      
      override protected function init() : void
      {
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
      }
      
      protected function §;!<§() : XML
      {
         return §#p§.§'"0§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §<!!§() : String
      {
         return StateEpisodeSelection.§7w§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!I§.§[f§.§@!C§.closeAllPopups();
         §-!I§.§[f§.§@!C§.openPopup(this.§8p§,false,false);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(false);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§4!y§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §6!E§.§7I§.clearLevel();
         }
         this.§8p§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §8"0§() : String
      {
         return §4!R§.§7w§;
      }
      
      public function §9"1§() : String
      {
         return §^!+§.§7w§;
      }
      
      public function §2J§(param1:String) : void
      {
         §?n§(param1);
      }
      
      public function get §+!t§() : § q§
      {
         return §="4§;
      }
      
      public function §8!w§() : void
      {
         var _loc1_:String = §="4§.getValidLevelId(this.§+!t§.getNextLevelId());
         if(§^!!§.§=!"§(_loc1_))
         {
            §="4§.loadLevel(_loc1_);
            §?n§(StateCutScene.§7w§);
         }
         else
         {
            §?n§(§^!+§.§7w§);
         }
      }
   }
}
