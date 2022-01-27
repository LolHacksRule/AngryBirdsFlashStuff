package §,#+§
{
   import §`"8§.§-!w§;
   import §`"8§.§>6§;
   
   public class §@"F§ extends §;"y§
   {
       
      
      public function §@"F§()
      {
         super();
      }
      
      override public function getPrettyLevelString(param1:String) : String
      {
         if(param1.indexOf("2000-") != -1)
         {
            return getEpisodeForLevel(param1).writtenName + " - " + §-!w§(§;"@§.singleton.dataModel).§2!J§.§&!x§(param1);
         }
         return super.getPrettyLevelString(param1);
      }
      
      override public function getNextLevelId() : String
      {
         var _loc1_:§>6§ = null;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         if(§6B§.indexOf("2000-") != -1)
         {
            _loc1_ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
            _loc2_ = _loc1_.§]!@§(§6B§);
            _loc3_ = _loc1_.levelObjects.indexOf(_loc2_);
            if(_loc3_ + 1 < _loc1_.levelObjects.length)
            {
               return (_loc4_ = _loc1_.levelObjects[_loc3_ + 1]).levelId;
            }
            return null;
         }
         return super.getNextLevelId();
      }
      
      override public function get currentLevelWrittenName() : String
      {
         return this.getPrettyLevelString(§6B§);
      }
   }
}
