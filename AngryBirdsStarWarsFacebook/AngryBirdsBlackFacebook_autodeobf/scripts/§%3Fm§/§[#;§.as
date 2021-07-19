package §?m§
{
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   
   public class §[#;§ extends §,"X§
   {
       
      
      private var §]s§:String;
      
      public function §[#;§()
      {
         super();
      }
      
      override public function getPrettyLevelString(param1:String) : String
      {
         if(param1 == "-1")
         {
            return "nothing";
         }
         if(param1.indexOf("2000-") != -1)
         {
            return this.getEpisodeForLevel(param1).writtenName + " - " + §@#B§(§4#;§.singleton.dataModel).§!!C§.§1"C§(param1);
         }
         return super.getPrettyLevelString(param1);
      }
      
      override public function getNextLevelId() : String
      {
         var _loc1_:§@"b§ = null;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         if(§@!F§.indexOf("2000-") != -1)
         {
            _loc1_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
            _loc2_ = _loc1_.§["^§(§@!F§);
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
         return this.getPrettyLevelString(§@!F§);
      }
      
      public function §<"s§(param1:String) : void
      {
         this.§]s§ = param1;
      }
      
      override public function getLevelForId(param1:String) : §8!B§
      {
         if(param1 == "-1")
         {
            return §=!z§.§+#^§(this.§]s§);
         }
         return super.getLevelForId(param1);
      }
      
      override public function loadLevel(param1:String) : void
      {
         if(param1 == "-1")
         {
            §@!F§ = "-1";
         }
         super.loadLevel(param1);
      }
      
      override public function getEpisodeForLevel(param1:String) : §3![§
      {
         var _loc2_:§3![§ = null;
         if(param1 == "-1")
         {
            for each(_loc2_ in §<!W§)
            {
               if(_loc2_.§9"?§("2000-1"))
               {
                  return _loc2_;
               }
            }
         }
         return super.getEpisodeForLevel(param1);
      }
   }
}
