package §?m§
{
   public class §"#G§ extends §3![§
   {
       
      
      protected var §]"l§:int = 0;
      
      public function §"#G§(param1:Array)
      {
         super(param1);
      }
      
      override protected function getDefaultLevelNamesForPage(param1:int) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < levelsPerPage)
         {
            _loc4_ = param1.toString() + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get lockedLevelCount() : int
      {
         return this.§]"l§;
      }
      
      public function set lockedLevelCount(param1:int) : void
      {
         this.§]"l§ = param1;
      }
   }
}
