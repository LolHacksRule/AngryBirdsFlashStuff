package §_-zL§
{
   public class §_-Zq§
   {
       
      
      public function §_-Zq§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-L6§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < param1.length)
            {
               §§push(param1);
               if(_loc6_)
               {
                  §§push(int(§§pop().charCodeAt(_loc3_)));
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     _loc4_ = §§pop();
                     if(_loc6_ || param1)
                     {
                        §§goto(addr47);
                     }
                     §§goto(addr64);
                  }
                  addr47:
                  §§push(§§pop() + 7937 * (_loc3_ + 2));
                  if(!_loc5_)
                  {
                     §§push(§§pop() % 65536);
                  }
                  §§push(int(§§pop()));
                  if(_loc6_ || §_-Zq§)
                  {
                     addr64:
                     _loc4_ = §§pop();
                     if(_loc5_ && param1)
                     {
                        continue loop0;
                     }
                     §§push(_loc2_);
                     if(_loc6_ || §_-Zq§)
                     {
                        if(§§pop().length > 0)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 addr100:
                                 §§push(§§pop() + ("-" + _loc4_.toString()));
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr113:
                                    _loc2_ = §§pop();
                                    if(_loc5_)
                                    {
                                    }
                                    break;
                                 }
                                 addr129:
                                 _loc2_ = §§pop();
                                 if(!(_loc6_ || param1))
                                 {
                                    continue loop0;
                                 }
                                 _loc3_++;
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr113);
                           }
                           break;
                        }
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           §§goto(addr120);
                        }
                        continue;
                        §§goto(addr129);
                     }
                     §§goto(addr100);
                  }
               }
               §§goto(addr120);
            }
            addr120:
            §§push(§§pop().toString());
            if(_loc5_ && _loc3_)
            {
            }
            return §§pop();
         }
      }
      
      public static function §_-Eu§(param1:String) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = 0;
         var _loc2_:* = "";
         var _loc3_:Array = param1.split("-");
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < _loc3_.length)
            {
               §§push(int(parseInt(_loc3_[_loc4_])));
               if(!_loc6_)
               {
                  _loc5_ = §§pop();
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  §§push(65536);
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               §§push(§§pop() + _loc5_);
               if(_loc7_ || §_-Zq§)
               {
                  §§push(7937);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * (_loc4_ + 2));
                     if(_loc7_ || §_-Zq§)
                     {
                        §§push(§§pop() % 65536);
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc7_ || _loc3_)
                     {
                        addr82:
                        §§push(§§pop() % 65536);
                     }
                     §§push(int(§§pop()));
                     if(_loc6_)
                     {
                        continue;
                     }
                     _loc5_ = §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        §§push(_loc2_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + String.fromCharCode(_loc5_));
                           if(_loc7_)
                           {
                              _loc2_ = §§pop();
                              if(_loc7_)
                              {
                                 addr114:
                                 _loc4_++;
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr82);
            }
            addr122:
            return §§pop();
         }
      }
   }
}
