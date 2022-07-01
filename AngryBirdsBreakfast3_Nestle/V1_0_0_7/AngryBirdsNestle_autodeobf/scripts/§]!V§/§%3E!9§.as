package §]!V§
{
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §,a§.§[!d§;
   import §8!$§.§@![§;
   
   public class §>!9§ extends §@![§
   {
       
      
      protected var §97§:§5!1§;
      
      public function §>!9§(param1:§5!1§, param2:Boolean, param3:String, param4:§&S§)
      {
         this.§97§ = param1;
         super(param2,param3,param4);
      }
      
      public function §8!,§() : void
      {
         this.§97§.loadLevel(this.§97§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!X§.§>!G§.§!""§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,!X§.§>!G§.§!""§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§]z§ && §]s§ != §[!d§.§#^§ && !§,!X§.§>!G§.§5!K§.§@"-§())
         {
            §]z§.run(param1);
         }
      }
   }
}
