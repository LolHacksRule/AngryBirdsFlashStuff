package §=!B§
{
   public class §;p§ extends §59§
   {
       
      
      public function §;p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §,M§(param1:String) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§=e§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §+,§(param1);
            _loc3_ = param1.split("-");
            if(!_loc8_)
            {
               §§push(int(parseInt(_loc3_[1])));
               if(!(_loc8_ && _loc2_))
               {
                  _loc4_ = §§pop();
                  if(_loc9_ || §;p§)
                  {
                     §§push(_loc3_[0]);
                     if(_loc9_)
                     {
                        _loc5_ = §§pop();
                        if(!_loc8_)
                        {
                           addr82:
                           §§push(int(_loc2_.pageIndexes.indexOf(_loc5_)));
                           if(_loc9_)
                           {
                              _loc6_ = §§pop();
                              if(_loc9_ || param1)
                              {
                                 addr97:
                                 §§push(_loc4_);
                                 if(_loc9_ || param1)
                                 {
                                    addr105:
                                    §§push(_loc6_);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
                                       if(_loc9_)
                                       {
                                          addr131:
                                          §§push(_loc4_ = §§pop());
                                       }
                                       return §§pop().toString();
                                    }
                                 }
                                 §§goto(addr131);
                              }
                           }
                           §§goto(addr105);
                        }
                        addr146:
                        §§push(param1);
                     }
                     return §§pop();
                  }
                  §§goto(addr97);
               }
               §§goto(addr105);
            }
            §§goto(addr82);
         }
         catch(e:Error)
         {
         }
         §§goto(addr146);
      }
   }
}
