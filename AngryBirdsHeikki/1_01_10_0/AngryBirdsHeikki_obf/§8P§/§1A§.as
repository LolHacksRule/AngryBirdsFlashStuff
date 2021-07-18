package §8P§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §1A§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §3"§:int = 2;
      
      public static const §#!C§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            loop0:
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(true)
               {
                  §3"§ = 2;
                  loop2:
                  while(!(_loc1_ && _loc2_))
                  {
                     while(true)
                     {
                        §#!C§ = 3;
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      private var §>!&§:Sprite;
      
      public var §<=§:int = 0;
      
      public var §=5§:Array;
      
      public function §1A§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               if(param1)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.§>!&§ = param1;
                  }
                  loop1:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue;
                  addr65:
               }
               while(true)
               {
                  this.§=5§ = new Array();
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr65);
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.removeEventListeners();
         }
         while(true)
         {
            this.§>!&§ = param1;
            while(_loc2_ || param1)
            {
               this.addEventListeners();
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(Boolean(this.§>!&§));
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
                        §§push(this.§>!&§ is MovieClip);
                        if(_loc3_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!§§pop())
                                             {
                                                (this.§>!&§ as MovieClip).gotoAndStop(param1);
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      §§goto(addr19);
                                                   }
                                                }
                                                addr92:
                                                addr19:
                                                return;
                                                addr92:
                                             }
                                             if(_loc3_ || param1)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    addr64:
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr19);
                           }
                           addr59:
                        }
                        §§goto(addr64);
                     }
                     (this.§>!&§ as MovieClip).gotoAndPlay(param1);
                     §§goto(addr92);
                  }
               }
               §§goto(addr59);
            }
         }
         §§goto(addr92);
      }
      
      public function §[!O§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §§push(this);
            §§push(this.§<=§);
            if(!_loc4_)
            {
               §§push(1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§<=§ = §§pop();
            while(true)
            {
               this.§=5§[param1] = param2.toUpperCase();
               while(_loc5_)
               {
                  if(_loc5_ || this)
                  {
                     this.addEventListeners();
                     addr25:
                     return;
                     addr58:
                  }
               }
            }
         }
         while(param3)
         {
            if(!(_loc4_ && param2))
            {
               §§goto(addr39);
            }
            §§goto(addr58);
         }
         §§goto(addr25);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§<=§);
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
                           loop5:
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
                                       this.§>!&§.addEventListener(MouseEvent.MOUSE_DOWN,this.§;"§);
                                       addr258:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr241:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§<=§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop11:
                                       while(_loc1_)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          loop12:
                                          while(_loc1_)
                                          {
                                             §§push(§§pop() << §§pop());
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                loop14:
                                                while(_loc1_ || _loc2_)
                                                {
                                                   §§push(0);
                                                   loop15:
                                                   while(!(_loc2_ && _loc1_))
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§>!&§.addEventListener(MouseEvent.MOUSE_UP,this.§<!c§);
                                                            addr229:
                                                            while(true)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr231:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr241);
                                                               }
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         addr222:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§<=§);
                                                         continue loop10;
                                                      }
                                                      loop24:
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        this.§>!&§.addEventListener(MouseEvent.ROLL_OVER,this.§ Q§);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr222);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr101:
                                                                     if(_loc2_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        break loop24;
                                                                     }
                                                                     this.§>!&§.addEventListener(MouseEvent.ROLL_OUT,this.§-r§);
                                                                     addr132:
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                                  addr194:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§<=§);
                                                                  if(!(_loc1_ || _loc1_))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(_loc1_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(_loc2_ && _loc2_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     §§push(1);
                                                                     if(_loc1_ || this)
                                                                     {
                                                                        addr57:
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           addr64:
                                                                           §§push(§#!C§);
                                                                           if(!(_loc1_ || this))
                                                                           {
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§push(§§pop() << §§pop());
                                                                                 §§goto(addr64);
                                                                              }
                                                                              continue loop12;
                                                                              addr161:
                                                                           }
                                                                           §§push(§§pop() << §§pop());
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr75:
                                                                              if(_loc1_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           addr91:
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              §§goto(addr101);
                                                                           }
                                                                           §§goto(addr132);
                                                                        }
                                                                        while(!_loc2_)
                                                                        {
                                                                           §§push(§§pop() & §§pop());
                                                                           while(true)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §§goto(addr57);
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr75);
                                                                  }
                                                                  §§goto(addr167);
                                                                  §§goto(addr194);
                                                               }
                                                               addr24:
                                                               return;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop15;
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
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
         §§goto(addr231);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§>!&§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;"§);
            loop0:
            while(true)
            {
               this.§>!&§.removeEventListener(MouseEvent.MOUSE_UP,this.§<!c§);
               while(true)
               {
                  this.§>!&§.removeEventListener(MouseEvent.ROLL_OVER,this.§ Q§);
                  continue loop0;
                  addr54:
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §;"§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=5§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!_loc2_);
         
      }
      
      public function §<!c§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=5§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc3_);
         
      }
      
      public function § Q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§3"§,this.§=5§[§3"§]);
         }
      }
      
      public function §-r§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§#!C§,this.§=5§[§#!C§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§>!&§ = null;
               while(!(_loc2_ && _loc2_))
               {
                  this.§=5§ = null;
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§>!&§;
      }
   }
}
