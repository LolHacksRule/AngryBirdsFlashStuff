package §]!V§
{
   import §!!&§.§`!$§;
   import §!P§.§5!1§;
   import §"q§.§6,§;
   import §'!u§.§&S§;
   import §@!l§.§`! §;
   import §[^§.§'g§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   
   public class §[!G§ extends §>!9§
   {
      
      public static const §+a§:String = "LevelEndStateRio";
       
      
      private var §<!M§:§`! §;
      
      public function §[!G§(param1:§5!1§, param2:Boolean, param3:String, param4:§&S§, param5:§'g§)
      {
         super(param1,param2,param3,param4);
         this.§<!M§ = new §`! §(this,param5);
      }
      
      protected function §[x§() : XML
      {
         return §=!A§.§`O§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!X§.§>!G§.§5!K§.closeAllPopups();
         §,!X§.§>!G§.§5!K§.openPopup(this.§<!M§);
         §`!$§.§>!P§.updateTextFields(§5+§.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§<!M§.isOpen)
         {
            this.§<!M§.update(param1);
         }
         if(nextState.length > 0)
         {
            §#Z§.§'0§.clearLevel();
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
      
      public function §2!p§() : String
      {
         return §5!h§.§+a§;
      }
      
      public function §0!P§() : String
      {
         return §0X§.§+a§;
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
         var _loc1_:String = this.§5!c§.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? §97§.getValidLevelId(this.§5!c§.getNextLevelId()) : null;
         if(!_loc1_ || §6,§.§1!`§(_loc2_))
         {
            §97§.loadLevel(_loc2_);
            §8!`§(StateCutScene.§+a§);
         }
         else
         {
            §8!`§(§&g§.§+a§);
         }
      }
   }
}
