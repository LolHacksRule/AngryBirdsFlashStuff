package §,#,§
{
   import §7#$§.§?# §;
   import §7#$§.§["5§;
   import §7#$§.§]#q§;
   import §8#K§.§'#_§;
   
   public class §#t§ extends §+!^§
   {
       
      
      public function §#t§(param1:§]#q§, param2:§'#_§)
      {
         super(param1,param2);
      }
      
      override protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§?# § = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §["5§.§%!B§(§3"t§(param2));
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
         var _loc3_:§["5§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §["5§.§94§(§3"t§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
            return;
         }
         super.initializeLevelFile(param1,param2);
      }
   }
}
