package §7X§
{
   import flash.net.URLRequest;
   
   public class §+!p§
   {
      
      private static var §0!W§:String;
       
      
      public function §+!p§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §`;§(param1:String) : URLRequest
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(_loc4_)
         {
            §§push(§0!W§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr203:
                  while(true)
                  {
                     §0!W§ = Math.round(Math.random() * int.MAX_VALUE).toString();
                     addr213:
                     while(true)
                     {
                     }
                  }
                  addr203:
               }
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop() != null)
                     {
                        if(!_loc3_)
                        {
                           addr189:
                           §§push(§0!W§);
                           while(true)
                           {
                              §§push("-");
                              addr190:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr191:
                                 while(true)
                                 {
                                    §§push(§§pop() + new Date().time.toString());
                                    addr196:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr197:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                           addr189:
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§push(param1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push("?");
                                 if(_loc4_ || §+!p§)
                                 {
                                    if(§§pop().indexOf(§§pop()) < 0)
                                    {
                                       if(_loc4_)
                                       {
                                          addr147:
                                          §§push(param1 + "?hash=");
                                          if(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                addr155:
                                                §§push(§§pop() + _loc2_);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   param1 = §§pop();
                                                   addr164:
                                                   break loop1;
                                                   addr164:
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr191);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr164);
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(_loc4_ || §+!p§)
                                       {
                                          if(_loc4_ || §+!p§)
                                          {
                                             §§push("&hash=");
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && §+!p§))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc3_ && §+!p§))
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_)
                                                      {
                                                         addr70:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               addr80:
                                                               §§push(§§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr147);
                                                               }
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr70);
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr80);
                                    }
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr155);
                           }
                           else
                           {
                              §§goto(addr203);
                           }
                        }
                        §§goto(addr213);
                        addr198:
                     }
                     break;
                  }
                  §§goto(addr189);
               }
               addr23:
               return new URLRequest(param1);
            }
         }
         §§goto(addr203);
      }
   }
}
