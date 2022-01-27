package §%"Q§
{
   import §&!j§.§5#+§;
   import §'"I§.§1-§;
   import §9§.§1" §;
   import §null §.§5#§;
   
   public class §`!6§ extends §1" §
   {
       
      
      protected var §'""§:§5#§;
      
      public function §`!6§(param1:§5#§, param2:Boolean, param3:String, param4:§5#+§)
      {
         this.§'""§ = param1;
         super(param2,param3,param4);
      }
      
      public function §`"y§() : void
      {
         this.§'""§.loadLevel(this.§'""§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"#§.singleton.§1!L§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4"#§.singleton.§1!L§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§[#§ && §,"-§ != §1-§.§@B§ && !§4"#§.singleton.popupManager.§#"E§())
         {
            §[#§.run(param1);
         }
      }
   }
}
