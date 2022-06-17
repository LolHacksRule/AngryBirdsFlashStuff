package §>#Y§
{
   import §-!j§.§,"!§;
   import §?o§.§ ^§;
   import §?o§.§#!P§;
   import §?o§.§4#?§;
   
   public class §@K§ extends §^!A§
   {
       
      
      public function §@K§(param1:§4#?§, param2:§,"!§)
      {
         super(param1,param2);
      }
      
      override protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§ ^§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §#!P§.§"";§(§+2§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(_loc2_)
         {
            _loc3_ = _loc2_[1].toLowerCase().substr("level".length);
            this.initializeLevelLuaFile(_loc3_,param1);
            return;
         }
         super.initializeFile(param1);
      }
      
      override protected function initializeLevelFile(param1:String, param2:String) : void
      {
         var _loc3_:§#!P§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §#!P§.§@#@§(§+2§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
            return;
         }
         super.initializeLevelFile(param1,param2);
      }
   }
}
