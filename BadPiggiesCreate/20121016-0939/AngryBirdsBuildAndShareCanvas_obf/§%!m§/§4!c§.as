package §%!m§
{
   import §1!k§.§4!J§;
   import §=b§.§%"2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §4!c§ extends §4!J§
   {
       
      
      private var §"!c§:DisplayObject;
      
      private var §^"4§:DisplayObjectContainer;
      
      public function §4!c§(param1:§%"2§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1);
            while(true)
            {
               this.§"!c§ = param2;
               while(_loc4_ || param3)
               {
                  this.§^"4§ = param3;
                  if(!_loc4_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public function get target() : DisplayObject
      {
         return this.§"!c§;
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§"!c§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§^"4§ == null);
                              loop5:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(!§§pop());
                                 if(!(_loc1_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       break;
                                       addr81:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc1_ && _loc2_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop6:
                                          while(_loc2_)
                                          {
                                             §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§"!c§.parent == this.§^"4§);
                                                if(!_loc2_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc1_)
                                                {
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break loop7;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      this.§^"4§.removeChild(this.§"!c§);
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      addr63:
                                                      break loop7;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             return;
                                          }
                                          continue loop1;
                                          addr91:
                                       }
                                       §§goto(addr40);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr91);
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§"!c§ == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc1_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr99:
                                    while(true)
                                    {
                                       §§push(this.§"!c§.parent == this.§^"4§);
                                       if(_loc1_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 addr98:
                              }
                              for(; §§pop(); §§goto(addr99))
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    this.§^"4§.addChild(this.§"!c§);
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§^"4§ == null);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc1_)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    addr119:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr98);
                              }
                              return;
                           }
                           break;
                        }
                        continue;
                        addr93:
                     }
                  }
               }
            }
            §§goto(addr119);
         }
         §§goto(addr99);
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§^"4§;
      }
   }
}
