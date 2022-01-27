package §%"Q§
{
   import §&!j§.§5#+§;
   import §`"]§.§'!7§;
   import §`"]§.§^"N§;
   import §`"n§.§""r§;
   import com.angrybirds.§<!J§;
   import flash.events.MouseEvent;
   import §null §.§5#§;
   
   public class §8?§ extends §,L§
   {
       
      
      public function §8?§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §throw§(§<!J§.§#!L§).§?"T§.showTotalScores();
         §throw§(§<!J§.§#!L§).§^!O§.§?a§ = false;
      }
      
      override protected function addButton(param1:int) : §^"N§
      {
         var _loc2_:§'!7§ = §'!7§(super.addButton(param1));
         var _loc3_:String = §0"p§.getLevelName(param1);
         _loc2_.§5!b§ = §""r§(§4"#§.singleton.dataModel.userProgress).getRankForLevel(_loc3_);
         return _loc2_;
      }
      
      override protected function getLevelButton() : §^"N§
      {
         if(§`"s§.length > 0)
         {
            return §`"s§.pop();
         }
         var _loc1_:§'!7§ = new §'!7§(§0"p§.levelButtons[0]);
         _loc1_.addEventListener(MouseEvent.CLICK,§'!Y§);
         return _loc1_;
      }
   }
}
