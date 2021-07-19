package §<"c§
{
   import § §.§4#`§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §]!$§.§6y§;
   
   public class §]"_§ extends §4#`§
   {
       
      
      protected var §+!b§:§+"2§;
      
      public function §]"_§(param1:§+"2§, param2:Boolean, param3:String, param4:§5"H§)
      {
         this.§+!b§ = param1;
         super(param2,param3,param4);
      }
      
      public function §'$§() : void
      {
         this.§+!b§.loadLevel(this.§+!b§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4#;§.singleton.§4#,§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4#;§.singleton.§4#,§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§7!=§ && §`"B§ != §6y§.§8"@§ && !§4#;§.singleton.popupManager.§""n§())
         {
            §7!=§.run(param1);
         }
      }
   }
}
