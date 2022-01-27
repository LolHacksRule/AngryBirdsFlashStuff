package §null §
{
   import §9"U§.§7"1§;
   import §9"U§.§[!s§;
   
   public class §1"o§ extends § #$§
   {
       
      
      public function §1"o§()
      {
         super();
      }
      
      override public function getPrettyLevelString(param1:String) : String
      {
         if(param1.indexOf("2000-") != -1)
         {
            return getEpisodeForLevel(param1).writtenName + " - " + §7"1§(§4"#§.singleton.dataModel).§1z§.§&"3§(param1);
         }
         return super.getPrettyLevelString(param1);
      }
      
      override public function getNextLevelId() : String
      {
         var _loc1_:§[!s§ = null;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         if(§88§.indexOf("2000-") != -1)
         {
            _loc1_ = §7"1§(§4"#§.singleton.dataModel).§1z§;
            _loc2_ = _loc1_.§9<§(§88§);
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
         return this.getPrettyLevelString(§88§);
      }
   }
}
