package §8!_§
{
   import §!?§.§,!8§;
   import §!?§.§@"C§;
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §`!j§.§9"!§;
   
   public class §6]§ extends §?!#§
   {
       
      
      protected var §3"4§:§8"F§;
      
      public function §6]§(param1:§9"!§, param2:§3!'§, param3:§8"F§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§3"4§ = param3;
            do
            {
               super(param1,param2,param4,param5);
            }
            while(_loc7_ && param1);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.deActivate();
         }
      }
      
      override protected function initPackageManager() : §@"C§
      {
         return new §,!8§(§6u§,this.§3"4§);
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!^§(StateEpisodeSelection.STATE_NAME);
         }
      }
   }
}
