package §?m§
{
   public class §"#G§ extends §3![§
   {
       
      
      protected var §]"l§:int = 0;
      
      public function §"#G§(param1:Array)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super(param1);
         }
      }
      
      override protected function getDefaultLevelNamesForPage(param1:int) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() >= levelsPerPage)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        _loc2_.push(_loc4_);
                        addr99:
                     }
                     _loc3_++;
                  }
                  continue;
               }
               addr73:
               §§push(param1.toString() + "-");
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() + (_loc3_ + 1));
               }
               _loc4_ = §§pop();
               §§goto(addr99);
            }
            §§goto(addr73);
         }
         return _loc2_;
      }
      
      public function get lockedLevelCount() : int
      {
         return this.§]"l§;
      }
      
      public function set lockedLevelCount(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§]"l§ = param1;
         }
      }
   }
}
