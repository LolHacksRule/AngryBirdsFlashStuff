package §;!§
{
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §>1§.§2B§;
   import §?z§.§4!C§;
   
   public class §;" § extends §4!C§
   {
       
      
      protected var §&" §:§5!Y§;
      
      public function §;" §(param1:§5!Y§, param2:Boolean, param3:String, param4:§6h§)
      {
         this.§&" § = param1;
         super(param2,param3,param4);
      }
      
      public function §!x§() : void
      {
         this.§&" §.loadLevel(this.§&" §.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!!§.singleton.§@!>§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §6!!§.singleton.§@!>§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§#1§ && §]P§ != §2B§.§0!&§ && !§6!!§.singleton.§%![§.§%&§())
         {
            §#1§.run(param1);
         }
      }
   }
}
