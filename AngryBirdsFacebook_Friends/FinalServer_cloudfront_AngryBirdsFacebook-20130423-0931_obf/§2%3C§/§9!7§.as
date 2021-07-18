package §2<§
{
   import flash.net.URLRequest;
   
   public class §9!7§
   {
      
      private static var § R§:String;
       
      
      public function §9!7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §,!l§(param1:String) : URLRequest
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         if(_loc3_)
         {
            §§push(§ R§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     § R§ = Math.round(Math.random() * int.MAX_VALUE).toString();
                  }
                  while(true)
                  {
                     loop5:
                     while(!(_loc4_ && §9!7§))
                     {
                        loop10:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_ || param1)
                           {
                              §§push("?");
                              while(true)
                              {
                                 if(§§pop().indexOf(§§pop()) < 0)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue loop5;
                                       }
                                       addr134:
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          addr137:
                                          §§push(§§pop() + "?hash=");
                                          if(_loc3_)
                                          {
                                             addr141:
                                             §§push(§§pop() + _loc2_);
                                          }
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr150:
                                             param1 = §§pop();
                                             break;
                                          }
                                          addr173:
                                          while(true)
                                          {
                                             §§push(§§pop() + new Date().time.toString());
                                             addr178:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                addr189:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          addr173:
                                       }
                                       §§goto(addr189);
                                    }
                                    break;
                                 }
                                 §§push(param1);
                                 if(_loc3_ || §9!7§)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          §§push("&hash=");
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr137);
                                       }
                                       else
                                       {
                                          §§goto(addr134);
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                                 else
                                 {
                                    addr85:
                                    param1 = §§pop();
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    addr88:
                                    if(_loc3_ || param1)
                                    {
                                       break loop10;
                                    }
                                    addr163:
                                    while(true)
                                    {
                                       §§push(§ R§);
                                       if(_loc3_ || §9!7§)
                                       {
                                          while(true)
                                          {
                                             §§push("-");
                                             addr172:
                                             while(true)
                                             {
                                                §§goto(addr173);
                                             }
                                          }
                                          addr171:
                                       }
                                       §§goto(addr88);
                                    }
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr22);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr22);
                     }
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() != null)
                     {
                        §§goto(addr163);
                     }
                     break;
                  }
                  §§goto(addr171);
               }
               addr22:
               return new URLRequest(param1);
            }
         }
         §§goto(addr197);
      }
   }
}
