package §`!#§
{
   import §%!n§.§;!'§;
   
   public class §[!s§ extends §[!O§ implements §7M§
   {
       
      
      private var §@!2§:Number;
      
      public function §[!s§(param1:§;!'§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super(param1,0);
            do
            {
               §!"-§ = 0.01;
               do
               {
                  this.§@!2§ = -1;
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!_loc3_);
            
         }
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
         if(_loc3_ || this)
         {
            §§push(this.§@!2§);
            loop0:
            while(true)
            {
               §§push(0.01);
               addr168:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    this.action();
                                 }
                                 loop4:
                                 while(!(_loc2_ && param1))
                                 {
                                    while(true)
                                    {
                                       this.§@!2§ = param1;
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       addr66:
                                       while(_loc2_ && _loc2_)
                                       {
                                          loop7:
                                          for(; !(_loc2_ && _loc3_); §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!_loc2_)
                                                {
                                                   if(_loc2_ && param1)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(0);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  this.rollback();
                                                               }
                                                               §§goto(addr66);
                                                            }
                                                            §§goto(addr29);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr173:
                                                         while(_loc3_ || this)
                                                         {
                                                            continue loop7;
                                                         }
                                                         while(_loc3_ || param1)
                                                         {
                                                            continue loop3;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop4;
                                                         }
                                                         addr173:
                                                         addr100:
                                                         addr134:
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                   }
                                                   addr79:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   continue loop2;
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                    return;
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    continue loop0;
                                    §§goto(addr173);
                                 }
                                 continue;
                              }
                              §§push(this.§@!2§);
                              §§goto(addr79);
                           }
                        }
                     }
                  }
                  §§goto(addr173);
               }
            }
         }
         §§goto(addr115);
      }
   }
}
