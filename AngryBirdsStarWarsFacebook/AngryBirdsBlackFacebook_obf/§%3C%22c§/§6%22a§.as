package §<"c§
{
   import §+D§.§ #^§;
   import §,"N§.§@>§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;!W§.§%,§;
   import §;!W§.§5!b§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   
   public class §6"a§ extends StatePlay
   {
       
      
      public function §6"a§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StatePlay")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@;§ = new §]#[§(this);
            do
            {
               §@;§.init(§&$§.§@8§.Views.View_LevelPlayBlack[0]);
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §4#;§.singleton.stopThemeMusic();
         }
         do
         {
            super.activate(param1);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            do
            {
               §?!r§.§9"4§();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      override protected function playLevelStartSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§+!b§.currentLevel != "boss_trenchrun")
            {
               if(_loc1_)
               {
                  §?!r§.§]!H§("levelstartmilitarya2");
               }
            }
         }
      }
      
      override protected function addPauseView() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Pause"));
         if(_loc3_ || _loc1_)
         {
            §2!j§ = new §5!b§(_loc2_,§+!b§,_loc1_,§^"N§);
         }
      }
      
      override protected function addPlayView() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Play"));
         if(!_loc4_)
         {
            §?#M§ = new §%,§(_loc2_,§+!b§,§ F§,_loc1_,§^"N§);
         }
      }
   }
}
