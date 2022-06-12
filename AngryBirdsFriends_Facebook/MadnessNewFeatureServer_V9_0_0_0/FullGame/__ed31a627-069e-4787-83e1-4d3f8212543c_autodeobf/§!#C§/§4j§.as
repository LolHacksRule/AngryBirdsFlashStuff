package §!#C§
{
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §,"v§.§^!b§;
   import §?$<§.§]#A§;
   
   public class §4j§ extends §["+§
   {
       
      
      public function §4j§(param1:§;"n§, param2:§]#A§)
      {
         super(param1,param2);
      }
      
      override protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§7!J§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §^!b§.§>"=§(§;-§(param2));
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
         var _loc3_:§^!b§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §^!b§.§<%§(§;-§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
            return;
         }
         super.initializeLevelFile(param1,param2);
      }
   }
}
