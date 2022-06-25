package §_-MN§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-wU§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-0-Q§:int = 2;
      
      public static const §_-09A§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
         }
         while(true)
         {
            LISTENER_EVENT_MOUSE_UP = 1;
            while(!(_loc2_ && _loc2_))
            {
               §_-0-Q§ = 2;
               do
               {
                  §_-09A§ = 3;
               }
               while(_loc2_ && §_-wU§);
               
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      private var §_-dr§:Sprite;
      
      public var §_-Va§:int = 0;
      
      public var §_-4W§:Array;
      
      public function §_-wU§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               if(!param1)
               {
                  loop2:
                  while(true)
                  {
                     this.§_-4W§ = new Array();
                     if(!(_loc2_ && _loc3_))
                     {
                        addr56:
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr77:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§_-dr§ = param1;
            §§goto(addr77);
         }
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§_-dr§ = param1;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.addEventListeners();
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(Boolean(this.§_-dr§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§_-dr§ is MovieClip);
                        if(_loc3_ || param1)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!§§pop())
                                             {
                                                (this.§_-dr§ as MovieClip).gotoAndStop(param1);
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break loop2;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      addr19:
                                                      return;
                                                      addr53:
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr19);
                                                addr97:
                                             }
                                             break loop2;
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    addr86:
                                 }
                                 break loop2;
                              }
                              §§goto(addr19);
                           }
                           addr76:
                        }
                        §§goto(addr86);
                     }
                     (this.§_-dr§ as MovieClip).gotoAndPlay(param1);
                     §§goto(addr97);
                  }
               }
               §§goto(addr76);
            }
         }
         §§goto(addr53);
      }
      
      public function §_-Ay§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(this);
            §§push(this.§_-Va§);
            if(_loc5_ || param1)
            {
               §§push(1);
               if(_loc5_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§_-Va§ = §§pop();
            loop0:
            while(true)
            {
               this.§_-4W§[param1] = param2.toUpperCase();
               while(true)
               {
                  if(_loc5_ || param3)
                  {
                     if(param3)
                     {
                        if(_loc5_ || this)
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           this.addEventListeners();
                        }
                        addr53:
                        break;
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.removeEventListeners();
            while(true)
            {
               §§push(this.§_-Va§);
               loop1:
               while(true)
               {
                  §§push(1);
                  loop2:
                  while(true)
                  {
                     §§push(LISTENER_EVENT_MOUSE_DOWN);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() << §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           while(true)
                           {
                              §§push(0);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§_-dr§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-7h§);
                                       addr253:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr246:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§_-Va§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(1);
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          while(_loc1_)
                                          {
                                             §§push(§§pop() << §§pop());
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                addr201:
                                                addr158:
                                                while(true)
                                                {
                                                   §§push(0);
                                                }
                                                loop17:
                                                for(; _loc1_ || _loc2_; if(_loc1_ || _loc1_)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   continue loop1;
                                                })
                                                {
                                                   §§push(§_-0-Q§);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() << §§pop());
                                                      addr167:
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            loop21:
                                                            while(true)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§_-dr§.addEventListener(MouseEvent.ROLL_OVER,this.§_-05m§);
                                                                     addr177:
                                                                     while(!(_loc2_ && _loc2_))
                                                                     {
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                                  addr170:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-Va§);
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(_loc2_ && _loc1_)
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        addr75:
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        continue loop21;
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop19;
                                                            }
                                                            addr202:
                                                            while(!_loc2_)
                                                            {
                                                               if(_loc2_ && this)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  addr236:
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§_-dr§.addEventListener(MouseEvent.MOUSE_UP,this.§_-6Z§);
                                                                     }
                                                                     addr229:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr236:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-Va§);
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop20;
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr202);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr229);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§_-dr§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-7h§);
            loop0:
            while(true)
            {
               this.§_-dr§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-6Z§);
               while(true)
               {
                  this.§_-dr§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-05m§);
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        this.§_-dr§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-Xt§);
                        if(_loc2_ || _loc2_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §_-7h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§_-4W§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc2_);
            
         }
      }
      
      public function §_-6Z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§_-4W§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §_-05m§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§_-0-Q§,this.§_-4W§[§_-0-Q§]);
         }
      }
      
      public function §_-Xt§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.listenerEventOccured(§_-09A§,this.§_-4W§[§_-09A§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.removeEventListeners();
            while(true)
            {
               this.§_-dr§ = null;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§_-4W§ = null;
            if(!(_loc1_ && _loc2_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
