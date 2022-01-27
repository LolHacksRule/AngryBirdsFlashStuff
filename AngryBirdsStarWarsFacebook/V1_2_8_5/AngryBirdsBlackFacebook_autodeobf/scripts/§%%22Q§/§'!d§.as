package §%"Q§
{
   import §#g§.§>"-§;
   import §&!j§.§5#+§;
   import §9"U§.§8"<§;
   import §9"U§.§9U§;
   import §null §.§ #$§;
   import §null §.§5#§;
   
   public class §'!d§ extends §7"9§
   {
       
      
      protected var §7W§:§>"-§;
      
      public function §'!d§(param1:§5#§, param2:§>"-§, param3:§5#+§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         this.§7W§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function initPackageManager() : §9U§
      {
         return new §8"<§(§'""§,this.§7W§);
      }
      
      override protected function setLoadingText() : void
      {
         §^!b§.setText("Loading " + § #$§(§'""§).getPrettyLevelString(§'""§.currentLevel),"TextField_LevelLoading");
      }
   }
}
