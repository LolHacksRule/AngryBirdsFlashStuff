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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
         }
         loop0:
         while(true)
         {
            LISTENER_EVENT_MOUSE_UP = 1;
            do
            {
               §,!k§ = 2;
               continue loop0;
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      private var §`!?§:Sprite;
      
      public var §%E§:int = 0;
      
      public var §>!,§:Array;
      
      public function UIEventListenerRovio(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(param1)
            {
               if(!(_loc2_ || this))
               {
                  while(true)
                  {
                     break loop0;
                  }
                  return;
               }
               addr72:
               addr50:
               if(_loc3_ && this)
               {
                  continue;
               }
               this.§`!?§ = param1;
               §§goto(addr72);
            }
            while(true)
            {
               this.§>!,§ = new Array();
               if(!_loc2_)
               {
                  continue;
               }
            }
         }
         §§goto(addr50);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§`!?§ = param1;
               while(!(_loc3_ && this))
               {
                  this.addEventListeners();
                  if(!_loc2_)
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
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(Boolean(this.§`!?§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!(_loc3_ && param1))
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop1:
                  while(§§pop())
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §§push(param2);
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 (this.§`!?§ as MovieClip).gotoAndStop(param1);
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && param2))
                                    {
                                       if(_loc4_)
                                       {
                                          break loop1;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§`!?§ is MovieClip);
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                             continue loop0;
                                          }
                                          addr115:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop3;
                                          }
                                       }
                                    }
                                    addr101:
                                    break loop1;
                                    addr101:
                                 }
                                 §§goto(addr101);
                              }
                              (this.§`!?§ as MovieClip).gotoAndPlay(param1);
                           }
                        }
                        addr91:
                     }
                     §§goto(addr101);
                  }
                  return;
               }
               §§goto(addr115);
            }
         }
         §§goto(addr91);
      }
      
      public function §5j§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §§push(this);
            §§push(this.§%E§);
            if(!_loc4_)
            {
               §§push(1);
               if(_loc5_ || this)
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
               loop1:
               for(; param3; while(true)
               {
                  if(!(_loc4_ && param3))
                  {
                     continue loop0;
                  }
                  continue loop1;
               })
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               addr25:
               return;
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         while(true)
         {
            this.addEventListeners();
            §§goto(addr47);
         }
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§%E§);
               if(_loc1_)
               {
                  §§push(1);
                  loop1:
                  while(true)
                  {
                     §§push(LISTENER_EVENT_MOUSE_DOWN);
                     addr237:
                     while(true)
                     {
                        §§push(§§pop() << §§pop());
                        addr238:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                        }
                     }
                     addr57:
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§@8§);
                     if(_loc1_)
                     {
                        if(_loc1_)
                        {
                           §§push(§§pop() << §§pop());
                           if(!(_loc2_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 addr81:
                                 §§push(§§pop() & §§pop());
                                 if(!(_loc2_ && this))
                                 {
                                    addr89:
                                    §§push(0);
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                if(_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            while(true)
                                                            {
                                                               addr28:
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(this.§%E§);
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§goto(addr57);
                                                                              }
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(_loc1_ || this)
                                                                                    {
                                                                                       this.§`!?§.addEventListener(MouseEvent.MOUSE_UP,this.§7!i§);
                                                                                       addr228:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr228:
                                                                                    }
                                                                                    §§goto(addr228);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§%E§);
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       addr139:
                                                                                       if(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          addr147:
                                                                                          §§push(1);
                                                                                          while(_loc1_ || _loc1_)
                                                                                          {
                                                                                             §§push(§,!k§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() << §§pop());
                                                                                                addr157:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() & §§pop());
                                                                                                   break loop23;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() & §§pop());
                                                                                             addr200:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§goto(addr147);
                                                                                          }
                                                                                          addr147:
                                                                                          addr199:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    break loop23;
                                                                                 }
                                                                                 addr191:
                                                                                 addr239:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                                                                          addr196:
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             §§goto(addr199);
                                                                                             §§push(§§pop() << §§pop());
                                                                                          }
                                                                                          §§goto(addr237);
                                                                                       }
                                                                                       addr194:
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr139);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    addr240:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§`!?§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!9§);
                                                                                             break loop22;
                                                                                          }
                                                                                          addr241:
                                                                                       }
                                                                                       addr188:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr191);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr157);
                                                                        }
                                                                        §§goto(addr89);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr81);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr159:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(_loc1_ || _loc2_)
                                                                           {
                                                                              this.§`!?§.addEventListener(MouseEvent.ROLL_OVER,this.§>,§);
                                                                           }
                                                                           continue loop22;
                                                                        }
                                                                        §§goto(addr28);
                                                                     }
                                                                     §§goto(addr194);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            addr187:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr188);
                                                   }
                                                }
                                                addr126:
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr241);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr156);
                  }
               }
               §§goto(addr239);
            }
         }
         §§goto(addr187);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§`!?§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#!9§);
            loop0:
            while(true)
            {
               this.§`!?§.removeEventListener(MouseEvent.MOUSE_UP,this.§7!i§);
               loop1:
               do
               {
                  this.§`!?§.removeEventListener(MouseEvent.ROLL_OVER,this.§>,§);
                  while(_loc2_)
                  {
                     this.§`!?§.removeEventListener(MouseEvent.ROLL_OUT,this.§'=§);
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      public function §#!9§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>!,§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §7!i§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>!,§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function §>,§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§,!k§,this.§>!,§[§,!k§]);
         }
      }
      
      public function §'=§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerEventOccured(§@8§,this.§>!,§[§@8§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.removeEventListeners();
         }
         while(true)
         {
            this.§`!?§ = null;
            while(!(_loc2_ && this))
            {
               this.§>!,§ = null;
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
