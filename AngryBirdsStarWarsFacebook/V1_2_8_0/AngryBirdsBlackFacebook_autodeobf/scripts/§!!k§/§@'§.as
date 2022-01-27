package §!!k§
{
   import §9"U§.§9U§;
   import §@[§.§ !0§;
   import §@[§.§<!+§;
   import §null §.§5#§;
   
   public class §@'§ extends § !0§
   {
       
      
      protected var §'""§:§5#§;
      
      public function §@'§(param1:String, param2:String, param3:§5#§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.§'""§ = param3;
      }
      
      protected function initPackageManager() : §9U§
      {
         return new §9U§(this.§'""§);
      }
      
      override protected function initPackageLoader() : §<!+§
      {
         return this.initPackageManager();
      }
   }
}
