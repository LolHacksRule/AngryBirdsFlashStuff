package §^!7§
{
   import flash.net.URLRequest;
   
   public class §+!I§
   {
      
      private static var §3!g§:String;
       
      
      public function §+!I§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §[O§(param1:String) : URLRequest
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(_loc4_)
         {
            §§push(§3!g§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     §3!g§ = Math.round(Math.random() * int.MAX_VALUE).toString();
                     addr189:
                     while(true)
                     {
                     }
                     addr189:
                  }
                  §§goto(addr189);
               }
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        addr23:
                        return new URLRequest(param1);
                     }
                     loop3:
                     while(true)
                     {
                        §§push(§3!g§);
                        if(_loc4_ || §+!I§)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push("-");
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 §§push(§§pop() + new Date().time.toString());
                              }
                              addr150:
                              while(true)
                              {
                                 §§push(§§pop());
                              }
                           }
                           addr142:
                        }
                        loop6:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop7:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 §§push(param1);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push("?");
                                 while(true)
                                 {
                                    if(§§pop().indexOf(§§pop()) >= 0)
                                    {
                                       §§push(param1);
                                       if(!(_loc3_ && param1))
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push("&hash=");
                                          if(_loc4_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue;
                                             }
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc3_)
                                                         {
                                                            addr61:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc4_)
                                                            {
                                                               addr64:
                                                               §§push(§§pop());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc3_ && _loc2_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     param1 = §§pop();
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr23);
                                                                        }
                                                                        addr109:
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              addr119:
                                                                              §§push(param1 + "?hash=" + _loc2_);
                                                                              break loop7;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr23);
                                                                  }
                                                                  §§goto(addr119);
                                                               }
                                                               break loop7;
                                                            }
                                                            §§goto(addr150);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr119);
                                                }
                                                §§goto(addr61);
                                             }
                                             else
                                             {
                                                §§goto(addr142);
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr64);
                                    }
                                    §§goto(addr109);
                                 }
                                 continue loop6;
                              }
                              §§goto(addr189);
                           }
                           param1 = §§pop();
                           §§goto(addr125);
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr189);
      }
   }
}
