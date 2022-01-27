package §!X§
{
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §7!@§.§6"§;
   import §7"l§.§,!Y§;
   
   public class §@!?§ extends §,!Y§
   {
       
      
      protected var § !p§:§7!m§;
      
      public function §@!?§(param1:§7!m§, param2:Boolean, param3:String, param4:§="B§)
      {
         this.§ !p§ = param1;
         super(param2,param3,param4);
      }
      
      public function § !Y§() : void
      {
         this.§ !p§.loadLevel(this.§ !p§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;"@§.singleton.§!# §.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §;"@§.singleton.§!# §.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§,_§ && §#"f§ != §6"§.§5![§ && !§;"@§.singleton.popupManager.§;"<§())
         {
            §,_§.run(param1);
         }
      }
   }
}
