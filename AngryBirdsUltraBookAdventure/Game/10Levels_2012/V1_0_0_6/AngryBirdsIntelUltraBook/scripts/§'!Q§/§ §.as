package §'!Q§
{
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   
   public class § § extends LevelManager
   {
       
      
      public function § §()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §'!X§(param1:String) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§<!#§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §1H§(param1);
            _loc3_ = param1.split("-");
            if(!_loc8_)
            {
               §§push(int(parseInt(_loc3_[1])));
               while(true)
               {
                  _loc4_ = §§pop();
                  addr147:
                  addr161:
                  while(true)
                  {
                     §§push(_loc3_[0]);
                     if(!_loc9_)
                     {
                        break;
                     }
                     _loc5_ = §§pop();
                  }
                  addr54:
                  return §§pop();
                  if(!(_loc9_ || § §))
                  {
                     continue;
                  }
                  §§push(_loc6_);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr92);
               }
            }
            while(true)
            {
               §§push(int(_loc2_.pageIndexes.indexOf(_loc5_)));
               while(true)
               {
                  _loc6_ = §§pop();
                  if(!(_loc8_ && § §))
                  {
                     continue;
                  }
                  §§goto(addr147);
               }
               addr93:
               §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
               if(_loc9_ || § §)
               {
                  addr92:
                  §§push(_loc4_ = §§pop());
               }
               return §§pop().toString();
            }
         }
         catch(e:Error)
         {
         }
         §§goto(addr161);
      }
   }
}
