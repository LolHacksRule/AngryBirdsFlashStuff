package §6v§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §`M§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^! §:int = 2;
      
      public static const §&U§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §`M§)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(!_loc1_)
               {
                  while(_loc2_ || _loc1_)
                  {
                     §&U§ = 3;
                     if(!_loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §^! § = 2;
            §§goto(addr60);
         }
      }
      
      private var §4! §:Sprite;
      
      public var §>t§:int = 0;
      
      public var §6R§:Array;
      
      public function §`M§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            while(true)
            {
               if(param1)
               {
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§4! § = param1;
                        addr57:
                        while(true)
                        {
                        }
                     }
                  }
                  continue;
                  addr52:
               }
               while(true)
               {
                  this.§6R§ = new Array();
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr52);
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.removeEventListeners();
            while(true)
            {
               this.§4! § = param1;
               while(!(_loc3_ && _loc2_))
               {
                  this.addEventListeners();
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
         }
         §§goto(addr58);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(this.§4! §));
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
                        §§push(this.§4! § is MovieClip);
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && param2))
                                 {
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       if(!§§pop())
                                       {
                                          (this.§4! § as MovieClip).gotoAndStop(param1);
                                          if(_loc4_ || this)
                                          {
                                             if(!_loc3_)
                                             {
                                                break loop1;
                                             }
                                          }
                                          addr25:
                                          return;
                                          addr103:
                                       }
                                    }
                                    addr85:
                                 }
                                 while(true)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr25);
                           }
                           addr65:
                        }
                        §§goto(addr85);
                     }
                     (this.§4! § as MovieClip).gotoAndPlay(param1);
                     §§goto(addr103);
                  }
                  §§goto(addr25);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr25);
      }
      
      public function §9A§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§>t§);
            if(_loc4_ || param2)
            {
               §§push(1);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§>t§ = §§pop();
            loop0:
            while(true)
            {
               this.§6R§[param1] = param2.toUpperCase();
               while(param3)
               {
                  if(!(_loc4_ || this))
                  {
                     break;
                  }
                  addr54:
                  if(_loc4_)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         this.addEventListeners();
         §§goto(addr54);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.removeEventListeners();
         §§push(this.§>t§);
         loop0:
         while(true)
         {
            §§push(1);
            if(_loc2_ || this)
            {
               §§push(LISTENER_EVENT_MOUSE_DOWN);
               while(true)
               {
                  §§push(§§pop() & §§pop() << §§pop());
                  §§push(0);
               }
               addr173:
            }
            loop2:
            while(true)
            {
               if(§§pop() != §§pop())
               {
                  this.§4! §.addEventListener(MouseEvent.MOUSE_DOWN,this.§7J§);
                  loop3:
                  while(true)
                  {
                     addr136:
                     this.§4! §.addEventListener(MouseEvent.MOUSE_UP,this.§>a§);
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     addr90:
                     §§push(this.§>t§);
                     if(_loc2_ || this)
                     {
                        §§push(1);
                        §§push(§^! §);
                        loop9:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           §§push(§§pop() << §§pop());
                           if(_loc1_)
                           {
                              break;
                           }
                           §§push(§§pop() & §§pop());
                           addr34:
                           §§push(1);
                           §§push(§&U§);
                           if(_loc1_ && _loc1_)
                           {
                              continue;
                           }
                           addr43:
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(§§pop() << §§pop());
                              if(!_loc1_)
                              {
                                 §§push(§§pop() & §§pop());
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(0);
                              }
                              if(§§pop() != §§pop())
                              {
                                 this.§4! §.addEventListener(MouseEvent.ROLL_OUT,this.§[;§);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr72:
                                    if(_loc1_ && _loc2_)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          this.§4! §.addEventListener(MouseEvent.ROLL_OVER,this.§ V§);
                                          addr124:
                                          while(true)
                                          {
                                             addr22:
                                             addr108:
                                             while(true)
                                             {
                                                §§push(this.§>t§);
                                                if(!_loc1_)
                                                {
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      §§goto(addr34);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr135:
                                                      while(true)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr90);
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr134:
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr22);
                                                }
                                                break;
                                             }
                                             §§goto(addr135);
                                          }
                                       }
                                    }
                                    §§goto(addr18);
                                 }
                                 §§goto(addr124);
                              }
                              addr18:
                              return;
                           }
                           while(true)
                           {
                              §§push(§§pop() << §§pop());
                              break loop9;
                              §§goto(addr43);
                           }
                           addr132:
                        }
                        while(true)
                        {
                           §§goto(addr134);
                        }
                        addr133:
                     }
                     §§goto(addr108);
                  }
                  addr184:
               }
               while(true)
               {
                  §§push(this.§>t§);
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§goto(addr132);
                     §§push(LISTENER_EVENT_MOUSE_UP);
                  }
                  §§goto(addr133);
                  §§goto(addr184);
               }
            }
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§4! §.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7J§);
            while(true)
            {
               this.§4! §.removeEventListener(MouseEvent.MOUSE_UP,this.§>a§);
            }
            addr89:
         }
         loop1:
         do
         {
            this.§4! §.removeEventListener(MouseEvent.ROLL_OVER,this.§ V§);
            while(_loc2_)
            {
               this.§4! §.removeEventListener(MouseEvent.ROLL_OUT,this.§[;§);
               if(_loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr89);
         }
         while(_loc1_);
         
      }
      
      public function §7J§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§6R§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc2_);
         
      }
      
      public function §>a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§6R§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(!_loc2_);
            
         }
      }
      
      public function § V§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.listenerEventOccured(§^! §,this.§6R§[§^! §]);
         }
      }
      
      public function §[;§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§&U§,this.§6R§[§&U§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§4! § = null;
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§6R§ = null;
            if(_loc1_ || _loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§4! §;
      }
   }
}
