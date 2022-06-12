package §%$!§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §#v§.§@#?§;
   import §`#C§.§3Z§;
   
   public class §!#$§ extends §0c§
   {
       
      
      public function §!#$§(param1:§#!?§, param2:§3Z§)
      {
         super(param1,param2);
      }
      
      override protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§-"R§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §@#?§.§="H§(§+$$§(param2));
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
         var _loc3_:§@#?§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §@#?§.§=#?§(§+$$§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
            return;
         }
         super.initializeLevelFile(param1,param2);
      }
   }
}
