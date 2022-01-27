package §9%§
{
   import §"o§.§>!!§;
   import §%"%§.§2Z§;
   import §1z§.§^!@§;
   import §^S§.§6u§;
   
   public class §>!s§ extends §>!!§
   {
       
      
      protected var §#"=§:§^!@§;
      
      public function §>!s§(param1:§^!@§, param2:Boolean, param3:String, param4:§2Z§)
      {
         this.§#"=§ = param1;
         super(param2,param3,param4);
      }
      
      public function §7!&§() : void
      {
         this.§#"=§.loadLevel(this.§#"=§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §2&§.§6o§.§@!,§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §2&§.§6o§.§@!,§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§]! § && §3!D§ != §6u§.§-r§ && !§2&§.§6o§.§^7§.§"r§())
         {
            §]! §.run(param1);
         }
      }
   }
}
