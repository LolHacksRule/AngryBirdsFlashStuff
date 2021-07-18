package §<"c§
{
   import § "4§.§7q§;
   import §+!c§.§7V§;
   import §+!c§.§]A§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.MouseEvent;
   
   public class §^#_§ extends §3>§
   {
       
      
      public function §^#_§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.activate(param1);
            while(true)
            {
               §@!m§(§,!q§.§>#D§).§""s§.showTotalScores();
               while(!(_loc2_ && this))
               {
                  §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      override protected function addButton(param1:int) : §]A§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§7V§ = §7V§(super.addButton(param1));
         var _loc3_:String = §"V§.getLevelName(param1);
         if(!(_loc5_ && _loc2_))
         {
            _loc2_.§9!<§ = §7q§(§4#;§.singleton.dataModel.userProgress).getRankForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      override protected function getLevelButton() : §]A§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(§@]§.length > 0)
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr44);
               }
            }
            var _loc1_:§7V§ = new §7V§(§"V§.levelButtons[0]);
            if(!(_loc3_ && _loc1_))
            {
               _loc1_.addEventListener(MouseEvent.CLICK,§&K§);
            }
            return _loc1_;
         }
         addr44:
         return §@]§.pop();
      }
   }
}
