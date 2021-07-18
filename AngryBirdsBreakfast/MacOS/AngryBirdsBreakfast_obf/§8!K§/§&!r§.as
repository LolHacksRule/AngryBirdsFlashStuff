package §8!K§
{
   public class §&!r§ extends §3%§
   {
       
      
      public function §&!r§(param1:Array)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      override protected function getDefaultLevelNamesForPage(param1:int) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               if(§§pop() >= levelsPerPage)
               {
                  if(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        if(_loc5_ || param1)
                        {
                           break;
                        }
                        _loc2_.push(_loc4_);
                        addr93:
                     }
                     _loc3_++;
                  }
                  continue;
               }
               addr72:
               §§push(param1.toString() + "-");
               if(!_loc6_)
               {
                  §§push(§§pop() + (_loc3_ + 1));
               }
               _loc4_ = §§pop();
               §§goto(addr93);
            }
            §§goto(addr72);
         }
         return _loc2_;
      }
   }
}
