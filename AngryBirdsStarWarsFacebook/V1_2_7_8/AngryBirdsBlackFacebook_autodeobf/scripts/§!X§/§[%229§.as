package §!X§
{
   import §"!P§.§3G§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §7""§.§'"p§;
   import §7""§.§^!1§;
   import com.angrybirds.§;!e§;
   import flash.events.MouseEvent;
   
   public class §["9§ extends §0",§
   {
       
      
      public function §["9§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&"1§(§;!e§.§6!v§).§`!u§.showTotalScores();
         §&"1§(§;!e§.§6!v§).§#"t§.§`§ = false;
      }
      
      override protected function addButton(param1:int) : §^!1§
      {
         var _loc2_:§'"p§ = §'"p§(super.addButton(param1));
         var _loc3_:String = §+""§.getLevelName(param1);
         _loc2_.§["Q§ = §3G§(§;"@§.singleton.dataModel.userProgress).getRankForLevel(_loc3_);
         return _loc2_;
      }
      
      override protected function getLevelButton() : §^!1§
      {
         if(§[!%§.length > 0)
         {
            return §[!%§.pop();
         }
         var _loc1_:§'"p§ = new §'"p§(§+""§.levelButtons[0]);
         _loc1_.addEventListener(MouseEvent.CLICK,§,@§);
         return _loc1_;
      }
   }
}
