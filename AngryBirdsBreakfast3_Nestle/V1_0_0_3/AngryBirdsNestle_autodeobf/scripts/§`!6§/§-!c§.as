package §`!6§
{
   import §!",§.§7!+§;
   import §+j§.§@!_§;
   import §>!a§.§5l§;
   import §]!d§.§-!<§;
   
   public class §-!c§ extends §@!_§
   {
       
      
      protected var §^!§:§5l§;
      
      public function §-!c§(param1:§5l§, param2:Boolean, param3:String, param4:§-!<§)
      {
         this.§^!§ = param1;
         super(param2,param3,param4);
      }
      
      public function §4!g§() : void
      {
         this.§^!§.loadLevel(this.§^!§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&N§.§#Y§.§&%§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&N§.§#Y§.§&%§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§8"§ && §+C§ != §7!+§.§4"&§ && !§&N§.§#Y§.§@!H§.§1s§())
         {
            §8"§.run(param1);
         }
      }
   }
}
