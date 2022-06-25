package §>!-§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class UIEventListenerRovio
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §,!k§:int = 2;
      
      public static const §@8§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && UIEventListenerRovio))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               §§goto(addr58);
            }
         }
         addr58:
         while(true)
         {
            §,!k§ = 2;
            do
            {
               §@8§ = 3;
            }
            while(_loc2_);
            
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §`!?§:Sprite;
      
      public var §%E§:int = 0;
      
      public var §>!,§:Array;
      
      public function UIEventListenerRovio(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            do
            {
               if(param1)
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§`!?§ = param1;
                     addr82:
                     while(true)
                     {
                     }
                     addr82:
                  }
                  §§goto(addr82);
               }
               while(true)
               {
                  this.§>!,§ = new Array();
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr82);
               }
            }
            while(!(_loc2_ || _loc3_));
            
            return;
         }
         §§goto(addr82);
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
               this.§`!?§ = param1;
               while(!_loc2_)
               {
                  this.addEventListeners();
                  if(_loc3_ || this)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(Boolean(this.§`!?§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc3_ || _loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§`!?§ is MovieClip);
                        if(_loc3_ || param1)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              break loop2;
                           }
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr81:
                                 §§push(param2);
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                     addr24:
                     return;
                  }
               }
               §§goto(addr72);
            }
         }
         §§goto(addr43);
      }
      
      public function §5j§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(this);
            §§push(this.§%E§);
            if(_loc4_ || this)
            {
               §§push(1);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§%E§ = §§pop();
            loop0:
            while(true)
            {
               this.§>!,§[param1] = param2.toUpperCase();
               while(param3)
               {
                  if(!_loc5_)
                  {
                     this.addEventListeners();
                  }
                  if(!(_loc5_ && param2))
                  {
                     continue loop0;
                  }
               }
               §§goto(addr24);
            }
         }
         addr24:
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.removeEventListeners();
         }
         loop0:
         while(true)
         {
            §§push(this.§%E§);
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
                                    this.§`!?§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!9§);
                                    addr256:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr247:
                              }
                              while(true)
                              {
                                 §§push(this.§%E§);
                                 loop10:
                                 while(!_loc1_)
                                 {
                                    §§push(1);
                                    loop11:
                                    while(_loc2_ || this)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          loop12:
                                          while(!(_loc1_ && _loc1_))
                                          {
                                             §§push(§§pop() << §§pop());
                                             loop13:
                                             while(_loc2_)
                                             {
                                                §§push(§§pop() & §§pop());
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§`!?§.addEventListener(MouseEvent.MOUSE_UP,this.§7!i§);
                                                            addr236:
                                                            while(true)
                                                            {
                                                               addr115:
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr25);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         addr217:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§%E§);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            if(_loc2_)
                                                            {
                                                               if(_loc1_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§,!k§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() << §§pop());
                                                                  addr146:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     addr147:
                                                                     while(!(_loc1_ && this))
                                                                     {
                                                                        §§push(0);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               addr145:
                                                            }
                                                            loop23:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_ && _loc2_)
                                                                        {
                                                                           break loop23;
                                                                        }
                                                                        this.§`!?§.addEventListener(MouseEvent.ROLL_OVER,this.§>,§);
                                                                        while(!(_loc1_ && _loc2_))
                                                                        {
                                                                           if(_loc1_ && _loc1_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr115);
                                                                        }
                                                                        §§goto(addr256);
                                                                     }
                                                                     addr158:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§%E§);
                                                                     if(_loc1_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§push(1);
                                                                        if(!(_loc2_ || _loc1_))
                                                                        {
                                                                           addr85:
                                                                           if(!(_loc1_ && _loc1_))
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          this.§`!?§.addEventListener(MouseEvent.ROLL_OUT,this.§'=§);
                                                                                          §§goto(addr108);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr217);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr158);
                                                                                    }
                                                                                    §§goto(addr174);
                                                                                 }
                                                                                 §§goto(addr108);
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop23;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§@8§);
                                                                           if(!_loc1_)
                                                                           {
                                                                              if(!(_loc2_ || this))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              §§push(§§pop() << §§pop());
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc1_ && _loc1_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§goto(addr75);
                                                                                 §§push(§§pop() & §§pop());
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr85);
                                                                              continue loop12;
                                                                           }
                                                                           §§goto(addr145);
                                                                        }
                                                                        §§goto(addr146);
                                                                     }
                                                                     §§goto(addr147);
                                                                  }
                                                                  addr25:
                                                               }
                                                               continue loop13;
                                                               return;
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!?§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#!9§);
         }
         while(true)
         {
            this.§`!?§.removeEventListener(MouseEvent.MOUSE_UP,this.§7!i§);
            while(!_loc2_)
            {
               this.§`!?§.removeEventListener(MouseEvent.ROLL_OVER,this.§>,§);
               while(!_loc2_)
               {
                  this.§`!?§.removeEventListener(MouseEvent.ROLL_OUT,this.§'=§);
                  if(_loc1_ || this)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §#!9§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>!,§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc2_);
         
      }
      
      public function §7!i§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>!,§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc3_);
         
      }
      
      public function §>,§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerEventOccured(§,!k§,this.§>!,§[§,!k§]);
         }
      }
      
      public function §'=§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§@8§,this.§>!,§[§@8§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.removeEventListeners();
         }
         while(true)
         {
            this.§`!?§ = null;
            while(_loc2_ || this)
            {
               this.§>!,§ = null;
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
