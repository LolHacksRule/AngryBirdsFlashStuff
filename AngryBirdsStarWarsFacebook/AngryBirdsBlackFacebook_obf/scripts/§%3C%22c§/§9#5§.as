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
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            this.§?4§ = param2;
         }
         do
         {
            super(param1,param3,param4,param5);
         }
         while(_loc7_ && param3);
         
      }
      
      override protected function initPackageManager() : §'#E§
      {
         return new §0#F§(§+!b§,this.§?4§);
      }
      
      override protected function setLoadingText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §@;§.setText("Loading " + §,"X§(§+!b§).getPrettyLevelString(§+!b§.currentLevel),"TextField_LevelLoading");
         }
      }
   }
}
