package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3C§.§ "A§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §'u§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §?"§:§ "A§;
      
      public function §'u§(param1:§9"!§, param2:Boolean, param3:String, param4:§3!'§)
      {
         super(param1,param2,param3,param4);
         this.§?"§ = new § "A§(this);
      }
      
      override protected function init() : void
      {
         §8!A§ = new §1"F§(this);
         §8!A§.init(this.§!!n§());
      }
      
      protected function §!!n§() : XML
      {
         return §-G§.§4+§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §76§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !g§.§;!'§.§>";§.§@;§();
         § !g§.§;!'§.§>";§.openPopup(this.§?"§,false,false);
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §9q§.§>!L§.clearLevel();
         }
         this.§?"§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §^!m§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      public function §4?§() : String
      {
         return §]J§.STATE_NAME;
      }
      
      public function §+"$§(param1:String) : void
      {
         §8!^§(param1);
      }
      
      public function get §=!+§() : §9"!§
      {
         return §6u§;
      }
      
      public function §@!§() : void
      {
         §6u§.loadLevel(§6u§.getValidLevelId(this.§=!+§.getNextLevelId()));
         §8!^§(§?!#§.STATE_NAME);
      }
   }
}
