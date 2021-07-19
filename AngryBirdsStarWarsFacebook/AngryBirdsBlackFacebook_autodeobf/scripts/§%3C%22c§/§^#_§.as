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
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@!m§(§,!q§.§>#D§).§""s§.showTotalScores();
         §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
      }
      
      override protected function addButton(param1:int) : §]A§
      {
         var _loc2_:§7V§ = §7V§(super.addButton(param1));
         var _loc3_:String = §"V§.getLevelName(param1);
         _loc2_.§9!<§ = §7q§(§4#;§.singleton.dataModel.userProgress).getRankForLevel(_loc3_);
         return _loc2_;
      }
      
      override protected function getLevelButton() : §]A§
      {
         if(§@]§.length > 0)
         {
            return §@]§.pop();
         }
         var _loc1_:§7V§ = new §7V§(§"V§.levelButtons[0]);
         _loc1_.addEventListener(MouseEvent.CLICK,§&K§);
         return _loc1_;
      }
   }
}
