package §%!B§
{
   public class §!!^§ extends §7C§
   {
       
      
      public function §!!^§(param1:Array)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     break;
                  }
               }
               else
               {
                  addr68:
                  §§push(param1.toString() + "-");
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() + (_loc3_ + 1));
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     _loc2_.push(_loc4_);
                  }
                  addr94:
               }
               while(_loc5_)
               {
                  §§goto(addr94);
               }
               _loc3_++;
               continue;
            }
            §§goto(addr68);
         }
         return _loc2_;
      }
   }
}
