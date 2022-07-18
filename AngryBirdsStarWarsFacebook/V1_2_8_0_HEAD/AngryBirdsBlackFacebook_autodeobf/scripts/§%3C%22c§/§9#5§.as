package §<"c§
{
   import §,"N§.§'#E§;
   import §,"N§.§0#F§;
   import §2"Y§.§>"X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§,"X§;
   
   public class §9#5§ extends §<2§
   {
       
      
      protected var §?4§:§>"X§;
      
      public function §9#5§(param1:§+"2§, param2:§>"X§, param3:§5"H§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         this.§?4§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function initPackageManager() : §'#E§
      {
         return new §0#F§(§+!b§,this.§?4§);
      }
      
      override protected function setLoadingText() : void
      {
         §@;§.setText("Loading " + §,"X§(§+!b§).getPrettyLevelString(§+!b§.currentLevel),"TextField_LevelLoading");
      }
   }
}
