package §1!k§
{
   import §=b§.§%"2§;
   
   public class §4!J§ extends §^!B§ implements §9d§
   {
       
      
      private var §0!l§:Number;
      
      public function §4!J§(param1:§%"2§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super(param1,0);
            while(true)
            {
               §[m§ = 0.01;
               loop1:
               while(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§0!l§ = -1;
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§0!l§);
            loop0:
            while(true)
            {
               §§push(0.01);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr169:
                              while(true)
                              {
                                 §§push(param1);
                                 addr122:
                                 while(_loc3_)
                                 {
                                    §§push(0.01);
                                    if(_loc2_ && param1)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() >= §§pop());
                                 }
                                 continue loop0;
                              }
                           }
                           addr168:
                        }
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.action();
                                    }
                                    addr142:
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       §§goto(addr29);
                                    }
                                    §§goto(addr169);
                                 }
                                 addr144:
                              }
                              else
                              {
                                 §§push(this.§0!l§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr104:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr105:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§pop();
                                                   continue loop9;
                                                }
                                                §§goto(addr168);
                                             }
                                             addr109:
                                          }
                                          else
                                          {
                                             while(§§pop())
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      this.rollback();
                                                      §§goto(addr97);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr144);
                                                   }
                                                }
                                                §§goto(addr97);
                                             }
                                             addr29:
                                             this.§0!l§ = param1;
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                addr97:
                                                §§goto(addr29);
                                             }
                                             return;
                                             addr67:
                                          }
                                          §§goto(addr169);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              §§goto(addr97);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
   }
}
