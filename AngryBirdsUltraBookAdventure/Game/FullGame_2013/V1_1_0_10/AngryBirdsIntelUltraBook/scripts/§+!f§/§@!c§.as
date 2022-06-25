package §+!f§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   
   public class §@!c§ extends LevelManager
   {
       
      
      public function §@!c§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §<!N§(param1:String) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§8K§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §`r§(param1);
            _loc3_ = param1.split("-");
            if(_loc8_ || param1)
            {
               §§push(int(parseInt(_loc3_[1])));
               while(true)
               {
                  _loc4_ = §§pop();
                  do
                  {
                     §§push(_loc3_[0]);
                     if(_loc9_ && _loc3_)
                     {
                        return §§pop();
                     }
                     addr155:
                     _loc5_ = §§pop();
                  }
                  while(_loc9_);
                  
                  addr51:
                  if(!(_loc8_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(_loc6_);
                  if(_loc8_)
                  {
                     addr85:
                     §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
                     if(!(_loc9_ && §@!c§))
                     {
                        addr83:
                        §§push(_loc4_ = §§pop());
                     }
                     if(!(_loc8_ || _loc3_))
                     {
                        while(true)
                        {
                           _loc6_ = §§pop();
                           §§push(_loc4_);
                           if(!_loc9_)
                           {
                              §§goto(addr51);
                           }
                           §§goto(addr83);
                           §§goto(addr85);
                        }
                        addr106:
                     }
                     return §§pop().toString();
                  }
                  §§goto(addr83);
               }
            }
            while(true)
            {
               §§goto(addr106);
            }
         }
         catch(e:Error)
         {
         }
         §§goto(addr155);
      }
   }
}
